----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/15/2021 02:47:37 PM
-- Design Name: 
-- Module Name: Booth - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Booth is
   generic(n : integer :=4);
    Port ( Clk : in STD_LOGIC;
           Rst : in STD_LOGIC;
           Start : in STD_LOGIC;
           X : in STD_LOGIC_VECTOR(n downto 0);
           Y : in STD_LOGIC_VECTOR(n downto 0);
           A : inout STD_LOGIC_VECTOR(n downto 0);
           Q : inout STD_LOGIC_VECTOR(n downto 0);
           Q1 : inout STD_LOGIC;
           c : inout integer;
           Term : out STD_LOGIC);
end Booth;

architecture Behavioral of Booth is
type TIP_STARE is (stare_start,init,add,sub,continue,stop);
signal num1 : integer;
signal num2 : integer;
signal Stare : TIP_STARE; 
begin

process(clk)
begin
if Clk'event and clk='1' then
if Rst='1' then
Stare<=stare_start;
else
 case Stare is
 when stare_start => 
 if  start='1' then
 Stare<=init;
 Q<=Y;
 Q1<='0';
 A<=(others => '0');
 C<=n+1;
 end if;
 when init =>
 if Q(0)='0' and Q1='1' then
 stare<=add;
 elsif Q(0)='1' and Q1='0' then
 stare<=sub;
 else
 stare<=continue;
 end if; 
 when add=>
 num1<=to_integer(unsigned(A));
 num2<=to_integer(unsigned(X));
 A<= std_logic_vector(to_unsigned((num1 + num2) , A'length));
 stare<=continue;
 when sub => 
 num1<=to_integer(unsigned(A));
  num2<=to_integer(unsigned(X));
  A<= std_logic_vector(to_unsigned((num1 - num2) , A'length));
 stare<=continue;
 when continue =>
 Q<=A(0) & Q(n downto 1);
 A<=A(n) & A(n downto 1);
 Q1<=Q(0); 
 c<=c-1;
 if c=0 then
 stare<=stop;
 else
 stare<=init;
 end if;
 when stop =>
 term<='1';
 end case;

end if;
end if;

end process;


end Behavioral;
