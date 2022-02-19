----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/04/2021 08:37:55 PM
-- Design Name: 
-- Module Name: ALU - Behavioral
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

entity ALU is
    Port ( clk : in STD_LOGIC;
           enable : in STD_LOGIC;
           SW : in STD_LOGIC_VECTOR (7 downto 0);
           digits : inout STD_LOGIC_VECTOR (15 downto 0);
           LED7 : out STD_LOGIC);
end ALU;

architecture Behavioral of ALU is

component MPG 
port(clk,btn :in STD_LOGIC;
enable :out STD_LOGIC);
end component;

signal mpg_enable : STD_LOGIC:='0';
signal iesire_num : STD_LOGIC_VECTOR(1 downto 0):="00";
signal a: STD_LOGIC_VECTOR(15 downto 0):="0000000000000000";
signal b: STD_LOGIC_VECTOR(15 downto 0):="0000000000000000";
signal c: STD_LOGIC_VECTOR(15 downto 0):="0000000000000000";

begin

comp1:MPG port map(clk,enable,mpg_enable);

process(clk)
begin
if clk'event AND clk='1' AND mpg_enable='1' then
iesire_num<=iesire_num+1;
end if;
end process;

process(sw,clk)
begin
a<="000000000000"&sw(3)&sw(2)&sw(1)&sw(0);
b<="000000000000"&sw(7)&sw(6)&sw(5)&sw(4);
c<="00000000"&sw;

case iesire_num is
when "00"=>digits<=a+b;
when "01"=>digits<=a-b;
when "10"=>digits<=c(13 downto 0)&"00";
when "11"=>digits<="00"&c(15 downto 2);
when others =>digits<=a+b;
end case;
if digits="1111111111111111" then
led7<='0';
else
led7<='1';
end if;
end process;


end Behavioral;
