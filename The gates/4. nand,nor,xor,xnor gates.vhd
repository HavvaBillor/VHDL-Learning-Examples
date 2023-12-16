-- NAND GATE


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity nand2 is
    Port ( in1 : in STD_LOGIC;
           in2 : in STD_LOGIC;
           out1 : out STD_LOGIC);
end nand2;

architecture arc_nand2 of nand2 is

begin
    out1 <= in1 nand in2;

end arc_nand2;


-- NOR GATE 


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity nor2 is
    Port ( in1 : in STD_LOGIC;
           in2 : in STD_LOGIC;
           out1 : out STD_LOGIC);
end nor2;

architecture arc_nor2 of nor2 is

begin
    out1 <= in1 nor in2;

end arc_nor2;


-- XOR GATE


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity xor2 is
    Port ( in1 : in STD_LOGIC;
           in2 : in STD_LOGIC;
           out1 : out STD_LOGIC);
end xor2;

architecture arc_xor2 of xor2 is

begin
    out1 <= in1 xor in2;

end arc_xor2;


-- XNOR GATE


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity xnor2 is
    Port ( in1 : in STD_LOGIC;
           in2 : in STD_LOGIC;
           out1 : out STD_LOGIC);
end xnor2;

architecture arc_xnor2 of xnor2 is

begin
    out1 <= in1 xnor in2;

end arc_xnor2;
