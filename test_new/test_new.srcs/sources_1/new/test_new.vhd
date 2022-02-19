----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/28/2021 11:14:19 PM
-- Design Name: 
-- Module Name: test_new - Behavioral
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

entity test_new is
    Port ( btn : in STD_LOGIC;
           clk : in STD_LOGIC;
           led : out STD_LOGIC_VECTOR (7 downto 0));
end test_new;

architecture Behavioral of test_new is
signal iesire_num : STD_LOGIC_VECTOR(2 downto 0):="000";
signal ce : STD_LOGIC :='0';
component MPG
port (clk, btn : in std_logic;
enable : out std_logic);
end component;

begin

comp1 : MPG port map(clk,btn,ce);

process(clk)
begin
if clk='1' AND clk'event AND ce='1' then
  iesire_num <= iesire_num+1;
end if;
end process;
process(iesire_num)
begin
case iesire_num is
when "000" => led<="10000000";
when "001" => led<="01000000";
when "010" => led<="00100000";
when "011" => led<="00010000";
when "100" => led<="00001000";
when "101" => led<="00000100";
when "110" => led<="00000010";
when "111" => led<="00000001";
end case;

end process;

end Behavioral;
