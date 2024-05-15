--------------------------------------------------------
-- Author: Icaro Mendes
-- NOT gate: Implementacao da porta logica NOT em VHDL
--------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

--------------------------------------------------------
-- ENTITY DECLARATION
--------------------------------------------------------
ENTITY NOT_GATE is
    port (A: IN std_logic;
          Z: OUT std_logic);
END ENTITY NOT_GATE;

--------------------------------------------------------
-- ARCHITECTURE DECLARATION 
--------------------------------------------------------
ARCHITECTURE Dataflow OF NOT_GATE IS
BEGIN 

    Z <= (NOT A);

END ARCHITECTURE Dataflow;
--------------------------------------------------------
--                    End of file
--------------------------------------------------------
