library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use std.env.finish;

entity ripple_carry_adder_tb is
end;

architecture behave of ripple_carry_adder_tb is

    signal r_a, r_b : std_logic_vector(7 downto 0) := (others => '0');

    signal w_sum: std_logic_vector(7 downto 0) := (others => '0');
    signal w_carry: std_logic := '0';
begin

    UUT: entity work.ripple_carry_adder
        port map (
            a => r_a,
            b => r_b,
            o_sum => w_sum,
            o_carry => w_carry
        );

    process is
    begin
    
        r_a <= X"AA";
        r_b <= X"10";
        wait until (r_a = X"AA" and r_b = X"10");
        wait for 25ns;
        assert(w_sum = X"BA" and w_carry = '0')
            report "ERROR w_sum is no equal to BA"
            severity error;

        r_a <= X"FF";
        r_b <= X"01";
        wait until (r_a = X"FF" and r_b = X"01");
        wait for 25ns;
        assert(w_sum = X"00" and w_carry = '1')
            report "ERROR w_sum is no equal to 00"
            severity error;

        r_a <= X"FF";
        r_b <= X"FF";
        wait until (r_a = X"FF" and r_b = X"FF");
        wait for 25ns;

        finish;
    end process;

end behave ; -- behave