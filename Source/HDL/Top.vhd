LIBRARY ieee;
use IEEE.std_logic_unsigned.all;
USE ieee.std_logic_1164.all;

Library UNISIM;
use UNISIM.vcomponents.all;


entity Top is
port( clk         : in  std_logic;
      A           : in  std_logic_vector(7 downto 0);
      B           : in  std_logic_vector(7 downto 0);
      Q           : out std_logic_vector(7 downto 0)
      );
end Top;

architecture arch of Top is   

   COMPONENT mult_s8
   PORT( CLK : IN STD_LOGIC;
         A : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
         B : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
         P : OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
   END COMPONENT;
   
begin	

   U_mult_s8 : mult_s8
   PORT MAP(   CLK   => clk,
               A     => A,
               B     => B,
               P     => Q
               );
  
end arch;