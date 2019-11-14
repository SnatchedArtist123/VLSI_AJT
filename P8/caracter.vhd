library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity caracter is
port( Clk : IN STD_LOGIC;
		DATO : IN STD_LOGIC_VECTOR(7 downto 0);
		BANDERA : OUT STD_LOGIC;
		INICIO : in STD_LOGIC;
		LED : OUT STD_LOGIC);
end entity;
architecture behavioral OF caracter IS
signal BAUD : STD_LOGIC_VECTOR(2 downto 0) := "011";

signal conta : INTEGER := 0;
component usb is
port( Clk : IN STD_LOGIC;
		DATO : IN STD_LOGIC_VECTOR(7 downto 0);
		BAUD : IN STD_LOGIC_VECTOR(2 downto 0);
		INICIO : IN STD_LOGIC;
		BANDERA : OUT STD_LOGIC;
		TX_WIRE : OUT STD_LOGIC);
end component;
begin
U1: usb port map (clk, dato, baud, inicio, bandera, led);
end behavioral;