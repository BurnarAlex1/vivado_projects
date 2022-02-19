----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/09/2022 05:21:12 PM
-- Design Name: 
-- Module Name: ALU_main - Behavioral
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
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU_main is
    Port ( clk: in STD_LOGIC;
           rst: in STD_LOGIC;
           nr1 : in STD_LOGIC_VECTOR(3 downto 0);
           nr2 : in STD_LOGIC_VECTOR(3 downto 0);
           sel : in STD_LOGIC_VECTOR(1 downto 0);
           An   : out STD_LOGIC_VECTOR (7 downto 0);
           Seg  : out STD_LOGIC_VECTOR (6 downto 0)
           );
end ALU_main;

architecture Behavioral of ALU_main is
signal number1: integer;
signal number2: integer;
signal rez: integer;
signal rez_binary: STD_LOGIC_VECTOR(7 downto 0);
signal Digit1      : STD_LOGIC_VECTOR (6 downto 0) := (others => '0');
signal Digit2      : STD_LOGIC_VECTOR (6 downto 0) := (others => '0');
signal Digit3      : STD_LOGIC_VECTOR (6 downto 0) := (others => '0');
signal Digit4      : STD_LOGIC_VECTOR (6 downto 0) := (others => '0');
signal LedSel      : STD_LOGIC_VECTOR (1 downto 0) := "00";
signal Data : STD_LOGIC_VECTOR(15 downto 0);

begin

number1<=conv_integer(nr1);
number2<=conv_integer(nr2);
process(nr1,nr2,sel)

begin

case(sel) is
  when "00" => rez<=number1+number2;
  when "01" => rez<=number1-number2;
  when "10" => rez<=number1*number2;
  when "11" => rez<=number1/number2;
  when others => rez<=0;
end case;  

 rez_binary <= std_logic_vector(to_unsigned(rez, rez_binary'length));
 Data   <= nr1&nr2&rez_binary;
 
 end process;
 
 displ7seg: entity WORK.displ7seg port map (
                      Clk => Clk,
                      Rst => Rst,
                      Data => Data,
                      An => An,
                      Seg => Seg);
                       
end Behavioral;
