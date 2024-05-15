--------------------------------------------------------
-- Author: Icaro Mendes
-- MUX 2 to 1 Testbench
--------------------------------------------------------
-- Libraries and packages to use
--------------------------------------------------------
library ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

--------------------------------------------------------
-- Testbench ENTITY
--------------------------------------------------------
entity test_mux is
end test_mux;

--------------------------------------------------------
-- Testbench ARCHITECTURE
--------------------------------------------------------
architecture Behavioural of test_mux is
    component MUX_2_to_1_dataflow
    port (A:    in std_logic;
          B:    in std_logic;
          SEL0: in std_logic;
          F:   out std_logic);
    end component;

signal A:    std_logic := '0';
signal B:    std_logic := '0';
signal SEL0: std_logic := '0';

signal F:    std_logic := '0';

begin

------------------------------------------------------
-- Instantiate the Unit Under Test (UUT)
------------------------------------------------------
uut: MUX_2_to_1_dataflow port map 
(   A    => A,
    B    => B,
    SEL0 => SEL0,
    F    => F );

Test_Bench_Process : process
begin
    wait for  0 ns; SEL0 <= '0'; A <= '0'; B <= '0';
    wait for 10 ns; SEL0 <= '0'; A <= '0'; B <= '1';
    wait for 10 ns; SEL0 <= '0'; A <= '1'; B <= '0';
    wait for 10 ns; SEL0 <= '0'; A <= '1'; B <= '1';
    wait for 10 ns; SEL0 <= '1'; A <= '0'; B <= '0';
    wait for 10 ns; SEL0 <= '1'; A <= '0'; B <= '1';
    wait for 10 ns; SEL0 <= '1'; A <= '1'; B <= '0';
    wait for 10 ns; SEL0 <= '1'; A <= '1'; B <= '1';
    wait for 10 ns;
end process;

end architecture Behavioural;
--------------------------------------------------------
--                    End of file
--------------------------------------------------------