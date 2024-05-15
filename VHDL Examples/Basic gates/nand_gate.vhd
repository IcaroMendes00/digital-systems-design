--------------------------------------------------------
-- Author: Icaro Mendes
-- NAND gate: Implementacao da porta logica NAND em VHDL
--------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

--------------------------------------------------------
-- ENTITY DECLARATION
--------------------------------------------------------
ENTITY NAND_GATE is
    port (A: IN std_logic;
          B: IN std_logic;
          Z: OUT std_logic);
END ENTITY NAND_GATE;

--------------------------------------------------------
-- ARCHITECTURE DECLARATION 
--------------------------------------------------------
ARCHITECTURE Dataflow OF NAND_GATE IS
BEGIN 

    Z <= (A NAND B);

END ARCHITECTURE Dataflow;
--------------------------------------------------------
--                    End of file
--------------------------------------------------------
