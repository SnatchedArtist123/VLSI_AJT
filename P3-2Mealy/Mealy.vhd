----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:32:18 09/16/2019 
-- Design Name: 
-- Module Name:    Mealy - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

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

PROCESS(div)
begin
	if rising_edge(div) then
		est_pres<=est_sig;
	end if;
end process;

estados: process(div)
begin
	if (rising_edge (div)) then
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

