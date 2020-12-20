library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FIFO_controller is
port( reset:  IN  std_logic;
      rdclk:  IN  std_logic;
      wrclk:  IN  std_logic;
      rreq:   IN  std_logic;
      wreq:   IN  std_logic;
      write_valid:  OUT std_logic;
      read_valid:   OUT std_logic;
      wr_ptr:       OUT STD_LOGIC_VECTOR (3 downto 0);
      rd_ptr:       OUT STD_LOGIC_VECTOR (3 downto 0);
      empty:        OUT std_logic;
      full:         OUT std_logic);
end FIFO_controller;    

Architecture behav of FIFO_controller is

Begin
     
