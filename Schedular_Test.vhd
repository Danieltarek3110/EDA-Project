library ieee;
use ieee.std_logic_1164.all;

ENTITY Schedular_Test IS
END ENTITY Schedular_Test;

architecture test of Schedular_Test is
component Module1 is
port (
             clock: in  std_logic;
	     din1:  in  std_logic_vector(7 downto 0);
	     din2:  in  std_logic_vector(7 downto 0);
	     din3:  in  std_logic_vector(7 downto 0);
	     din4:  in  std_logic_vector(7 downto 0);
	     dout:  out std_logic_vector(7 downto 0)
      );
end component Module1 ;

SIGNAL T_clock:   std_logic;
SIGNAL T_din1:    std_logic_vector(7 downto 0);
SIGNAL T_din2:    std_logic_vector(7 downto 0);
SIGNAL T_din3:    std_logic_vector(7 downto 0);
SIGNAL T_din4:    std_logic_vector(7 downto 0);
SIGNAL T_dout:    std_logic_vector(7 downto 0);
constant delay_time: time := 20 ns;

BEGIN
 dut: Module1 PORT MAP(T_clock,T_din1,T_din2,T_din3,T_din4,T_dout);

clock: PROCESS IS
BEGIN
   T_clock <= '0', '1' AFTER 10 ns;
   WAIT FOR 20 ns;
END PROCESS clock;

p1:process is 
BEGIN

T_din1 <= "11111111";
T_din2 <= "00000010";
T_din3 <= "00000011";
T_din4 <= "00000100";

wait for delay_time;

T_din1 <= "11111111";
T_din2 <= "00000010";
T_din3 <= "00000011";
T_din4 <= "00000100";

wait for delay_time;

T_din1 <= "11111111";
T_din2 <= "00000010";
T_din3 <= "00000011";
T_din4 <= "00000100";

wait for delay_time;

T_din1 <= "11111111";
T_din2 <= "00000010";
T_din3 <= "00000011";
T_din4 <= "00000100";

wait for delay_time;

T_din1 <= "11111111";
T_din2 <= "00000010";
T_din3 <= "00000011";
T_din4 <= "00000100";

wait for delay_time;
T_din1 <= "11111111";
T_din2 <= "00000010";
T_din3 <= "00000011";
T_din4 <= "00000100";
wait for delay_time;
T_din1 <= "11111111";
T_din2 <= "00000010";
T_din3 <= "00000011";
T_din4 <= "00000100";
		
wait for delay_time;
T_din1 <= "11111111";
T_din2 <= "00000010";
T_din3 <= "00000011";
T_din4 <= "00000100";

END PROCESS p1;
End architecture test;