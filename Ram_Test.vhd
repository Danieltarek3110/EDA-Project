library ieee;
use ieee.std_logic_1164.all;

ENTITY Ram_Test IS
END ENTITY Ram_Test;

architecture test of Ram_Test is
component Module1 is
port (       d_in: in std_logic_vector(7 downto 0);
	     d_out: out std_logic_vector(7 downto 0);
	     WEA: in std_logic;
	     REA: in std_logic;
	     ADDRA: in std_logic_vector(2 downto 0);
 	     ADDRB: in std_logic_vector(2 downto 0);
	     CLKA: in std_logic;
	     CLKB: in std_logic);
end component Module1 ;

SIGNAL T_d_in:   std_logic_vector(7 downto 0) := "00000000" ;
SIGNAL T_d_out:  std_logic_vector(7 downto 0) := "00000000";
SIGNAL T_WEA:    std_logic:='0';
SIGNAL T_REA:    std_logic:='0';
SIGNAL T_ADDRA:  std_logic_vector(2 downto 0):="111";
SIGNAL T_ADDRB:  std_logic_vector(2 downto 0):="000";
SIGNAL T_CLKA:   std_logic:='0';
SIGNAL T_CLKB:   std_logic:='0';
constant delay_time: time := 20 ns;

BEGIN
 dut: Module1 PORT MAP(T_d_in,T_d_out,T_WEA,T_REA,T_ADDRA,T_ADDRB,T_CLKA,T_CLKB);

clock: PROCESS IS
BEGIN
T_CLKA <= '0', '1' AFTER 10 ns;
T_CLKB <= '0', '1' AFTER 10 ns;
WAIT FOR 20 ns;

END PROCESS clock;

p1:process is 
BEGIN

T_WEA <= '1' ;
T_REA <= '1' ;
T_d_in <= "00000001" ;

wait for delay_time;

T_WEA <= '1' ;
T_REA <= '1' ;
T_d_in <= "00000011" ;

wait for delay_time;

T_WEA <= '1' ;
T_REA <= '1' ;
T_d_in <= "00000111" ;

wait for delay_time;

T_WEA <= '1' ;
T_REA <= '1' ;
T_d_in <= "00001111" ;

wait for delay_time;


T_WEA <= '1' ;
T_REA <= '1' ;
T_d_in <= "00011111" ;

wait for delay_time;
T_WEA <= '1' ;
T_REA <= '1' ;
T_d_in <= "00111111" ;

wait for delay_time;
T_WEA <= '1' ;
T_REA <= '1' ;
T_d_in <= "01111111" ;

		
wait for delay_time;
T_WEA <= '0' ;
T_REA <= '0' ;


END PROCESS p1;
End architecture test;
