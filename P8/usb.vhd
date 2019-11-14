library IEEE;
use IEEE.STD_LOGIC_1164;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity usb is
	port( Clk  :IN  STD_LOGIC;
		dato : IN STD_LOGIC_VECTOR(7 downto 0);
		baud : in std_logic_vector(2 downto 0);
		inicio : in std_logic;
		bandera : OUT STD_LOGIC;
		TX_wire : OUT STD_LOGIC);
end entity;

architecture behavioral OF usb IS
	signal conta : INTEGER := 0;
	signal valor : INTEGER := 70000;
	signal envia: STD_LOGIC;
	signal byte : STD_LOGIC_VECTOR(7 DOWNTO 0);
	signal PRE : INTEGER RANGE 0 TO 5208 := 0;
	signal INDICE: INTEGER RANGE 0 TO 9 := 0;
	signal BUFF : STD_LOGIC_VECTOR(9 DOWNTO 0);
	signal Flag  : STD_LOGIC := '0';
	signal PRE_val: INTEGER range 0 to 41600;
	signal i: INTEGER range 0 to 4;
	signal pulso: STD_LOGIC:='0';
	signal banderaini : STD_LOGIC;
	signal banderapulso : STD_LOGIC;
	
begin
	TX_divisor : process(Clk)
	begin
		if rising_edge(Clk) then
			if banderaini = '1' and inicio = '0' then
				pulso <= '1';
			end if;
			if banderaini = '0' and inicio ='1' then
				pulso <= '0';
			end if;
		banderaini <= inicio;
		banderapulso <= pulso;
		end if;
		
	end process TX_divisor;
	
	TX_prepara : process(Clk, pulso)
		variable asc_dato : STD_LOGIC_VECTOR (7 downto 0) := (others => '0');
	begin
		asc_dato:=dato;
		if banderapulso = '0' and pulso='1' then
			envia <='1';
			byte <= asc_dato;
		else
			envia<='0';
		end if;
	end process TX_prepara;
	
	TX_envia : process(Clk,envia,byte) 
	begin
		if(Clk'EVENT and Clk = '1') then 
			if(Flag = '0' and envia = '1') then
				Flag<= '1'; 
				BUFF(0) <= '0'; 
				BUFF(9) <= '1'; 
				BUFF(8 DOWNTO 1) <= byte;
			end if;
			if(Flag = '1') then
				if(PRE < PRE_val) then 
					PRE <= PRE + 1;
				else
					PRE<= 0;
				end if;
				if(PRE = PRE_val/2) then
					TX_wire <= BUFF(INDICE);
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
	
bandera <= not(flag);

					
	with (baud) select
		PRE_val <=41600 when "000",  --1200 bauds
					20800 when "001",  --2400 bauds
					10400 when "010",  --4800 bauds
					5200 when "011",  --9600 bauds
					2600 when "100",  --19200 bauds
					1300 when "101",  --38400 bauds
					866 when "110",  --57600 bauds
					432 when others;  --115200 bauds
					
end architecture behavioral;