library ieee;
use ieee.std_logic_1164.all;

entity mux8_1 is
    port (
        d    : in  std_logic_vector(7 downto 0);
        ch   : in  std_logic_vector(2 downto 0);
        data : out std_logic
    );
end entity mux8_1;

architecture bhv of mux8_1 is
begin
    process(d, ch)
    begin
        case ch is
            when "000" => data <= d(0);
            when "001" => data <= d(1);
            when "010" => data <= d(2);
            when "011" => data <= d(3);
            when "100" => data <= d(4);
            when "101" => data <= d(5);
            when "110" => data <= d(6);
            when "111" => data <= d(7);
            when others => data <= '0';
        end case;
    end process;
end architecture bhv;
