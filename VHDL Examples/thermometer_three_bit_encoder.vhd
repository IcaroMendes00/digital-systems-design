--------------------------------------------------------
-- Author: Icaro Mendes
-- Thermometer code to three-bit binary encoder
--------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

--------------------------------------------------------
-- ENTITY DECLARATION
--------------------------------------------------------
entity THERMOMETER_3_bit_ENCODER is
    port(X:  in std_logic_vector(6 downto 0);
         D: out std_logic_vector(2 downto 0));
end entity THERMOMETER_3_bit_ENCODER;

---------------------------------------------------------
-- ARCHITECTURE DECLARATION
---------------------------------------------------------
architecture Behavioural of THERMOMETER_3_bit_ENCODER is
begin 
    process (X)
    begin
        case (X) is
            when "0000000" => D(2 downto 0) <= "000";
            when "0000001" => D(2 downto 0) <= "001";
            when "0000011" => D(2 downto 0) <= "010";
            when "0000111" => D(2 downto 0) <= "011";
            when "0001111" => D(2 downto 0) <= "100";
            when "0011111" => D(2 downto 0) <= "101";
            when "0111111" => D(2 downto 0) <= "110";
            when "1111111" => D(2 downto 0) <= "111";
            when others    => D(2 downto 0) <= "000"; -- default
        end case;
    end process;
end architecture Behavioural;

--------------------------------------------------------
--                    End of file
--------------------------------------------------------