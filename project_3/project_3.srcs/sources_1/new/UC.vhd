----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/15/2021 01:11:15 PM
-- Design Name: 
-- Module Name: UC - Behavioral
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

entity UC is
generic(n : integer:=4);
    Port ( Clk : in STD_LOGIC;
           Rst : in STD_LOGIC;
           Start : in STD_LOGIC;
           Q0 : inout STD_LOGIC;
           Q1 : inout STD_LOGIC;
           Term : out STD_LOGIC;
           LoadB : out std_logic;
           LoadQ : out std_logic;
           LoadA : out std_logic;
           LOADN : out std_logic;
           SUBB : out std_logic;
           ADDB : out std_logic);
end UC;

architecture Behavioral of UC is

begin
process(Clk)
begin

           LoadB<='0';
           LoadQ<='0';
           LoadA<='0';
           LOADN<='0';
           SUBB<='0';
           ADDB<='0';
if start ='1'then
LoadB<='1';
LoadQ<='1';
Q1<='0';
LoadA<='1';
LOADN<='1';
end if;
if Q0='1' and Q1  ='0' then
SUBB<='1';
elsif Q0='0' and Q1='1' then
ADDB<='1';
end if;
term<='1';
end process;
end Behavioral;
