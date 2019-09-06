----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:08:44 08/22/2019 
-- Design Name: 
-- Module Name:    LED2 - Behavioral 
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

entity LED2 is
    Port ( RELOJ : in  STD_LOGIC;
           RESET : in  STD_LOGIC;
           IP : in  STD_LOGIC;
           LED : out  STD_LOGIC_VECTOR (7 downto 0));
end LED2;

architecture Behavioral of LED2 is

begin


end Behavioral;

