library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Maquinaestados is
    Port ( H : in  STD_LOGIC;
           MCLK : in  STD_LOGIC;
           A : out  STD_LOGIC;
           B : out  STD_LOGIC);
end Maquinaestados;

architecture RTL of MaquinaEstados is
	type estado is (E0,E1,E2,E3);
	signal qt: estado;
begin

estados: process(MCLK)
begin
	if (rising_edge (MCLK)) then
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
end RTL;