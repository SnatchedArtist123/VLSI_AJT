library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Ejemplo is
    Port ( RST : in  STD_LOGIC;
           DIR : in  STD_LOGIC;
           MCLK : in  STD_LOGIC;
           LEDS : out  STD_LOGIC_VECTOR (7 downto 0));
end Ejemplo;

architecture RTL of Ejemplo is
	signal corrimiento: STD_LOGIC_VECTOR (7 downto 0):= x"99";
begin

registro: process(MCLK)
begin
	if(RST='1') then
		corrimiento<=x"99";
	else 
			if(rising_edge(MCLK)) then
			if(DIR='0') then
				corrimiento(7)<=corrimiento(0);
				corrimiento(6)<=corrimiento(7);
				corrimiento(5)<=corrimiento(6);
				corrimiento(4)<=corrimiento(5);
				corrimiento(3)<=corrimiento(4);
				corrimiento(2)<=corrimiento(3);
				corrimiento(1)<=corrimiento(2);
				corrimiento(0)<=corrimiento(1);
			else 
				corrimiento(1)<=corrimiento(0);
				corrimiento(2)<=corrimiento(1);
				corrimiento(3)<=corrimiento(2);
				corrimiento(4)<=corrimiento(3);
				corrimiento(5)<=corrimiento(4);
				corrimiento(6)<=corrimiento(5);
				corrimiento(7)<=corrimiento(6);
				corrimiento(0)<=corrimiento(7);
			end if;
		end if;
	end if;
	LEDS<=corrimiento;
end process;

end RTL;