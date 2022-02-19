----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/25/2021 08:22:42 PM
-- Design Name: 
-- Module Name: IF - Behavioral
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

entity InstF is
    Port ( clk : in STD_LOGIC;
           jump : in STD_LOGIC;
           PCSrc : in STD_LOGIC;
           enable : in STD_LOGIC;
           reset : in STD_LOGIC;
           Jump_Adress : in STD_LOGIC_VECTOR (15 downto 0);
           Branch_Adress : in STD_LOGIC_VECTOR (15 downto 0);
           Instruction : out STD_LOGIC_VECTOR (15 downto 0);
           pc_rez : out STD_LOGIC_VECTOR (15 downto 0));
end InstF;

architecture Behavioral of InstF is

type reg_array is array (0 to 255) of std_logic_vector(15 downto 0); 
signal ROM : reg_array:=(
    B"001_000_001_0000000",     -- X"2080" -- ADDI $1, $0, 0
    B"001_000_010_0000001",     -- X"2101" -- ADDI $2, $0, 1	
    B"001_000_011_0000000",     -- X"2180" -- ADDI $3, $0, 0	
    B"001_000_100_0000001",     -- X"2201" -- ADDI $4, $0, 1
    B"011_011_001_0000000",     -- X"6C80" -- SW $1, 0($3)
    B"011_100_010_0000000",     -- X"7100" -- SW $2, 0($4)
    B"010_011_001_0000000",     -- X"4C80" -- LW $1, 0($3)
    B"010_100_010_0000000",     -- X"5100" -- LW $2, 0($4)
    B"000_001_010_101_0_000",   -- X"0550" -- ADD $5, $1, $2
    B"000_000_010_001_0_000",   -- X"0110" -- ADD $1, $0, $2
    B"000_000_101_010_0_000",   -- X"02A0" -- ADD $2, $0, $5
    B"111_0000000001000",       -- X"E008" -- J 8

    others => X"0000");
signal PC_out : std_logic_vector(15 downto 0);
signal MUX_out : std_logic_vector(15 downto 0);
signal MUX2_out : std_logic_vector(15 downto 0);
signal Aux_sgn : std_logic_vector(15 downto 0);
signal NextAddr : std_logic_vector(15 downto 0);

begin
process(clk)
begin
if clk'event and clk='1' then
 if reset='1' then
   pc_out<=(others=>'0');
   elsif enable='1' then
    PC_out<=MUX_out;
  end if;
 end if;
end process;

Instruction <= ROM(conv_integer(PC_out(7 downto 0)));

process
begin
case jump is
 when '1'=>MUX_out<=Jump_Adress;
 when others=>MUX_OUT<=MUX2_out;
 end case;
end process;
MUX2_OUT<=PC_out+1;
pc_rez<=MUX2_OUT;
process(PCSrc,MUX2_OUT,Branch_Adress)
begin
case PCSrc is
 when '1'=>Aux_sgn<=Branch_Adress;
 when others=>Aux_sgn<=MUX2_out;
 
 end case;
end process;

process(jump,Aux_sgn,Jump_Adress)
begin
case Jump is
when '1' =>NextAddr<=Jump_Adress;
when others => NextAddr<=Aux_sgn;
end case;

end process;

end Behavioral;
