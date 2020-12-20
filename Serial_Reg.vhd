library ieee;
use ieee.std_logic_1164.all;
 
entity Serial_Reg is

 port (Data_IN : in std_logic_vector(7 downto 0); 
       Data_OUT : out std_logic_vector(7 downto 0); 
       Clock_ENABLE : in std_logic; 
       CLK,RESET : in std_logic); 
 
end Serial_Reg;

Architecture behav of Serial_Reg is
BEGIN
process (CLK,RESET)
BEGIN

    if RESET = '1' then
       Data_OUT <= "00000000";
    elsif Clock_ENABLE = '0' then
             null;
     elsif 
         rising_edge(CLK) AND Clock_ENABLE = '1' then
              Data_OUT <= Data_IN;
      
end if;
end process;
end behav;


