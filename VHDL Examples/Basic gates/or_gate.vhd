--------------------------------------------------------
-- Author: Icaro Mendes
-- OR gate: Implementacao da porta logica OR em VHDL
--------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

--------------------------------------------------------
-- ENTITY DECLARATION
--------------------------------------------------------
ENTITY OR_GATE is
    port (A: IN std_logic;
          B: IN std_logic;
          Z: OUT std_logic);
END ENTITY OR_GATE;

--------------------------------------------------------
-- ARCHITECTURE DECLARATION 
--------------------------------------------------------
ARCHITECTURE Dataflow OF OR_GATE IS
BEGIN 

    Z <= (A OR B);

END ARCHITECTURE Dataflow;
--------------------------------------------------------
--                    End of file
--------------------------------------------------------
