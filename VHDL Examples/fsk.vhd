-- MODULADOR FSK
-- Input clock: 50MHz


-- LIBRARIES
library ieee;
use ieee.STD_LOGIC_1164.ALL;
use ieee.STD_LOGIC_ARITH.ALL;
use ieee.STD_LOGIC_UNSIGNED.ALL;

-- ENTITY
entity fsk is
port(CLK      :  in std_logic; -- 50MHz clock
     RESET    :  in std_logic; -- RESET
     CONTROL  :  in std_logic; -- bits de modulacao
     FREQ_OUT : out std_logic  -- saida de frequencia
    );
end fsk;

--ARCHITECTURE
architecture hardware of fsk is
    signal CLK_DIV_1: std_logic_vector(2 downto 0) := (others => '0');
    signal CLK_DIV_2: std_logic_vector(3 downto 0) := (others => '0');
    signal CLK_1    : std_logic := '0';
    signal CLK_2    : std_logic := '0';
    signal CLK_OUT  : std_logic := '0';

begin
    -- Processo de geracao do clock de 5MHz
    process(CLK, RESET)
    begin
        if RESET = '1' then
            CLK_DIV_1 <= (others => '0');
            CLK_1 <= '0';
        elsif rising_edge(CLK) then
            if CLK_DIV_1 = 4 then
                CLK_1 <= not CLK_1;
                CLK_DIV_1 <= (others => '0');
            else
                CLK_DIV_1 <= CLK_DIV_1 + 1;
            end if;
        end if;
    end process;

    -- Processo de geracao do clock de 2.5MHz
    process(CLK, RESET)
    begin
        if RESET = '1' then
            CLK_DIV_2 <= (others => '0');
            CLK_2 <= '0';
        elsif rising_edge(CLK) then
            if CLK_DIV_2 = 9 then
                CLK_2 <= not CLK_2;
                CLK_DIV_2 <= (others => '0');
            else
                CLK_DIV_2 <= CLK_DIV_2 + 1;
            end if;
        end if;
    end process;

    -- Processo para selecionar a frequencia de saida
    process(CONTROL, CLK_1, CLK_2)
    begin
        if CONTROL = '1' then
            CLK_OUT <= CLK_1;
        else
            CLK_OUT <= CLK_2;
        end if;
    end process;

    -- Atribui o clock selecionado para a saida
    FREQ_OUT <= CLK_OUT;

end hardware;
-- End of file