----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/01/2021 01:53:22 PM
-- Design Name: 
-- Module Name: Inmultire_sim - Behavioral
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

entity Inmultire_sim is
--  Port ( );
end Inmultire_sim;

architecture Behavioral of Inmultire_sim is
signal X : STD_LOGIC_VECTOR(7 downto 0);
signal Y : STD_LOGIC_VECTOR(7 downto 0);
signal P : STD_LOGIC_VECTOR(15 downto 0);
constant CLK_PERIOD : TIME := 10 ns;
begin

DUT: entity WORK.InmultireMatriceala port map
(
X=>X,
Y=>Y,
P=>P
);

process 
begin
Y<="00000001";
X<="00000011";
wait for 10ns;
Y<="00000011";
X<="00000011";
wait for 10ns;
Y<="00101111";
X<="00101111";
wait for 10ns;
Y<="11111111";
X<="11111111";
wait for 10ns;
Y<="00000000";
X<="11111111";
wait for 10ns;
end process;

end Behavioral;
