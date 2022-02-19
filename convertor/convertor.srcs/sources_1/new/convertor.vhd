----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/11/2021 12:33:54 PM
-- Design Name: 
-- Module Name: convertor - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity convertor is
    Port ( Hex : in STD_LOGIC_VECTOR(3 DOWNTO 0);
           BCD1 : out  STD_LOGIC_VECTOR(3 DOWNTO 0);
           BCD0 : out  STD_LOGIC_VECTOR(3 DOWNTO 0));
end convertor;

architecture Behavioral of convertor is

begin

process
begin

if Hex<"1010" then
BCD0<=Hex;
BCD1<="0000";
else
BCD1<="0001";
BCD0<=Hex-"1010";
end if;
wait for 10 ns;
end process;

end Behavioral;
