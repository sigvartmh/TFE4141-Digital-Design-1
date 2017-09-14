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

entity test is
end test;


architecture Behavioral of test is
signal A_tb : std_ulogic;
signal B_tb : std_ulogic;
signal Q_tb : std_ulogic;
signal QN_tb: std_ulogic;
begin
 dut: entity work.task2
    port map(
        A => A_tb,
        B => B_tb,
        Q => Q_tb,
        QN => QN_tb); 
    process
    begin
    A_tb<='1';
    B_tb<='0';
    wait for 10 ns;
    A_tb<='0';
    wait for 10 ns;
    B_tb<='1';
    wait for 10 ns;
    B_tb<='0';
    wait for 10 ns;
    B_tb<='1';
    A_tb<='1';
    end process;
end;