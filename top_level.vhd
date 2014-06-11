-------------------------------------------------------------------------------
-- Copyright (C) 2009-2012 Chris McClelland
--
-- This program is free software: you can redistribute it and/or modify
-- it under the terms of the GNU Lesser General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU Lesser General Public License for more details.
--
-- You should have received a copy of the GNU Lesser General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.
-------------------------------------------------------------------------------
-- Additional changes/comments by Cristinel Ababei, August 23 2012:	 
--
-- From the host, writes to R0 are simply displayed on the Atlys board's 
-- eight LEDs. Reads from R0 return the state of the board's eight slide 
-- switches. Writes to R1 and R2 are registered and may be read back. 
-- The circuit implemented on the FPGA simply multiplies the R1 with R2 
-- and places the result in R3. Only reads, from host side, are allowed 
-- from from R3; that is an attempt to write into R3 will have no effect.
-- When you input, from host side, data into R1 and R2, data should
-- represent numbers that can be represented on 4 bits only. Because
-- data will have to be input (will be done via the flcli application)
-- in hex, writing for example 07 or A7 into R1 will have the same effect 
-- as writing 07 because the four MSB will be discarded inside the
-- VHDL application on FPGA.
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
entity top_level is
	port(
		-- FX2 interface -----------------------------------------------------------------------------
		fx2Clk_in     : in    std_logic;                    -- 48MHz clock from FX2
		fx2Addr_out   : out   std_logic_vector(1 downto 0); -- select FIFO: "10" for EP6OUT, "11" for EP8IN
		fx2Data_io    : inout std_logic_vector(7 downto 0); -- 8-bit data to/from FX2

		-- When EP6OUT selected:
		fx2Read_out   : out   std_logic;                    -- asserted (active-low) when reading from FX2
		fx2OE_out     : out   std_logic;                    -- asserted (active-low) to tell FX2 to drive bus
		fx2GotData_in : in    std_logic;                    -- asserted (active-high) when FX2 has data for us

		-- When EP8IN selected:
		fx2Write_out  : out   std_logic;                    -- asserted (active-low) when writing to FX2
		fx2GotRoom_in : in    std_logic;                    -- asserted (active-high) when FX2 has room for more data from us
		fx2PktEnd_out : out   std_logic;                    -- asserted (active-low) when a host read needs to be committed early

		-- Onboard peripherals -----------------------------------------------------------------------
		led_out       : out   std_logic_vector(7 downto 0); -- eight LEDs
		slide_sw_in   : in    std_logic_vector(7 downto 0)  -- eight slide switches
	);
end top_level;

architecture behavioural of top_level is
	------Rom-------
	COMPONENT rom
	  PORT (
		 clka : IN STD_LOGIC;
		 addra : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
		 douta : OUT STD_LOGIC_VECTOR(63 DOWNTO 0)
	  );
	END COMPONENT;
	----------------
	----Centroid----
	COMPONENT centrroid
	  PORT (
		 clka : IN STD_LOGIC;
		 wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
		 addra : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		 dina : IN STD_LOGIC_VECTOR(95 DOWNTO 0);
		 douta : OUT STD_LOGIC_VECTOR(95 DOWNTO 0)
	  );
	END COMPONENT;	
	----------------
	----Min-Distance------
	COMPONENT mindis
	  PORT (
		 clka : IN STD_LOGIC;
		 wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
		 addra : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
		 dina : IN STD_LOGIC_VECTOR(34 DOWNTO 0);
		 douta : OUT STD_LOGIC_VECTOR(34 DOWNTO 0)
	  );
	END COMPONENT;
	-----------------------
	
	------addsub-----------
	COMPONENT addsub
	  PORT (
		 a : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 b : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 operation : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 clk : IN STD_LOGIC;
		 result : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	  );
	END COMPONENT;	
	-----------------------
	-----divide------------
	COMPONENT divide
	  PORT (
		 a : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 b : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 clk : IN STD_LOGIC;
		 result : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	  );
	END COMPONENT;
	------------------------
	------comparator--------
	COMPONENT comparator
	  PORT (
		 a : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 b : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 clk : IN STD_LOGIC;
		 result : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
	  );
	END COMPONENT;	
	------------------------
	-- Channel read/write interface -----------------------------------------------------------------
	signal chanAddr  : std_logic_vector(6 downto 0);  -- the selected channel (0-127)

	-- Host >> FPGA pipe:
	signal h2fData   : std_logic_vector(7 downto 0);  -- data lines used when the host writes to a channel
	signal h2fValid  : std_logic;                     -- '1' means "on the next clock rising edge, please accept the data on h2fData"
	signal h2fReady  : std_logic;                     -- channel logic can drive this low to say "I'm not ready for more data yet"

	-- Host << FPGA pipe:
	signal f2hData   : std_logic_vector(7 downto 0);  -- data lines used when the host reads from a channel
	signal f2hValid  : std_logic;                     -- channel logic can drive this low to say "I don't have data ready for you"
	signal f2hReady  : std_logic;                     -- '1' means "on the next clock rising edge, put your next byte of data on f2hData"
	-- ----------------------------------------------------------------------------------------------

	-- Needed so that the comm_fpga_fx2 module can drive both fx2Read_out and fx2OE_out
	signal fx2Read                 : std_logic;

	-- Registers implementing the channels
	signal reg0, reg0_next         : std_logic_vector(7 downto 0)  := x"00";
	signal reg1, reg1_next         : std_logic_vector(7 downto 0)  := x"00";
	signal reg2, reg2_next         : std_logic_vector(7 downto 0)  := x"00";
	signal reg3, reg3_next         : std_logic_vector(7 downto 0)  := x"00";
	----ROM signals-----
	signal addra :STD_LOGIC_VECTOR(6 DOWNTO 0);
	signal douta :STD_LOGIC_VECTOR(63 DOWNTO 0);
	---------Address variable------
	shared variable Nrom:STD_LOGIC_VECTOR(6 DOWNTO 0):="1100100";
	shared variable Nram:STD_LOGIC_VECTOR(2 DOWNTO 0):="000";
	---Centroid-Ram-Signals-----------
	signal web :STD_LOGIC_VECTOR(0 DOWNTO 0);
	signal addrb :STD_LOGIC_VECTOR(2 DOWNTO 0);
	signal dinb :STD_LOGIC_VECTOR(95 DOWNTO 0);
	signal doutb :STD_LOGIC_VECTOR(95 DOWNTO 0);
	----Min-Distance-Signals----------------
	signal wec :STD_LOGIC_VECTOR(0 DOWNTO 0);
	signal addrc :STD_LOGIC_VECTOR(6 DOWNTO 0);
	signal dinc :STD_LOGIC_VECTOR(34 DOWNTO 0);
	signal doutc :STD_LOGIC_VECTOR(34 DOWNTO 0);
	------Variables for Clustering Algo----------
	shared variable no_of_iterations :integer := 0;
	shared variable i : integer;
	shared variable j : integer;
	shared variable k : integer;
	shared variable minD  : STD_LOGIC_VECTOR(31 DOWNTO 0):="01000110000111000011111110011010";
	shared variable x : integer;
	shared variable D :STD_LOGIC_VECTOR(31 DOWNTO 0):="00000000000000000000000000000000"; 
	shared variable x1:STD_LOGIC_VECTOR(31 DOWNTO 0);
	shared variable y1:STD_LOGIC_VECTOR(31 DOWNTO 0);
	shared variable z1:STD_LOGIC_VECTOR(31 DOWNTO 0);
	shared variable k1:STD_LOGIC_VECTOR(31 DOWNTO 0);
	shared variable l1:STD_LOGIC_VECTOR(63 DOWNTO 0);
	shared variable m1:STD_LOGIC_VECTOR(31 DOWNTO 0);
	shared variable j1:STD_LOGIC_VECTOR(31 DOWNTO 0);	
	shared variable flag1:STD_LOGIC:='1';
	shared variable flag2:STD_LOGIC:='1';
	--------------------------------------------
	------addsubsignals--------------
	signal a_add :STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal b_add :STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal operation_add :STD_LOGIC_VECTOR(5 DOWNTO 0);
	signal result_add :STD_LOGIC_VECTOR(31 DOWNTO 0);
	---------------------------------
	-----divide----------------------
	signal a_div :STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal b_div :STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal result_div :STD_LOGIC_VECTOR(31 DOWNTO 0);	
	----comparator--------------------
	signal a_comp :STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal b_comp :STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal result_comp :STD_LOGIC_VECTOR(0 DOWNTO 0);
begin													-- BEGIN_SNIPPET(registers)
	-- Infer registers
	process(fx2Clk_in)
	begin
		if ( rising_edge(fx2Clk_in) ) then
			--checksum <= checksum_next;
			reg0 <= reg0_next;
			reg1 <= reg1_next;
			reg2 <= reg2_next;
			reg3 <= reg3_next;
		end if;
		-----data from rom transfer to centroid-ram--- 
		if(flag1='1') then
			flag1:='0';
			for i in 0 to 4 loop 
				addra<=Nrom;
				web <="1";
				addrb<=Nram;
				dinb<="00000000000000000000000000000000"&douta;
				Nrom := Nrom + "0000001";
				Nram := Nram + "001";
			end loop;
		end if;	
		----------------------------------------------
		
		----K-Mean Clustering-------------------------
		if(flag2='1') then
			flag2:='0';
			while no_of_iterations <=1 loop
					no_of_iterations:=no_of_iterations+1;
				for i in 0 to 99 loop         --for every point
					addra<=conv_std_logic_vector(i,7);
					for j in 0 to 4 loop       --for every cluster
						addrb<=conv_std_logic_vector(j,3);
						web<="0";
						for x in 0 to 1 loop --for every dimension
							if(x=0) then
								a_add<=douta(63 downto 32);
								b_add<=doutb(63 downto 32);
								operation_add<="000001";
								j1:=result_add;
								if(j1(31 downto 31)="1")then
									j1:="0"&j1(30 downto 0);
								end if;
								a_add<=D;
								b_add<=j1;
								operation_add<="000000";
								D:=result_add;
							elsif(x=1) then
								a_add<=douta(31 downto 0);
								b_add<=doutb(31 downto 0);
								operation_add<="000001";
								j1:=result_add;
								if(j1(31 downto 31)="1")then
									j1:="0"&j1(30 downto 0);
								end if;
								a_add<=D;
								b_add<=j1;
								operation_add<="000000";
								D:=result_add;
							end if; 
						end loop;
						a_comp<=D;
						b_comp<=minD;
						if(result_comp="1") then
							minD := D;
							addrc<=conv_std_logic_vector(i,7);						
							wec<="1";
							dinc<=addrb&minD;
						end if ;
					end loop; --j
				end loop;    --i
								
				for i in 0 to 99 loop
					addra<=conv_std_logic_vector(i,7);
					addrc<=conv_std_logic_vector(i,7);
					addrb <= doutc(34 downto 32);
					web<="0";
					x1:=doutb(63 downto 32);
					y1:=doutb(31 downto 0);
					z1:=doutb(95 downto 64);
					for k in 0 to 1 loop
						if(k=0) then
							a_add<=x1;
							b_add<=douta(63 downto 32);
							operation_add<="000000";
							addrb <= doutc(34 downto 32);
							web<="1";
							dinb<=z1&result_add&y1;
							k1:= dinb(63 downto 32);
						elsif(k=1) then
							a_add<=y1;
							b_add<=douta(31 downto 0);
							operation_add<="000000";
							addrb <= doutc(34 downto 32);
							web<="1";
							dinb<=z1&k1&result_add;
						end if;
					end loop;
					addrb <= doutc(34 downto 32);
					web<="0";
					l1:=doutb(63 downto 0);
					m1:=doutb(95 downto 64);
					a_add<=m1;
					b_add<="00111111100000000000000000000000";
					operation_add<="000000";
					addrb <= doutc(34 downto 32);
					web<="1";
					dinb <= result_add&l1;
				end loop;
										
				for j in 0 to 4 loop
					web<="0";
					addrb<= conv_std_logic_vector(j,3);
					x1:=doutb(63 downto 32);
					y1:=doutb(31 downto 0);
					z1:=doutb(95 downto 64);				
					for k in 0 to 1 loop
						if(k=0) then
							a_div<=x1;
							b_div<=z1;
							web<="1";
							addrb<= conv_std_logic_vector(j,3);
							dinb<=z1&result_div&y1;
							k1:= dinb(63 downto 32);						
						elsif(k=1) then
							a_div<=y1;
							b_div<=z1;
							addrb <= conv_std_logic_vector(j,3);
							web<="1";
							dinb<=z1&k1&result_div;					
						end if;
					end loop;
				end loop;	
			end loop;--while	
		end if;		
		----------------------------------------------
	end process;

	-- Drive register inputs for each channel when the host is writing
	reg0_next <= h2fData when chanAddr = "0000000" and h2fValid = '1' else reg0;
	reg1_next <= h2fData when chanAddr = "0000001" and h2fValid = '1' else reg1;
	reg2_next <= h2fData when chanAddr = "0000010" and h2fValid = '1' else reg2;
-- reg3_next <= std_logic_vector(unsigned(reg1(3 downto 0)) * unsigned(reg2(3 downto 0)));
		
	-- Select values to return for each channel when the host is reading
	with chanAddr select f2hData <=
		slide_sw_in 	when "0000000", -- return status of slide switches when reading R0
		reg1 				when "0000001",
		reg2 				when "0000010",
		reg3 				when "0000011",
		x"00" 			when others;

	-- Assert that there's always data for reading, and always room for writing
	f2hValid <= '1';
	h2fReady <= '1';								--END_SNIPPET(registers)

	-- CommFPGA module
	fx2Read_out <= fx2Read;
	fx2OE_out <= fx2Read;
	fx2Addr_out(1) <= '1';  -- Use EP6OUT/EP8IN, not EP2OUT/EP4IN.
	comm_fpga_fx2 : entity work.comm_fpga_fx2
		port map(
			-- FX2 interface
			fx2Clk_in      => fx2Clk_in,
			fx2FifoSel_out => fx2Addr_out(0),
			fx2Data_io     => fx2Data_io,
			fx2Read_out    => fx2Read,
			fx2GotData_in  => fx2GotData_in,
			fx2Write_out   => fx2Write_out,
			fx2GotRoom_in  => fx2GotRoom_in,
			fx2PktEnd_out  => fx2PktEnd_out,

			-- Channel read/write interface
			chanAddr_out   => chanAddr,
			h2fData_out    => h2fData,
			h2fValid_out   => h2fValid,
			h2fReady_in    => h2fReady,
			f2hData_in     => f2hData,
			f2hValid_in    => f2hValid,
			f2hReady_out   => f2hReady
		);
	---portmap of rom-----
	ROMe : rom
	  PORT MAP (
		 clka => '1',
		 addra => addra,
		 douta => douta
	  );
	----------------------
	
	---portmap of centroid---
	centroidistance : centrroid
	  PORT MAP (
		 clka => '1',
		 wea => web,
		 addra => addrb,
		 dina => dinb,
		 douta => doutb
	  );
	-------------------------
	---Min-Distance-portmap--
	mindistance : mindis
	  PORT MAP (
		 clka => '1',
		 wea => wec,
		 addra => addrc,
		 dina => dinc,
		 douta => doutc
	  );
	-----add-sub----------
	addersubb : addsub
	  PORT MAP (
		 a => a_add,
		 b => b_add,
		 operation => operation_add,
		 clk => '1',
		 result => result_add
	  );
   ------------------------	
	------div--------------
	div : divide
	  PORT MAP (
		 a => a_div,
		 b => b_div,
		 clk => '1',
		 result => result_div
	  );
	-----------------------
	-----comparator-------
	comp : comparator
	  PORT MAP (
		 a => a_comp,
		 b => b_comp,
		 clk =>'1',
		 result => result_comp
	  );	
	----------------------
	-- LEDs
	led_out <= reg0;
end behavioural;
