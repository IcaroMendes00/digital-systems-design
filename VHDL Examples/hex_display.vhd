--------------------------------------------------------
-- Author: Icaro Mendes
-- Hex display
--------------------------------------------------------
-- Character to create - a - b - c - d - e - f - g -
----------------------------------------------------
--           0         - 1 - 1 - 1 - 1 - 1 - 1 - 0 -
--           1         - 0 - 1 - 1 - 0 - 0 - 0 - 0 -
--           2         - 1 - 1 - 0 - 1 - 1 - 0 - 1 -
--           3         - 1 - 1 - 1 - 1 - 0 - 0 - 1 -
--           4         - 0 - 1 - 1 - 0 - 0 - 1 - 1 -
--           5         - 1 - 0 - 1 - 1 - 0 - 1 - 1 -
--           6         - 1 - 0 - 1 - 1 - 1 - 1 - 1 -
--           7         - 1 - 1 - 1 - 0 - 0 - 0 - 0 -
--           8         - 1 - 1 - 1 - 1 - 1 - 1 - 1 -
--           9         - 1 - 1 - 1 - 1 - 0 - 1 - 1 -
--           A         - 1 - 1 - 1 - 0 - 1 - 1 - 1 -
--           B         - 0 - 0 - 1 - 1 - 1 - 1 - 1 -
--           C         - 1 - 0 - 0 - 1 - 1 - 1 - 0 -
--           D         - 0 - 1 - 1 - 1 - 1 - 0 - 1 -
--           E         - 1 - 0 - 0 - 1 - 1 - 1 - 1 -
--           F         - 1 - 0 - 0 - 0 - 1 - 1 - 1 -
----------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

-- ENTITY DECLARATION
entity HEX_DISPLAY is
    port(DATA_IN: in std_logic_vector(3 downto 0);
         A:      out std_logic;
         B:      out std_logic;
         C:      out std_logic;
         D:      out std_logic;
         E:      out std_logic;
         F:      out std_logic;
         G:      out std_logic);
end entity HEX_DISPLAY;

-- ARCHITECTURE DECLARATION
architecture Behavioural of HEX_DISPLAY is
begin
    process(DATA_IN)
    begin
        case DATA_IN is
            when "0000" => A <= '1'; B <= '1'; C <= '1'; D <= '1'; E <= '1'; F <= '1'; G <= '0';
            when "0001" => A <= '0'; B <= '1'; C <= '1'; D <= '0'; E <= '0'; F <= '0'; G <= '0';
            when "0010" => A <= '1'; B <= '1'; C <= '0'; D <= '1'; E <= '1'; F <= '0'; G <= '1';
            when "0011" => A <= '1'; B <= '1'; C <= '1'; D <= '1'; E <= '0'; F <= '0'; G <= '1';
            when "0100" => A <= '0'; B <= '1'; C <= '1'; D <= '0'; E <= '0'; F <= '1'; G <= '1';
            when "0101" => A <= '1'; B <= '0'; C <= '1'; D <= '1'; E <= '0'; F <= '1'; G <= '1';
            when "0110" => A <= '1'; B <= '0'; C <= '1'; D <= '1'; E <= '1'; F <= '1'; G <= '1';
            when "0111" => A <= '1'; B <= '1'; C <= '1'; D <= '0'; E <= '0'; F <= '0'; G <= '0';
            when "1000" => A <= '1'; B <= '1'; C <= '1'; D <= '1'; E <= '1'; F <= '1'; G <= '1';
            when "1001" => A <= '1'; B <= '1'; C <= '1'; D <= '0'; E <= '0'; F <= '1'; G <= '1';
            when "1010" => A <= '1'; B <= '1'; C <= '1'; D <= '0'; E <= '1'; F <= '1'; G <= '1';
            when "1011" => A <= '0'; B <= '0'; C <= '1'; D <= '1'; E <= '1'; F <= '1'; G <= '1';
            when "1100" => A <= '1'; B <= '0'; C <= '0'; D <= '1'; E <= '1'; F <= '1'; G <= '0';
            when "1101" => A <= '0'; B <= '1'; C <= '1'; D <= '1'; E <= '1'; F <= '0'; G <= '1';
            when "1110" => A <= '1'; B <= '0'; C <= '0'; D <= '1'; E <= '1'; F <= '1'; G <= '1';
            when "1111" => A <= '1'; B <= '0'; C <= '0'; D <= '0'; E <= '1'; F <= '1'; G <= '1';
            when others => A <= '0'; B <= '0'; C <= '0'; D <= '0'; E <= '0'; F <= '0'; G <= '0'; -- default
        end case;
    end process;
end architecture Behavioural;
-- End of file 