----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/31/2021 05:25:06 PM
-- Design Name: 
-- Module Name: SumatorElementar - Behavioral
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

entity SumatorElementar is
    Port ( X : in STD_LOGIC;
           Y : in STD_LOGIC;
           Tin : in STD_LOGIC;
           S : out STD_LOGIC;
           Tout : out STD_LOGIC);
end SumatorElementar;

architecture Behavioral of SumatorElementar is

begin
S<=X xor Y xor Tin;
Tout<=(X and Y) or ((X or Y) and Tin);


end Behavioral;
