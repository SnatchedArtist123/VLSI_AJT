library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;



entity Simulacion is
    Port ( clk : in STD_LOGIC;
           DISP : out  STD_LOGIC_VECTOR (6 downto 0));
end Simulacion;

architecture x of Simulacion is
	signal datau : std_logic_vector(6 downto 0);
begin
	sieteseg_ROM : entity work.ROM
	port map(
		clk => clk,
		data => datau); --se asocia SW con addr de el otro programa, y data con el data del otro código
	DISP <= datau;

end x;
