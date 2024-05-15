--------------------------------------------------------
-- Author: Icaro Mendes
-- Eight bit adder
--------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

--------------------------------------------------------
-- ENTITY DECLARATION
--------------------------------------------------------
entity EIGHT_BIT_DESIGN is
    port (A: in  std_logic_vector (7 downto 0);
          B: in  std_logic_vector (7 downto 0);
          Z: out std_logic_vector (7 downto 0));
end entity EIGHT_BIT_DESIGN;

--------------------------------------------------------
-- ARCHITECTURE DECLARATION 
--------------------------------------------------------
architecture Dataflow of EIGHT_BIT_DESIGN is
begin

    Z (7 downto 0) <= A (7 downto 0) + B (7 downto 0);

end architecture Dataflow;
--------------------------------------------------------
--                    End of file
--------------------------------------------------------
