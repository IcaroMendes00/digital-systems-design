--------------------------------------------------------
-- Author: Icaro Mendes
-- VHDL Cheatset
--------------------------------------------------------
-- Bibliotecas
--     IEEE.STD_LOGIC_1164: Define o padrão para descrever os tipos de dados de 
--                          interconexão usados na linguagem VHDL, juntamente com 
--                          os tipos STD_LOGIC e STD_LOGIC_VECTOR.

--     IEEE.STD_LOGIC_ARITH: Define os tipos UNSIGNED e SIGNED, funções de conversão 
--                           e operações aritméticas/comparativas para uso com os tipos UNSIGNED e SIGNED.

--     IEEE.STD_LOGIC_UNSIGNED: Fornece funções para permitir o uso de tipos STD_LOGIC_VECTOR como se fossem tipos UNSIGNED.

--     IEEE.STD_LOGIC_SIGNED: Fornece funções para permitir o uso de tipos STD_LOGIC_VECTOR como se fossem tipos SIGNED.

--     IEEE.NUMERIC_STD: São operações aritméticas que seguem o padrão IEEE. Para operações aritméticas de números não 
--                       assinados e assinados, este é o pacote preferido em muitos cenários em comparação com os pacotes 
--                       STD_LOGIC_ARITH, STD_LOGIC_UNSIGNED e STD_LOGIC_SIGNED.

--     STD.STANDARD: São definições predefinidas para os tipos e funções da linguagem VHDL.
--     STD.TEXTIO: São operações de entrada/saída de arquivos.

--     WORK.<CONFIGURADO PELO USUÁRIO>: É a biblioteca de trabalho desenvolvida pelo usuario.

-- Operadores logicos
--    AND  Z <= (A AND B);
--    NAND Z <= (A NAND B);
--    NOR  Z <= (A NOR B);
--    NOT  Z <= NOT (A);
--    OR   Z <= (A OR B);
--    XNOR Z <= (A XNOR B);
--    XOR  Z <= (A XOR B);

-- Operadores relacionais
--      Equal to                    =    If (A = B) Then
--      Not equal to               /=    If (A /= B) Then
--      Less than                   <    If (A < B) Then
--      Less than or equal to      <=    If (A <= B) Then
--      Greater than                >    If (A > B) Then
--      Greater than or equal to   >=    If (A >= B) Then

-- Operadores Aritmeticos
--      Addition             +      Z <= A + B;
--      Subtraction          -      Z <= A - B;
--      Multiplication       *      Z <= A * B;
--      Division             /      Z <= A / B;
--      Exponentiating      **      Z <= 4 ** 2;
--      Modulus            MOD      Z <= A MOD B;
--      Remainder          REM      Z <= A REM B;
--      Absolute value     ABS      Z <= ABS A;

-- Operador de concatenacao:  & Z <= A & B;

-- Operadores de deslocamento
--      Rotate left logical       rol   Z <= a rol 2;
--      Rotate right logical      ror   Z <= a ror 2;
--      Shift left arithmetic     sla   Z <= a sla 2;
--      Shift left logical        sll   Z <= a sll 2;
--      Shift right arithmetic    sra   Z <= a sra 2;
--      Shift right logical       srl   Z <= a srl 2;