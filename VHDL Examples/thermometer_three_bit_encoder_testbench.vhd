--------------------------------------------------------
-- Author: Icaro Mendes
-- Thermometer code to three-bit binary encoder Testbench
--------------------------------------------------------
-- Libraries and packages to use
--------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

-- Testbench ENTITY
entity Test_THERMOMETER_3_bit_ENCODER is
end Test_THERMOMETER_3_bit_ENCODER;

-- Testbench ARCHITECTURE
architecture Behavioural of Test_THERMOMETER_3_bit_ENCODER is
    component THERMOMETER_3_bit_ENCODER
    port(X:  in std_logic_vector(6 downto 0);
         D: out std_logic_vector(2 downto 0));
    end component;

-- inputs
signal X: std_logic_vector(6 downto 0) := (others => '0');
-- outputs
signal D: std_logic_vector(2 downto 0);

begin

-- Instantiante the Unit Under Test (UUT)
uut: THERMOMETER_3_bit_ENCODER port map
(   X => X,
    D => D);

Test_Bench_Process : process
begin
    Wait for  0 ns; X <= "0000000";
    Wait for 10 ns; X <= "0000001";
    Wait for 10 ns; X <= "0000011";
    Wait for 10 ns; X <= "0000111";
    Wait for 10 ns; X <= "0001111";
    Wait for 10 ns; X <= "0011111";
    Wait for 10 ns; X <= "0111111";
    Wait for 10 ns; X <= "1111111";
    Wait for 10 ns;
end process;
end architecture Behavioural;

-- End of file 