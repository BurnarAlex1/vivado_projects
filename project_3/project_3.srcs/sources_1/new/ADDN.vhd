----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/15/2021 12:31:55 PM
-- Design Name: 
-- Module Name: ADDN - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ADDN is
   generic(n : integer :=4);
    Port ( X : in STD_LOGIC_VECTOR(n downto 0);
           Y : in STD_LOGIC_VECTOR(n downto 0);
           Tin : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR(n downto 0);
           OVF : out STD_LOGIC;
           Tout : out STD_LOGIC);
end ADDN;

architecture Behavioral of ADDN is
signal number : STD_LOGIC_VECTOR(n+1 downto 0);
begin
process(X,Y,Tin)
begin
number<=X+Y+Tin;
end process;
Tout<=number(n+1);
S<=number(n downto 0);

end Behavioral;
