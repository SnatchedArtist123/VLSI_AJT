library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity TX is
port( Clk : IN STD_LOGIC;
		SW : IN STD_LOGIC_VECTOR(3 downto 0);
		LED : OUT STD_LOGIC;
		TX_WIRE : OUT STD_LOGIC);
end entity;

architecture behavioral OF TX IS
	signal conta : INTEGER := 0;
	signal valor : INTEGER := 70000;
	signal INICIO: STD_LOGIC;
	signal dato : STD_LOGIC_VECTOR(7 DOWNTO 0);
	signal PRE : INTEGER RANGE 0 TO 5208 := 0;
	signal INDICE: INTEGER RANGE 0 TO 9 := 0;
	signal BUFF : STD_LOGIC_VECTOR(9 DOWNTO 0);
	signal Flag : STD_LOGIC := '0';
	signal PRE_val: INTEGER range 0 to 41600;
	signal baud : STD_LOGIC_VECTOR(2 DOWNTO 0);
	signal i : INTEGER range 0 to 4;
	signal pulso : STD_LOGIC:='0';
	signal contador: integer range 0 to 49999999 := 0;
	signal dato_bin: STD_LOGIC_VECTOR(3 DOWNTO 0);
	signal hex_val: STD_LOGIC_VECTOR(7 DOWNTO 0):= (others => '0');

begin
TX_divisor : process(Clk)

	begin
		if rising_edge(Clk) then
			contador<=contador+1;
			if (contador < 140000) then
				pulso <= '1';
			else
				pulso <= '0';
			end if;
		end if;
end process TX_divisor;

TX_prepara : process(Clk, pulso)
	type arreglo is array (0 to 1) of STD_LOGIC_VECTOR(7 downto 0);
	variable asc_dato : arreglo := (X"30",X"0A");
	begin
		asc_dato(0):=hex_val;
		if (pulso='1') then
			if rising_edge(Clk) then
				if (conta=valor) then
					conta <= 0;
					INICIO <= '1';
					Dato <= asc_dato(i);
					if (i = 1) then
						i <= 0;
					else
						i <= i + 1;
					end if;
				else
					conta <= conta+1;
					INICIO <= '0';
				end if;
			end if;
		end if;
end process TX_prepara;

TX_envia : process(Clk,INICIO,dato)

begin
	if(Clk'EVENT and Clk = '1') then
		if(Flag = '0' and INICIO = '1') then
			Flag<= '1';
			BUFF(0) <= '0';
			BUFF(9) <= '1';
			BUFF(8 DOWNTO 1) <= dato;
		end if;
		if(Flag = '1') then
			if(PRE < PRE_val) then
				PRE <= PRE + 1;
			else
				PRE <= 0;
			end if;
			if(PRE = PRE_val/2) then
				TX_WIRE <= BUFF(INDICE);
					if(INDICE < 9) then
						INDICE <= INDICE + 1;
					else
						Flag <= '0';
						INDICE <= 0;
					end if;
			end if;
		end if;
	end if;
end process TX_envia;

LED <= pulso;
dato_bin<=SW;
baud<="011";

with(dato_bin) select
	hex_val <= X"30" when "0000",
				  X"31" when "0001",
				  X"32" when "0010",
				  X"33" when "0011",
				  X"34" when "0100",
				  X"35" when "0101",
				  X"36" when "0110",
				  X"37" when "0111",
				  X"38" when "1000",
				  X"39" when "1001",
				  X"41" when "1010",
				  X"42" when "1011",
			     X"43" when "1100",
				  X"44" when "1101",
				  X"45" when "1110",
				  X"46" when "1111",
				  X"23" when others;

with (baud) select
		PRE_val <= 41600 when "000", -- 1200 bauds
					  20800 when "001", -- 2400 bauds
					  10400 when "010", -- 4800 bauds
					  5200 when "011", -- 9600 bauds
					  2600 when "100", -- 19200 bauds
					  1300 when "101", -- 38400 bauds
					  866 when "110", -- 57600 bauds
					  432 when others; --115200 bauds
end architecture behavioral;
