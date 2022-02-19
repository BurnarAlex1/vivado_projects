----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/14/2021 08:31:21 PM
-- Design Name: 
-- Module Name: SRRN - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SRRN is
   generic(n : integer :=4);
    Port ( Clk : in STD_LOGIC;
           D : in STD_LOGIC_VECTOR(n downto 0);
           Sri : in STD_LOGIC;
          
           CE : in STD_LOGIC;
           Rst : in STD_LOGIC;
           Q : inout STD_LOGIC_VECTOR(n downto 0));
end SRRN;

architecture Behavioral of SRRN is

begin
process(Clk)
begin

if rising_edge(Clk) then

if Rst='1' then
Q<=(others =>'0');

 
elsif CE='1' then
Q<=SRI & Q(n downto 1); 

end if;

end if;

end process;

end Behavioral;
