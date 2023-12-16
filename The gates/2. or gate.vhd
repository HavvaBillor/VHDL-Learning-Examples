library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity and2 is
    Port ( in1 : in STD_LOGIC;
           in2 : in STD_LOGIC;
           out1 : out STD_LOGIC);
end and2;

architecture arc_and2 of and2 is

begin
    out1 <= in1 or in2;

end arc_and2;