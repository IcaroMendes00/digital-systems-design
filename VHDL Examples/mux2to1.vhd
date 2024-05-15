--------------------------------------------------------
-- Author: Icaro Mendes
-- MUX 2 to 1 (Sel0 = 0 F = A, Sel1 = 1 F = B)
--------------------------------------------------------
-- Truth table
--------------------------------------------------------
-- Sel0 - A - B - F -
---------------------
--  0   - 0 - 0 - 0 -
--  0   - 0 - 1 - 0 -
--  0   - 1 - 0 - 1 -
--  0   - 1 - 1 - 1 -
--  1   - 0 - 0 - 0 -
--  1   - 0 - 1 - 1 -
--  1   - 1 - 0 - 0 -
--  1   - 1 - 1 - 1 -
----------------------------------------------------------
-- F = (A . ~(Sel0)) + (B . Sel0)
----------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

--------------------------------------------------------
-- ENTITY DECLARATION
--------------------------------------------------------
entity MUX_2_to_1 is
    port (A:    in STD_LOGIC;
          B:    in STD_LOGIC;
          SEL0: in STD_LOGIC;
          F:   out STD_LOGIC);
end entity MUX_2_to_1;

--------------------------------------------------------
-- ARCHITECTURE DECLARATION 
--------------------------------------------------------
architecture Dataflow of MUX_2_to_1 is
begin
    F <= ((A and not(SEL0)) or (B and SEL0));
end architecture Dataflow;

--------------------------------------------------------
--                    End of file
--------------------------------------------------------