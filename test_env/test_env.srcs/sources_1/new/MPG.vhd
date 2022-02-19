----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/28/2021 09:54:46 PM
-- Design Name: 
-- Module Name: MPG - Behavioral
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MPG is
    Port ( clk : in STD_LOGIC;
           btn : in STD_LOGIC;
           enable : out STD_LOGIC);
end MPG;

architecture Behavioral of MPG is
signal iesire_num : STD_LOGIC_VECTOR(15 DOWNTO 0):="0000000000000000";
signal q1: STD_LOGIC:='0';
signal q2: STD_LOGIC:='0';
signal q3:STD_LOGIC:='0';
begin
process(clk)
begin
if clk='1' AND clk'event then
iesire_num <= iesire_num+1;
end if;
end process;

process(clk)
begin
if clk='1' AND clk'event AND iesire_num="1111111111111111" then
q1<=btn;
end if;
end process;

process(clk)
begin
if clk='1' AND clk'event then
q3<=q2;
q2<=q1;
end if;

end process;
enable<= q2 AND not q3;
end Behavioral;
