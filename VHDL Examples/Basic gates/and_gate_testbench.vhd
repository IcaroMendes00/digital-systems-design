--------------------------------------------------------
-- Author: Icaro Mendes
-- AND gate: TESTBENCH da porta logica AND em VHDL
--------------------------------------------------------
-- Libraries and packages to use
--------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_arith.ALL;
USE IEEE.STD_LOGIC_unsigned.ALL;

--------------------------------------------------------
-- Testbench ENTITY
--------------------------------------------------------

ENTITY Test_AND_GATE_vhd IS 
END Test_AND_GATE_vhd;

--------------------------------------------------------
-- Testbench ARCHITECTURE
--------------------------------------------------------

ARCHITECTURE Behavioural OF Test_AND_GATE_vhd IS 

    COMPONENT AND_GATE
    PORT( A: IN std_logic;
          B: IN std_logic;
          Z: OUT std_logic );
    END COMPONENT;

    SIGNAL A: std_logic := '0';
    SIGNAL B: std_logic := '0';
    SIGNAL Z: std_logic;

BEGIN

uut: AND_GATE PORT MAP 
(
    A => A,
    B => B,
    Z => Z
);

Testbench_Process : PROCESS
    BEGIN

    Wait for  0 ns; A <= '0'; B <= '0';
    Wait for 10 ns; A <= '1'; B <= '0';
    Wait for 10 ns; A <= '0'; B <= '1';
    Wait for 10 ns; A <= '1'; B <= '1';
    Wait;

    END PROCESS;
END ARCHITECTURE Behavioural;
--------------------------------------------------------
--                  End of file
--------------------------------------------------------