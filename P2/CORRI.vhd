----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:57:01 08/29/2019 
-- Design Name: 
-- Module Name:    CORRI - Behavioral 
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
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CORRI is
    Port ( RST : in  STD_LOGIC;
           DIR : in  STD_LOGIC;
           MCLK : in  STD_LOGIC;
           LEDS : out  STD_LOGIC_VECTOR (7 downto 0));
end CORRI;

architecture Behavioral of CORRI is
	signal delay: integer range 0 to 63999999;
	signal div: std_LOGIC := '0';
	signal corrimiento: STD_LOGIC_VECTOR (7 downto 0):= x"99";
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

registro: process(div)
begin
	if(RST='1') then
		corrimiento<=x"99";
	else 
			if(rising_edge(div)) then
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

end Behavioral;

