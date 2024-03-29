library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BCD is
port ( HEXA : in  STD_LOGIC_VECTOR (3 downto 0);
       LED : out STD_LOGIC_VECTOR (6 downto 0));
end BCD ;

architecture Decodificador of BCD is
   begin
       with HEXA select
LED<= "0000001" when "0000",
      "1001111" when "0001",
"0010010" when "0010",
"0000110" when "0011",
"1001100" when "0100",
"0100100" when "0101",
"0100000" when "0110",
"0001110" when "0111",
"0000000" when "1000",
"0001100" when "1001",
"1111111" when others;

end architecture;