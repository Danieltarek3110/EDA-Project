LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY gray2binary IS
PORT( gray_in : IN STD_LOGIC_VECTOR(2 downto 0);
      bin_out : OUT STD_LOGIC_VECTOR(2 downto 0));
END ENTITY gray2binary;

ARCHITECTURE C3 OF gray2binary IS
BEGIN
bin_out(2) <= gray_in (2);
bin_out(1) <= gray_in(2) XOR gray_in(1);
bin_out(0) <= gray_in(2) XOR gray_in(1) XOR gray_in(0);
END ARCHITECTURE C3;
