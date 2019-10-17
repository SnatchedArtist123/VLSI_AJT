library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity servo is
	Port( clk : IN STD_LOGIC;
			selec : IN STD_LOGIC_VECTOR(3 downto 0);
			servo : OUT STD_LOGIC
			);
end servo;

architecture Behavorial of servo is
--Constantes de cuenta
constant a1: integer := 25000; 
constant a2: integer := 34000; 
constant a3: integer := 47000; 
constant a4: integer := 50000; 
constant a5: integer := 63000; --
constant a6: integer := 66000; 
constant a7: integer := 69000; 
constant a8: integer := 75000;-- 
constant a9: integer := 78000; 
constant a10: integer := 81000; 
constant a11: integer := 85000; 
constant a12: integer := 88000; 
constant a13: integer := 91000; -- 
constant a14: integer := 94000; 
constant a15: integer := 97000; 
constant a16: integer := 100000;  


Signal PWM_Count: std_logic_vector (19 downto 0 ):="00000000000000000000";--1,000,000, señal que lleva la cuenta
begin


generacion_PWM: process( clk,PWM_Count ) --Generación del contador
          begin
			    if rising_edge(clk)then 
					PWM_Count <= PWM_Count + 1;
             end if;
				 if PWM_Count = x"F4240" then
					PWM_Count <= "00000000000000000000";
				 end if;
				 
end process generacion_PWM;

salidas : process(PWM_Count,selec) is --Process para la modulación del ancho de pulso
	begin
	case selec is
		when "0000" => 
			 if PWM_Count <= a1 then 
					servo <= '1';
          else                                        
					servo <= '0';
          end if;  

		when "0001" => 
			 if PWM_Count <= a2 then 
					servo <= '1';
          else                                        
					servo <= '0';
          end if;  
												
		when "0010" => 
			 if PWM_Count <= a3 then 
					servo <= '1';
          else                                        
					servo <= '0';
          end if;  
			 
		when "0011" => 
			 if PWM_Count <= a4 then 
					servo <= '1';
          else                                        
					servo <= '0';
          end if;  
			 
		when "0100" => 
			 if PWM_Count <= a5 then 
					servo <= '1';
          else                                        
					servo <= '0';
          end if;
			 
		when "0101" => 
			 if PWM_Count <= a6 then 
					servo <= '1';
          else                                        
					servo <= '0';
          end if;
			 
		when "0110" => 
			 if PWM_Count <= a7 then 
					servo <= '1';
          else                                        
					servo <= '0';
          end if;
			 
		when "0111" => 
			 if PWM_Count <= a8 then 
					servo <= '1';
          else                                        
					servo <= '0';
          end if;
			 
		when "1000" => 
			 if PWM_Count <= a9 then 
					servo <= '1';
          else                                        
					servo <= '0';
          end if;
			 
		when "1001" => 
			 if PWM_Count <= a10 then 
					servo <= '1';
          else                                        
					servo <= '0';
          end if;
			 
		when "1010" => 
			 if PWM_Count <= a11 then 
					servo <= '1';
          else                                        
					servo <= '0';
          end if;
		
		when "1011" => 
			 if PWM_Count <= a12 then 
					servo <= '1';
          else                                        
					servo <= '0';
          end if;
			 
		when "1100" => 
			 if PWM_Count <= a13 then 
					servo <= '1';
          else                                        
					servo <= '0';
          end if;
			 
		when "1101" => 
			 if PWM_Count <= a14 then 
					servo <= '1';
          else                                        
					servo <= '0';
          end if;
		
		when "1110" => 
			 if PWM_Count <= a15 then 
					servo <= '1';
          else                                        
					servo <= '0';
          end if;
			 
		when "1111" => 
			 if PWM_Count <= a16 then 
					servo <= '1';
          else                                        
					servo <= '0';
          end if;
		when others =>
			servo <='0';
	end case;

end process;
end Behavorial;