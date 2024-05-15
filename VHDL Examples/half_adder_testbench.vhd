--------------------------------------------------------
-- Author: Icaro Mendes
-- One bit half adder Testbench
--------------------------------------------------------
-- Libraries and packages to use
--------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

--------------------------------------------------------
-- Testbench ENTITY
--------------------------------------------------------
entity Test_HALF_ADDER is
end Test_HALF_ADDER;

--------------------------------------------------------
-- Testbench ARCHITECTURE
--------------------------------------------------------
architecture Behavioural of Test_HALF_ADDER is 
    component HALF_ADDER
    port(A:     in std_logic;
         B:     in std_logic;
         SUM:  out std_logic;
         COUT: out std_logic);
    end component;

-- inputs
signal A:    std_logic := '0';
signal B:    std_logic := '0';
-- outputs
signal SUM:  std_logic := '0';
signal COUT: std_logic := '0';

begin

--------------------------------------------------------
-- Instantiante the Unit Under Test (UUT)
--------------------------------------------------------
uut: HALF_ADDER port map
(   A    => A,
    B    => B,
    SUM  => SUM,
    COUT => COUT );

Test_Bench_Process : process
begin
    Wait for  0 ns; A <= '0'; B <= '0';
    Wait for 10 ns; A <= '0'; B <= '1';
    Wait for 10 ns; A <= '1'; B <= '0';
    Wait for 10 ns; A <= '1'; B <= '1';
    Wait for 10 ns;
end process;
end architecture Behavioural;
--------------------------------------------------------
--                    End of file
--------------------------------------------------------

