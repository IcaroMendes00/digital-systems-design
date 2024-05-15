--------------------------------------------------------
-- Author: Icaro Mendes
-- XNOR gate: Implementacao da porta logica XNOR em VHDL
--------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

--------------------------------------------------------
-- ENTITY DECLARATION
--------------------------------------------------------
ENTITY XNOR_GATE is
    port (A: IN std_logic;
          B: IN std_logic;
          Z: OUT std_logic);
END ENTITY XNOR_GATE;

--------------------------------------------------------
-- ARCHITECTURE DECLARATION 
--------------------------------------------------------
ARCHITECTURE Dataflow OF XNOR_GATE IS
BEGIN 

    Z <= (A XNOR B);

END ARCHITECTURE Dataflow;
--------------------------------------------------------
--                    End of file
--------------------------------------------------------
