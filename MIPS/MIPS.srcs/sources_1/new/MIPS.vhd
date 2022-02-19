----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/25/2021 08:19:26 PM
-- Design Name: 
-- Module Name: MIPS - Behavioral
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

entity MIPS is
Port (clk : in std_logic;
      btn : in std_logic_vector(4 downto 0);
      sw : in std_logic_vector(15 downto 0);
      led : out std_logic_vector(15 downto 0));
      
end MIPS;

architecture Behavioral of MIPS is
 component MPG is
port ( clk : in STD_LOGIC;
           btn : in STD_LOGIC;
           enable : out STD_LOGIC);
end component;

component SSD is
port(clk:in std_logic;
input0 : in std_logic_vector(3 downto 0);
input1 : in std_logic_vector(3 downto 0);
input2 : in std_logic_vector(3 downto 0);
input3 : in std_logic_vector(3 downto 0);
cat : out std_logic_vector(6 downto 0);
an : out std_logic_vector(3 downto 0));
end component;

component InstF is
port(clk : in STD_LOGIC;
           jump : in STD_LOGIC;
           PCSrc : in STD_LOGIC;
           enable : in STD_LOGIC;
           reset : in STD_LOGIC;
           Jump_Adress : in STD_LOGIC_VECTOR (15 downto 0);
           Branch_Adress : in STD_LOGIC_VECTOR (15 downto 0);
           Instruction : out STD_LOGIC_VECTOR (15 downto 0);
           pc_rez : out STD_LOGIC_VECTOR (15 downto 0));
           end component;
           
           signal MUX_out: std_logic_vector(15 downto 0);
           signal enable: std_logic;
           signal enable2: std_logic;
           signal cat: std_logic_vector(6 downto 0);
           signal an: std_logic_vector(3 downto 0);
           signal enable3: std_logic;
           signal reset: std_logic;
           signal Jump_Adress : STD_LOGIC_VECTOR (15 downto 0);
           signal Branch_Adress : STD_LOGIC_VECTOR (15 downto 0);
           signal Instruction : STD_LOGIC_VECTOR (15 downto 0);
           signal pc_rez : STD_LOGIC_VECTOR (15 downto 0);
begin
comp1: MPG port map(clk,btn(0),enable);
comp2: MPG port map(clk,btn(1),enable2);
comp3: SSD port map(clk,MUX_out(3 downto 0),MUX_out(7 downto 4),MUX_out(11 downto 8),MUX_out(15 downto 12),cat,an); 
comp4: InstF port map(clk,sw(0),sw(1),enable3,reset,Jump_Adress,Branch_Adress,Instruction,pc_rez);

process
begin
case sw(7) is
when '0'=>MUX_out<=Instruction;
when others=>MUX_out<=pc_rez;
end case;
end process;

end Behavioral;
