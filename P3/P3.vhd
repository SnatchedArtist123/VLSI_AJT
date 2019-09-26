library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity P3 is
    Port ( H : in  STD_LOGIC;
           MCLK : in  STD_LOGIC;
           A : out  STD_LOGIC;
           B : out  STD_LOGIC);
end P3;

architecture Behavioral of P3 is
	type estado is (E0,E1,E2,E3);
	signal qt: estado;
	signal delay: integer range 0 to 63999999;
	signal div: std_LOGIC := '0';
begin

divisor: Process(mclk) 
BEGIN
	if(rising_edge(mclk)) THEN
		if(delay=63999999) then
			delay <= 0;
			div <= not(div);
		else
			delay <= delay + 1;
		end if;
	end if;
end process;

estados: process(div)
begin
	if (rising_edge (div)) then
		case qt is
			when E0 =>
				A<='0';
				B<='0';
				if(H='0') then 
					qt<=E1;
				else
					qt<=E0;
				end if;
			when E1 =>
				A<='1';
				B<='0';
				if(H='0') then 
					qt<=E1;
				else
					qt<=E2;
				end if;
			when E2 =>
				A<='0';
				B<='0';
				if(H='0') then 
					qt<=E3;
				else
					qt<=E2;
				end if;
			when E3 =>
				A<='0';
				B<='1';
				if(H='0') then 
					qt<=E3;
				else
					qt<=E0;
				end if;
		end case;
	end if;
end process;
end Behavioral;

