library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sum4bits_test is
port (A, B : in std_logic_vector(3 downto 0);
Cin : in std_logic;
Dis_0 : out std_logic_VECTOR (6 downto 0);
Dis_1 : out std_logic_VECTOR (6 downto 0));
end sum4bits_test;

architecture arqsum4t of sum4bits_test is

component BCD 
port ( HEXA : in  STD_LOGIC_VECTOR (3 downto 0);
       LED : out STD_LOGIC_VECTOR (6 downto 0));
end component ;

component full_adder4 
port (A, B : in std_logic_vector(3 downto 0);
Sum : out std_logic_vector(3 downto 0);
Cout : out std_logic);
end component;

component bi_de 
port ( BI : in  STD_LOGIC_VECTOR (4 downto 0);
       DE : out STD_LOGIC_VECTOR (7 downto 0));
end component;

signal BI : std_LOGIC_VECTOR (4 downto 0);
signal DE : std_LOGIC_VECTOR (7 downto 0);
signal dec :std_logic_VECTOR (3 downto 0):=DE(7 downto 4);
signal uni : std_logic_VECTOR (3 downto 0):=DE (3 downto 0);
signal Sum : std_logic_VECTOR (3 downto 0);
Signal Cout : std_logic;


begin

BI<=Cout & Sum;
A10 : full_adder4 port map (A, B, Sum, Cout);
A11 : bi_de port map (BI, DE);
A12 : BCD port map (uni,Dis_0);
A13 : BCD port map (dec,Dis_1);

end arqsum4t;