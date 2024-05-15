--------------------------------------------------------
-- Author: Icaro Mendes
-- One bit half adder
--------------------------------------------------------
library ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

--------------------------------------------------------
-- ENTITY DECLARATION
--------------------------------------------------------
entity HALF_ADDER is 
    port(A:     in std_logic;
         B:     in std_logic;
         SUM:  out std_logic;
         COUT: out std_logic);
end entity HALF_ADDER;

--------------------------------------------------------
-- ARCHITECTURE DECLARATION
--------------------------------------------------------
architecture Behavioural of HALF_ADDER is
begin
    SUM  <= (A xor B);
    COUT <= (A and B);
end architecture Behavioural;

--------------------------------------------------------
--                    End of file
--------------------------------------------------------