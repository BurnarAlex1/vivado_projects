----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/25/2021 01:12:52 PM
-- Design Name: 
-- Module Name: numarator_sim - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sumator_sim is
--  Port ( );
end sumator_sim;

architecture Behavioral of sumator_sim is
signal X : STD_LOGIC_VECTOR(7 downto 0);
signal Y : STD_LOGIC_VECTOR(7 downto 0);
signal Tin : STD_LOGIC;
signal S : STD_LOGIC_VECTOR(7 downto 0);
signal Tout : STD_LOGIC;
constant CLK_PERIOD : TIME := 10 ns;
begin

DUT: entity WORK.sumator_8_biti port map
(
X=>X,
Y=>Y,
Tin=>Tin,
S=>S,
Tout=>Tout
);

process 
begin
Tin<='0';
Y<="00000000";
X<="00000000";
wait for 10ns;
Tin<='0';
Y<="00000001";
X<="00000001";
wait for 10ns;
Tin<='0';
Y<="10000000";
X<="10000000";
wait for 10ns;
Tin<='0';
Y<="11111111";
X<="11111111";
wait for 10ns;
Tin<='0';
Y<="00001111";
X<="00001111";
wait for 10ns;
Tin<='0';
Y<="00010001";
X<="00000111";
wait for 10ns;
end process;

end Behavioral;
