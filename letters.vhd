library ieee;
use ieee.std_logic_1164.all;

entity letters is
    port (
        sel     : in  std_logic_vector(2 downto 0);
        display : out std_logic_vector(7 downto 0)
    );
end entity letters;

architecture bhv of letters is
begin
    process(sel)
    begin
        case sel is
            when "000" => display <= "11101110"; -- A
            when "001" => display <= "00111110"; -- b
            when "010" => display <= "10011100"; -- C
            when "011" => display <= "01111010"; -- d
            when "100" => display <= "10001110"; -- F
            when "101" => display <= "11110110"; -- G
            when others => display <= "00000000";
        end case;
    end process;
end architecture bhv;
