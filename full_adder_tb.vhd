library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity full_adder_tb is
end full_adder_tb;

architecture behave of full_adder_tb is
    signal r_Inp1 : std_logic;
    signal r_Inp2 : std_logic;
    signal r_Carry : std_logic := '0';

    signal w_Sum : std_logic := '0';
    signal w_Carry: std_logic := '0';

begin
    UUT : entity work.full_adder
        port map(
            i_inp1 => r_Inp1,
            i_inp2 => r_Inp2,
            i_carry => r_Carry,

            o_sum => w_Sum,
            o_carry => w_Carry
        );

    process is
    begin
        r_Inp1 <= '0';
        r_Inp2 <= '0';
        r_Carry <= '0';
        wait for 100ns;
        r_Inp1 <= '1';
        r_Inp2 <= '0';
        r_Carry <= '0';
        wait for 100ns;
        r_Inp1 <= '1';
        r_Inp2 <= '1';
        r_Carry <= '0';
        wait for 100ns;
        r_Inp1 <= '0';
        r_Inp2 <= '1';
        r_Carry <= '0';
        wait for 100ns;


        r_Inp1 <= '0';
        r_Inp2 <= '0';
        r_Carry <= '1';
        wait for 100ns;
        r_Inp1 <= '1';
        r_Inp2 <= '0';
        r_Carry <= '1';
        wait for 100ns;
        r_Inp1 <= '1';
        r_Inp2 <= '1';
        r_Carry <= '1';
        wait for 100ns;
        r_Inp1 <= '0';
        r_Inp2 <= '1';
        r_Carry <= '1';
        wait for 100ns;

    end process;
end behave;