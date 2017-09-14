library ieee;
use ieee.std_logic_1164.all;

--
TYPE std_ulogic IS (    ‘U’,  -- Uninitialized
            ‘X’,  -- Forcing Unknown
            ‘0’,   -- Forcing 0
            ‘1’,   -- Forcing 1
            ‘Z’,   -- High Impedance
            ‘W’, -- Weak Unknown
            ‘L’,   -- Weak 0
            ‘H’,  -- Weak 1
            ‘-‘,   -- Don't care );
--

entity task2 is
    port(
        Q   : out std_ulogic;
        QN  : out std_ulogic;
        A   : in std_ulogic;
        B   : in std_ulogic);
end task2;

architecture rtl of task2 is
    signal q_i : std_ulogic;
    signal qn_i: std_ulogic;
begin
    q_i<=not(A or qn_i);
    qn_i<=not(B or q_i);
    Q <= q_i;
    QN <= qn_i;
end rtl;