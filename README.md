# 8 bit ripple carry adder

A changeable ripple carry adder where the generic integer n is set to 8 bits. By changing this value one can increase or decrease how many bits the adder can handle.

## ripple_carry_adder.vhd
The ripple_carry_adder entity is placed here. It has an input carry and an output carry bit.

```vhdl
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
```

## full_adder.vhd
This file contains an basic full adder.

```vhdl
entity full_adder is
    port(
        i_inp1 : in std_logic;
        i_inp2 : in std_logic;
        i_carry : in std_logic;

        o_sum: out std_logic;
        o_carry: out std_logic
    );
end;
```
