library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity or2 is
    Port ( in1 : in STD_LOGIC;
           in2 : in STD_LOGIC;
           out1 : out STD_LOGIC);
end or2;

architecture arc_or2 of or2 is

begin
    out1 <= in1 or in2;

end arc_or2;