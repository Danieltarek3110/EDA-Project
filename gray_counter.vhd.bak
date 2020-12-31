library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity gray_counter is
port(clk: in std_logic;
     rst: in std_logic;
     en:  in std_logic;
     gray_code: out std_logic_vector (3 downto 0));

end gray_counter;

architecture behav of gray_counter is
signal count : std_logic_vector(3 downto 0) := "0000";

begin
 process(clk)
 begin

  if (rst='1') then
   count <= "0000";
  elsif (rising_edge(clk) AND en = '1') then
   count <= count + "0001";
  end if;
 end process;
    gray_code <= count xor ('0' & count(3 downto 1));

end behav;
