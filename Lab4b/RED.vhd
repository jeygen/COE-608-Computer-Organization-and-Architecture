library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity RED is 
port( RED_in  :   in     std_logic_vector(31 DOWNTO 0);
		RED_out :   out    unsigned(7 DOWNTO 0)


);

end entity;


architecture Behavior of RED is 
begin
	RED_out  <= unsigned (RED_in(7 downto 0));
end Behavior;