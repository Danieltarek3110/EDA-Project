library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity FIFO is  
  port (
    reset : in std_logic;
    rclk  : in std_logic;

    -- FIFO Write Interface
    wrreq   : in  std_logic;
    datain : in  std_logic_vector(7 downto 0);
    full    : out std_logic;
 
    -- FIFO Read Interface
    rdreq   : in  std_logic;
    dataout : out std_logic_vector(7 downto 0);
    empty   : out std_logic
    );
end FIFO;

Architecture RTL of FIFO is

  type   t_FIFO_DATA is array of std_logic_vector(7 downto 0);
  signal r_FIFO_DATA : t_FIFO_DATA := others => '0');
 
  signal r_WR_INDEX   : integer range 0 to 7 := 0;
  signal r_RD_INDEX   : integer range 0 to 7 := 0;
 
 
  signal w_FULL  : std_logic;
  signal w_EMPTY : std_logic;

BEGIN

