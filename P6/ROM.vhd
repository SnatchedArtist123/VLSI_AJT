
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity ROM is
		generic(
			addr_width : integer := 16;
			addr_bits : integer := 4;
			data_width : integer := 7);
			
		Port( 
				clk : in STD_LOGIC;
				data : out  STD_LOGIC_VECTOR (data_width - 1 downto  0));
end ROM;

architecture Behavioral of ROM is
	signal cont: integer := 0;
	type rom_type is array(0 to addr_width -1) of std_logic_vector(data_width - 1 downto 0);
	signal sieteseg : rom_type := (
					"1000000", --0
					"1111001", --1
					"0100100", --2
					"0110000", --3
					"0010001", --4
					"0010010", --5
					"0000010", --6
					"0111000", --7
					"0000000", --8
					"0011000", --9
					"0001000", --A
					"0000011", --b
					"1000110", --C
					"0100001", --d
					"0000110", --E
					"0001110" --F
					);
begin

process(clk)
begin
	if(rising_edge(clk)) then 
		if(cont=15) then
			cont<=0;
		else
			cont<=cont+1;
		end if;
	end if;
	data <= sieteseg(cont); --Esto lo que hace es cambiar de un std_logic_vector a std_logic, primero unsigned y luego entero
end process;
end Behavioral;

