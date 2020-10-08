library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity full_adder is
    port(
        i_inp1: in std_logic;
        i_inp2: in std_logic;
        i_carry: in std_logic;

        o_sum: out std_logic;
        o_carry: out std_logic
    );
end;

architecture rtl of full_adder is
begin
    o_sum <= i_inp1 xor i_inp2 xor i_carry;
    o_carry <= ((i_inp1 xor i_inp2) and i_carry) or (i_inp1 and i_inp2);
end rtl ; -- rtl