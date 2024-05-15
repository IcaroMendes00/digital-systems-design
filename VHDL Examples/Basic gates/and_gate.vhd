--------------------------------------------------------
-- Author: Icaro Mendes
-- AND gate: Implementacao da porta logica AND em VHDL
--------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

--------------------------------------------------------
-- ENTITY DECLARATION
--------------------------------------------------------
ENTITY AND_GATE is
    port (A: IN std_logic;
          B: IN std_logic;
          Z: OUT std_logic);
END ENTITY AND_GATE;

--------------------------------------------------------
-- ARCHITECTURE DECLARATION 
--------------------------------------------------------
ARCHITECTURE Dataflow OF AND_GATE IS
BEGIN 

    Z <= (A AND B);

END ARCHITECTURE Dataflow;
--------------------------------------------------------
--                    End of file
--------------------------------------------------------
