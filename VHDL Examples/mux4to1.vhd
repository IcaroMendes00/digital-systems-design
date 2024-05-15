--------------------------------------------------------
-- Author: Icaro Mendes
-- MUX 4 to 1 
--------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

--------------------------------------------------------
-- ENTITY DECLARATION
--------------------------------------------------------
entity MUX_4_to_1 is
    port(A:  in std_logic;
         B:  in std_logic;
         C:  in std_logic;
         D:  in std_logic;
         CONTROL: in std_logic_vector(1 downto 0);
         Z: out std_logic);
end entity MUX_4_to_1;

---------------------------------------------------------
-- ARCHITECTURE DECLARATION
---------------------------------------------------------
architecture Behavioural of MUX_4_to_1 is
begin
    process(A, B, C, D, CONTROL)
    begin
        case CONTROL is
            when "00"   => Z <= A;
            when "01"   => Z <= B;
            when "10"   => Z <= C;
            when "11"   => Z <= D;
            when others => Z <= A; -- default
        end case;
    end process;
end architecture Behavioural;

--------------------------------------------------------
--                    End of file
--------------------------------------------------------