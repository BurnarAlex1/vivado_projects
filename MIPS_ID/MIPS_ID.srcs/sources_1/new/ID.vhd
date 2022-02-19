----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/01/2021 11:17:21 AM
-- Design Name: 
-- Module Name: ID - Behavioral
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

entity ID is
    Port (clk : in std_logic;
      RW : in std_logic;
      RegD : in std_logic;
      ExtOp :in std_logic;
      instr : in std_logic_vector(15 downto 0);
      wd : in std_logic_vector(15 downto 0);
      ext_imm : out std_logic_vector(15 downto 0);
      sa : out std_logic;
      func : out std_logic_vector(2 downto 0);
      led1 : out std_logic_vector(15 downto 0);
      led2 : out std_logic_vector(15 downto 0));
      
end ID;

architecture Behavioral of ID is
component Bloc_Reg is
Port ( clk : in STD_LOGIC;
           ra1 : in STD_LOGIC_VECTOR (2 downto 0);
           ra2 : in STD_LOGIC_VECTOR (2 downto 0);
           wa : in STD_LOGIC_VECTOR (2 downto 0);
           wd : in STD_LOGIC_VECTOR (15 downto 0);
           wen : in STD_LOGIC;
           rd1 : out STD_LOGIC_VECTOR (15 downto 0);
           rd2 : out STD_LOGIC_VECTOR (15 downto 0));
end component;

signal mux_rez: STD_LOGIC_VECTOR(2 downto 0);
begin
process(clk)
begin
if clk'event and clk='1' then
  if RegD='1' then
  mux_rez<=instr(6 downto 4);
  else 
  mux_rez<=instr(9 downto 7);
  end if;
end if;
end process;
comp1: Bloc_Reg port map(clk,instr(12 downto 10),instr(9 downto 7),mux_rez,wd,RW,led1,led2);
process(clk)
begin
if ExtOp ='1' then
ext_imm<=instr(15 downto 9)& "111111111";
else 
ext_imm<=instr(15 downto 9) & "000000000";
end if;
end process;
func<=instr(2 downto 0);
sa<=instr(12);
end Behavioral;
