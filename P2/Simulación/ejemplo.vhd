library ieee;
use ieee.std_logic_1164.all;


entity ejemplo is
    Port ( CLK,RST : STD_LOGIC;
           cuenta : BUFFER INTEGER RANGE 0 TO 15);
end ENTITY;

architecture RTL of CORRI is
begin

process(RST,CLK)
begin
	if(RST='1') then
		cuenta<=0;
	elsif(rising_edge(CLK)) then
			if(DIR=15) then
				cuenta<=0;
			else 
				cuenta<=cuenta+1;
			end if;
		end if;
end process;

end RTL;