--------------------------------------------------------
-- Author: Icaro Mendes
-- Testbench do circuito RC em VHDL-AMS
--------------------------------------------------------
LIBRARY DISCIPLINES;
USE DISCIPLINES.ELECTROMAGNETIC_SYSTEM.ALL;

--------------------------------------------------------
-- Testbench ENTITY
--------------------------------------------------------
entity Testbench is
end;

--------------------------------------------------------
-- Testbench ARCHITECTURE
--------------------------------------------------------
architecture Structure of Testbench is
    TERMINAL x1, x2: ELECTRICAL;
begin 
    Vsrc: entity Source    (Behavioural) port map (x1, electrical_ground);
    R1:   entity Resistor  (Behavioural) port map (x1, x2);
    C1:   entity Capacitor (Behavioural) port map (x2, electrical_ground);
end Structure;

--------------------------------------------------------
-- End of VHDL-AMS testbench
--------------------------------------------------------