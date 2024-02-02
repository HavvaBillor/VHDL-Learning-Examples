library ieee;
use ieee.STD_LOGIC_1164.all;
use ieee.NUMERIC_STD.all;

entity full_adder is 
	port(
		a,b,c_in: in std_logic;
		sum:out std_logic;
		carry: out std_logic);
end entity;

architecture arch of full_adder is 
begin
	sum <= a xor b xor c;
	carry <= (a and b) or (b and c) or (c and a);

end architecture;