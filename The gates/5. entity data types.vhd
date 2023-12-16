-- a) STD_LOGIC_VECTOR

library IEEE;
use IEEE.STD_LOGIC_1164.all ;

	entity fourbit_circuit is
		port( inp1: in std_logic_vector(3 downto 0);
			inp2: in std_logic_vector(3 downto 0);
			out1. out std_logic_vector(4 downto 0);
			out2: out std_logic_vector(4 downto 0)
			);
	end fourbit_circuit;

	-- b) BIT_VECTOR

	entity fourbit_circuit is
		port( inp1: in bit_vector(3 downto 0);
			inp2: in bit_vector(3 downto 0);
			out1. out bit_vector(4 downto 0);
			out2: out bit_vector(4 downto 0)
			);
	end fourbit_circuit;

	-- c) INTEGER

	entity fourbit_circuit is
		port( inp1: in integer range -8 to 7;
			inp2: in integer range -8 to 7;
			out1. out integer range -16 to 15;
			out2: out integer range -16 to 15
			);
	end fourbit_circuit;

	-- d) NATURAL

	entity fourbit_circuit is
		port( inp1: in natural range 0 to 15;
			inp2: in natural range 0 to 15;
			out1. out natural range 0 to 31;
			out2: out natural range 0 to 31
			);
	end fourbit_circuit;

	-- e) POSITIVE

	entity fourbit_circuit is
		port( inp1: in positive range 1 to 15;
			inp2: in positive range 1 to 15;
			out1. out positive range 1 to 31;
			out2: out positive range 1 to 31
			);
	end fourbit_circuit;

-- f) UNSIGNED

library IEEE;
use IEEE.NUMERIC_STD.ALL ;

	entity fourbit_circuit is
		port( inp1: in unsigned (3 downto 0);
			inp2: in unsigned (3 downto 0);
			out1. out unsigned (4 downto 0);
			out2: out unsigned (4 downto 0)
			);
	end fourbit_circuit;

	-- g) SIGNED

library IEEE;
use IEEE.NUMERIC_STD.ALL ;

	entity fourbit_circuit is
		port( inp1: in signed (3 downto 0);
			inp2: in signed (3 downto 0);
			out1. out signed (4 downto 0);
			out2: out signed (4 downto 0)
			);
	end fourbit_circuit;