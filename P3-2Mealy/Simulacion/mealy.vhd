library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mealy is
    Port ( H : in  STD_LOGIC;
           MCLK : in  STD_LOGIC;
           A : out  STD_LOGIC;
           B : out  STD_LOGIC);
end Mealy;

architecture Behavioral of Mealy is
	type estado is (E0,E1,E2,E3);
	signal est_pres: estado :=E0;
	signal est_sig: estado;
begin

PROCESS(MCLK)
begin
	if rising_edge(MCLK) then
		est_pres<=est_sig;
	end if;
end process;

estados: process(MCLK)
begin
	if (rising_edge (MCLK)) then
		case est_pres is
			when E0 =>
				if(H='0') then 
					A<='0';
					B<='0';
					est_sig<=E0;
				else
					A<='1';
					B<='0';
					est_sig<=E1;
				end if;
			when E1 =>
				if(H='1') then 
					A<='1';
					B<='0';
					est_sig<=E1;
				else
					A<='0';
					B<='0';
					est_sig<=E2;
				end if;
			when E2 =>
				if(H='1') then 
					A<='0';
					B<='1';
					est_sig<=E3;
				else
					A<='0';
					B<='0';
					est_sig<=E2;
				end if;
			when E3 =>
				if(H='1') then 
					A<='0';
					B<='1';
					est_sig<=E3;
				else
					A<='0';
					B<='0';
					est_sig<=E0;
				end if;
		end case;
	end if;
end process;
end Behavioral;