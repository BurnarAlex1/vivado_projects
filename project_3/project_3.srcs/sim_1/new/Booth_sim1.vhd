----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/15/2021 04:35:28 PM
-- Design Name: 
-- Module Name: Booth_sim1 - Behavioral
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

entity Booth_sim1 is
--  Port ( );
generic(n: integer:=4);
end Booth_sim1;

architecture Behavioral of Booth_sim1 is
signal Clk :  STD_LOGIC:='0';
        signal   Rst :  STD_LOGIC:='0';
        signal   Start :  STD_LOGIC:='0';
        signal   X :  STD_LOGIC_VECTOR(n downto 0);
        signal   Y :  STD_LOGIC_VECTOR(n downto 0);
        signal   A :  STD_LOGIC_VECTOR(n downto 0);
        signal   Q :  STD_LOGIC_VECTOR(n downto 0);
        signal   Q1 :  STD_LOGIC;
        signal c : integer;
        signal   Term :  STD_LOGIC;
        constant CLK_PERIOD : TIME := 10 ns;
begin
gen_clk: process
begin
 Clk <= '0';
 wait for (CLK_PERIOD/2);
 Clk <= '1';
 wait for (CLK_PERIOD/2);
end process gen_clk;

DUT: entity WORK.Booth port map
(
Clk=>Clk,
Rst=>Rst,
Start=>Start,
X=>X,
Y=>Y,
A=>A,
Q=>Q,
Q1=>Q1,
c=>c,
Term=>Term);

process 
begin
Rst<='1';
wait for 10 ns;
Rst<='0';
Y<="00010";
X<="00011";
start<='1';
wait for 10 ns;
start<='0';
wait;
end process;
end Behavioral;
