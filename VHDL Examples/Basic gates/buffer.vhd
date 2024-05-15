--------------------------------------------------------
-- Author: Icaro Mendes
-- Buffer: Implementacao de um Buffer em VHDL
--------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

--------------------------------------------------------
-- ENTITY DECLARATION
--------------------------------------------------------
ENTITY BUFFER_GATE is
    port (A: IN std_logic;
          Z: OUT std_logic);
END ENTITY BUFFER_GATE;

--------------------------------------------------------
-- ARCHITECTURE DECLARATION 
--------------------------------------------------------
ARCHITECTURE Dataflow OF BUFFER_GATE IS
BEGIN 

    Z <= A;

END ARCHITECTURE Dataflow;
--------------------------------------------------------
--                    End of file
--------------------------------------------------------
