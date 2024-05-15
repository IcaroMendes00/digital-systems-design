---------------------------------------------------------------------------------------------------
-- Author: Icaro Mendes
-- Circuito RC em VHDL-AMS(Figure 4.18): Considere uma rede elétrica simples de resistor-capacitor 
-- (RC) alimentada por uma fonte de tensão de degrau, conforme mostrado na Figura 4.18. 
-- A fonte de tensão (Vsrc) está conectada entre dois nós no circuito (o nó x1 e o nó comum). 
-- O resistor (R1) está conectado entre os nós x1 e x2. 
-- O capacitor (C1) está conectado entre os nós x2 e o nó comum. A fonte de tensão, o 
-- resistor e o capacitor usados no projeto são definidos na Figura 4.19. 
-- A fonte de tensão produz uma entrada de tensão de mudança de degrau que muda em 50 ms e 100 ms."
-----------------------------------------------------------------------------------------------------
-- Step voltage source
-------------------------------------------------------------------------
LIBRARY DISCIPLINE;
USE DISCIPLINES.ELETROMAGNETIC_SYSTEM.ALL;

-------------------------------------------------------------------------
-- Voltage Source - ENTITY DECLARATION 
-------------------------------------------------------------------------
ENTITY Source IS 
    PORT (TERMINAL pos, neg: ELECTRICAL);
END Source

--------------------------------------------------------------
-- Voltage Source - ARCHITECTURE DECLARATION 
--------------------------------------------------------------
ARCHITECTURE Behavioural OF Source IS 
    QUANTITY Vsource ACROSS Isource THROUGH pos TO neg;
BEGIN 
    IF now < 50 ms or now > 100 ms USE 
        Vsource == 0.0;
    ELSE 
        Vsource == 1.0;
    END USE 
END ARCHITECTURE Behavioural;

-------------------------------------------------------------------------
-- 10 KOhm resistor
-------------------------------------------------------------------------
LIBRARY DISCIPLINE;
USE DISCIPLINES.ELETROMAGNETIC_SYSTEM.ALL;

-------------------------------------------------------------------------
-- 10KOhm resistor - ENTITY DECLARATION 
-------------------------------------------------------------------------
ENTITY Resistor IS 
    PORT (TERMINAL pos, neg : ELECTRICAL);
END Resistor;

-------------------------------------------------------------------------
-- 10KOhm resistor - ARCHITECTURE DECLARATION 
-------------------------------------------------------------------------
ARCHITECTURE Behavioural OF Resistor IS 
    QUANTITY Vr ACROSS Ir THROUGH pos TO neg;
BEGIN Ir == Vr/10000.0;
END Behavioural;

-------------------------------------------------------------------------
-- 1 uF capacitor
-------------------------------------------------------------------------
LIBRARY DISCIPLINE;
USE DISCIPLINES.ELETROMAGNETIC_SYSTEM.ALL;

------------------------------------------------------------------------- 
-- 1 uF capacitor - ENTITY DECLARATION 
-------------------------------------------------------------------------
entity Capacitor IS 
    port (TERMINAL pos, neg : ELECTRICAL);
end Capacitor

-------------------------------------------------------------------------
-- 1 uF capacitor - ARCHITECTURE DECLARATION 
-------------------------------------------------------------------------
architecture Behavioural of Capacitor is
    QUANTITY Vc ACROSS Ic THROUGH pos to neg;
begin
    Ic == 1.0e-6 * Vc'dot;
end Behavioural;
--------------------------------------------------------
--                    End of file
--------------------------------------------------------