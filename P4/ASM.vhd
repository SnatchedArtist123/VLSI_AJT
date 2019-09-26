library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ASM is
    Port ( Sd : in  STD_LOGIC;
           Si : in  STD_LOGIC;
			  deep : in STD_LOGIC_VECTOR(3 downto 0);
			  Movimientos: out STD_LOGIC_VECTOR(3 downto 0) := "0000";
           Display : out STD_LOGIC_VECTOR(6 downto 0);
			  Reset : in  STD_LOGIC;
           mclk : in  STD_LOGIC);
end ASM;

architecture Behavioral of ASM is
	type estados is (E0,E1,E2,E3,E4,E5,E6,E7,E8,E9,E10,E11);
	signal delay: integer range 0 to 24999999;
	signal div: std_LOGIC := '0';
	signal edo_pres: estados := E0;
	signal edo_sig: estados;
	-- Falta una señal para el display
begin

divisor: Process(mclk) 
BEGIN
	if(rising_edge(mclk)) THEN
		if(delay=24999999) then
			delay <= 0;
			div <= not(div);
		else
			delay <= delay + 1;
		end if;
	end if;
end process;

PROCESS(div)
begin
	if (rising_edge(div)) then
		edo_pres<=edo_sig;
	end if;
end process;
--Falta asignar en qué estado estamos
UAV: process(div)
begin
	if(rising_edge(div)) then
		if(Reset='1') then
			edo_sig<=E0;
		else
			case deep is
				when "0000" => edo_sig <= E0;
				when "0001" => edo_sig <= E1;
				when "0010" => edo_sig <= E2;
				when "0011" => edo_sig <= E3;
				when "0100" => edo_sig <= E4;
				when "0101" => edo_sig <= E5;
				when "0110" => edo_sig <= E6;
				when "0111" => edo_sig <= E7;
				when "1000" => edo_sig <= E8;
				when "1001" => edo_sig <= E9;
				when "1010" => edo_sig <= E10;
				when "1011" => edo_sig <= E11;
				when others => case edo_pres is
				when E0 =>
					Movimientos<= "0000";
					Display<="0111111";
					if(Sd='1') then
						if (Si='0') then
							edo_sig<=E1;
						else
							edo_sig<=E5;
						end if;
					else
						if (Si='0') then
							Movimientos<= "0100";
							edo_sig<=E0;
						else
							edo_sig<=E3;
						end if;
					end if;
				when E1 =>
					Movimientos<= "1000";
					Display<="0000110";
					edo_sig<=E2;
				when E2 =>
					Movimientos<= "0010";
					Display<="1011011";
					edo_sig<=E0;
				when E3 =>
					Movimientos<= "1000";
					Display<="1001111";
					edo_sig<=E4;
				when E4 =>
					Movimientos<= "0001";
					Display<="1100110";
					edo_sig<=E0;
				when E5 =>
					Movimientos<= "1000";
					Display<="1101101";
					edo_sig<=E6;
				when E6 =>
					Movimientos<= "0010";
					Display<="1111101";
					edo_sig<=E7;
				when E7 =>
					Movimientos<= "0010";
					Display<="1000111";
					edo_sig<=E8;
				when E8 =>
					Movimientos<= "0100";
					Display<="1111111";
					edo_sig<=E9;
				when E9 =>
					Movimientos<= "0100";
					Display<="1100111";
					edo_sig<=E10;
				when E10 =>
					Movimientos<= "0001";
					Display<="1110111";
					edo_sig<=E11;
				when E11 =>
					Movimientos<= "0001";
					Display<="1111100";
					edo_sig<=E0;
			end case;
		end case;
		end if;
	end if;
end process; 
end Behavioral;