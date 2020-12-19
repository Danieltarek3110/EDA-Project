library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity demultiplexer_case is
     port(
         din : in STD_LOGIC;
         sel : in STD_LOGIC_VECTOR(1 downto 0);
         dout : out STD_LOGIC_VECTOR(3 downto 0)
         );
end demultiplexer_case;


architecture demultiplexer_case_arc of demultiplexer_case is
begin

    demux : process (din,sel) is
    begin
        case sel is
            when "00" => dout <= din & "000";
            when "01" => dout <= '0' & din & "00";
            when "10" => dout <= "00" & din & '0';
            when others => dout <= "000" & din;
        end case;
    end process demux;

end demultiplexer_case_arc;
