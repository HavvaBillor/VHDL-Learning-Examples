library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

	entity example is
		port( a,b,c: in std_logic;
			f1,f2: out std_logic
			);
	end example;

	architecture arc_example of example is
		begin

		f1 <= (a and NOT (b)) or c;
		f2 <= a and b and (not (c));
	end arc_example;