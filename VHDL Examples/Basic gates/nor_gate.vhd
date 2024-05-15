--------------------------------------------------------
-- Author: Icaro Mendes
-- NOR gate: Implementacao da porta logica NOR em VHDL
--------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

--------------------------------------------------------
-- ENTITY DECLARATION
--------------------------------------------------------
ENTITY NOR_GATE is
    port (A: IN std_logic;
          B: IN std_logic;
          Z: OUT std_logic);
END ENTITY NOR_GATE;

--------------------------------------------------------
-- ARCHITECTURE DECLARATION 
--------------------------------------------------------
ARCHITECTURE Dataflow OF NOR_GATE IS
BEGIN 

    Z <= (A NOR B);

END ARCHITECTURE Dataflow;
--------------------------------------------------------
--                    End of file
--------------------------------------------------------
