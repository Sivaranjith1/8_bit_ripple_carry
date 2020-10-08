library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ripple_carry_adder is
    generic (
        n: integer := 8
    );
    port (
        a,b: in std_logic_vector(n-1 downto 0);
        o_sum: out std_logic_vector(n-1 downto 0);
        o_carry: out std_logic
    );
end;

architecture ripple_carry of ripple_carry_adder is

    signal carry: std_logic_vector(n downto 0) := (others => '0');

    component full_adder is
        port(
            i_inp1, i_inp2, i_carry: in std_logic;
            o_sum, o_carry: out std_logic
        );
    end component;

begin
    gen: for i in a'range generate
        full: full_adder port map (
            i_inp1 => a(i),
            i_inp2 => b(i),
            i_carry => carry(i),
            o_sum => o_sum(i),
            o_carry => carry(i+1)
        );
    end generate;

    o_carry <= carry(n);
end ripple_carry ; -- ripple_carry