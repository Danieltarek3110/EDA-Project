LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
library work;


ENTITY FIFO IS
PORT(   reset, rclk,wclk,rreq,wreq: IN std_logic;
	datain:                     IN std_logic_vector(7 downto 0);
	dataout:                    OUT std_logic_vector(7 downto 0);
	empty,full:                 OUT std_logic);
END ENTITY FIFO;

ARCHITECTURE behavioral OF FIFO IS
component controller5
  PORT( reset, rdclk,wrclk,r_req,w_req:    IN std_logic;
	write_valid,read_valid,empty,full: OUT std_logic;
	 wr_ptr,rd_ptr :                   OUT std_logic_vector(2 downto 0)  );
end component;

component ram
port(d_in:  in std_logic_vector(7 downto 0);
     d_out: out std_logic_vector(7 downto 0);
     WEA:   in std_logic;
     REA:   in std_logic;
     ADDRA: in std_logic_vector(2 downto 0);
     ADDRB: in std_logic_vector(2 downto 0);
     CLKA:  in std_logic;
     CLKB:  in std_logic);
end component;

FOR ram1: ram USE ENTITY WORK.rams (ARCH_M_ROU_03);
FOR controller1: controller5 USE ENTITY WORK.FIFO_controller (fifo);

signal WEA,REA:  std_logic;
signal ADDRA,ADDRB:  std_logic_vector(2 downto 0);

BEGIN


controller1: controller5 port map 
      ( reset => reset,rdclk=>rclk ,wrclk=>wclk,r_req=>rreq,w_req=>wreq,write_valid=>WEA,read_valid=>REA,wr_ptr=>ADDRA,rd_ptr=>ADDRB,empty=>empty,full=>full);

ram1: ram port map 
     (d_in=> datain,ADDRA=>ADDRA,ADDRB=>ADDRB,REA=>REA,WEA=>WEA,CLKB=>rclk ,CLKA=>wclk,d_out=>dataout);

END ARCHITECTURE behavioral;
