----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/18/2021 07:43:47 AM
-- Design Name: 
-- Module Name: exercitiu - Behavioral
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

entity exercitiu is
    Port ( clk : in STD_LOGIC;
           number : out STD_LOGIC);
end exercitiu;

architecture Behavioral of exercitiu is
signal extins : std_logic_vector(7 downto 0);
signal DO : std_logic_vector(7 downto 0);
component RAM is
Port ( clk : in STD_LOGIC;
           addr : in STD_LOGIC_VECTOR (2 downto 0);
           DIN : in STD_LOGIC_VECTOR (2 downto 0);
           DO : out STD_LOGIC_VECTOR(7 downto 0));
end component;
begin
comp1: Bloc_Req(clk,WE,DIN,DO);
process(clk)
begin
WE<=WE+1;

end process;
extins<=WE & "00000";

process(SEL,extins,DO)
begin
if SEL='1' then
DOUT<=extins;
else if SEL='0' then 
DOUT<=DO;
end if;
end if;
end process;

end Behavioral;
