library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_wallace_4x4 is

end tb_wallace_4x4;

architecture Behavioral of tb_wallace_4x4 is
component wallace_4x4 is
	port (
	a_in,b_in : in std_logic_vector(3 downto 0);
	result : out std_logic_vector(7 downto 0) );
end component;

signal a_in : std_logic_vector(3 downto 0);
signal b_in : std_logic_vector(3 downto 0);
signal result : std_logic_vector(7 downto 0);

begin

uut: wallace_4x4 port map(
    a_in => a_in,
    b_in => b_in,
    result => result 
);
    
stim_procc : process
begin
a_in <= "0010";
b_in <="0100";
wait for 20ns;

a_in <= "0110";
b_in <="0100";
wait for 20ns;

a_in <= "0110";
b_in <="0100";
wait for 20ns;

a_in <= "1111";
b_in <="1111";
wait for 20ns;

a_in <= "0000";
b_in <="0111";
wait for 20ns;

wait;
end process;

end architecture;