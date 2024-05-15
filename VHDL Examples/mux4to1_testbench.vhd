--------------------------------------------------------
-- Author: Icaro Mendes
-- MUX 4 to 1 Testbench
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
entity Test_MUX_4_to_1 is
end entity Test_MUX_4_to_1;

--------------------------------------------------------
-- Testbench ARCHITECTURE
--------------------------------------------------------
architecture Behavioural of Test_MUX_4_to_1 is
    component MUX_4_to_1
    port(A:  in std_logic;
         B:  in std_logic;
         C:  in std_logic;
         D:  in std_logic;
         CONTROL: in std_logic_vector(1 downto 0);
         Z: out std_logic);
    end component;

-- inputs
signal A:         std_logic := '0';
signal B:         std_logic := '0';
signal C:         std_logic := '0';
signal D:         std_logic := '0';
signal CONTROL:   std_logic := '0';
-- outputs
signal Z:         std_logic := '0';

begin

--------------------------------------------------------
-- Instantiante the Unit Under Test (UUT)
--------------------------------------------------------
uut: MUX_4_to_1 port map
(   A         => A,
    B         => B,
    C         => C,
    D         => D,
    CONTROL   => CONTROL,
    Z         => Z);

Test_Bench_Process : process
begin
    Wait for  0 ns; A <= '0'; B <= '0'; C <='0'; D <= '0'; Control(1 downto 0) <= "00";
    Wait for 10 ns; A <= '0'; B <= '0'; C <='0'; D <= '1'; Control(1 downto 0) <= "00";
    Wait for 10 ns; A <= '0'; B <= '0'; C <='1'; D <= '0'; Control(1 downto 0) <= "00";
    Wait for 10 ns; A <= '0'; B <= '1'; C <='0'; D <= '0'; Control(1 downto 0) <= "00";
    Wait for 10 ns; A <= '1'; B <= '0'; C <='0'; D <= '0'; Control(1 downto 0) <= "00";
    Wait for 10 ns; A <= '0'; B <= '0'; C <='0'; D <= '0'; Control(1 downto 0) <= "01";
    Wait for 10 ns; A <= '0'; B <= '0'; C <='0'; D <= '1'; Control(1 downto 0) <= "01";
    Wait for 10 ns; A <= '0'; B <= '0'; C <='1'; D <= '0'; Control(1 downto 0) <= "01";
    Wait for 10 ns; A <= '0'; B <= '1'; C <='0'; D <= '0'; Control(1 downto 0) <= "01";
    Wait for 10 ns; A <= '1'; B <= '0'; C <='0'; D <= '0'; Control(1 downto 0) <= "01";
    Wait for 10 ns; A <= '0'; B <= '0'; C <='0'; D <= '0'; Control(1 downto 0) <= "10";
    Wait for 10 ns; A <= '0'; B <= '0'; C <='0'; D <= '1'; Control(1 downto 0) <= "10";
    Wait for 10 ns; A <= '0'; B <= '0'; C <='1'; D <= '0'; Control(1 downto 0) <= "10";
    Wait for 10 ns; A <= '0'; B <= '1'; C <='0'; D <= '0'; Control(1 downto 0) <= "10";
    Wait for 10 ns; A <= '1'; B <= '0'; C <='0'; D <= '0'; Control(1 downto 0) <= "10";
    Wait for 10 ns; A <= '0'; B <= '0'; C <='0'; D <= '0'; Control(1 downto 0) <= "11";
    Wait for 10 ns; A <= '0'; B <= '0'; C <='0'; D <= '1'; Control(1 downto 0) <= "11";
    Wait for 10 ns; A <= '0'; B <= '0'; C <='1'; D <= '0'; Control(1 downto 0) <= "11";
    Wait for 10 ns; A <= '0'; B <= '1'; C <='0'; D <= '0'; Control(1 downto 0) <= "11";
    Wait for 10 ns; A <= '1'; B <= '0'; C <='0'; D <= '0'; Control(1 downto 0) <= "11";
end process;
end architecture Behavioural;
--------------------------------------------------------
--                    End of file
--------------------------------------------------------