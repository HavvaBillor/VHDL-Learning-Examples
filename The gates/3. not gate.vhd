library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity not1 is
    Port ( in1 : in STD_LOGIC;
           out1 : out STD_LOGIC);
end not1;

architecture arc_not1 of not1 is

begin
    out1 <= not in1;

end arc_not1;