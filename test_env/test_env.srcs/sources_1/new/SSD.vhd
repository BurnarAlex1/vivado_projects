----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/04/2021 01:11:21 AM
-- Design Name: 
-- Module Name: SSD - Behavioral
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

entity SSD is
    Port ( clk : in STD_LOGIC;
           input0 : in STD_LOGIC_VECTOR (3 downto 0);
           input1 : in STD_LOGIC_VECTOR (3 downto 0);
           input2 : in STD_LOGIC_VECTOR (3 downto 0);
           input3 : in STD_LOGIC_VECTOR (3 downto 0);
           cat : out STD_LOGIC_VECTOR (6 downto 0);
           an : out STD_LOGIC_VECTOR (3 downto 0));
end SSD;

architecture Behavioral of SSD is
signal iesire_num : STD_LOGIC_VECTOR(15 downto 0):="0000000000000000";
signal intrare_mux : STD_LOGIC_VECTOR(1 downto 0):="00"; 
signal numar: STD_LOGIC_VECTOR(3 downto 0):="0000";
begin
process(clk)
begin
if clk'event AND clk='1' then
iesire_num<=iesire_num+1;
end if;
end process;

process(clk)
begin
  intrare_mux<=iesire_num(15) & iesire_num(14);
  case intrare_mux is
  when "00"=>
  an<="1110";
  numar<=input0;
  when "01"=>an<="1101"; 
  numar<=input1;
  when "10"=>an<="1011";
  numar<=input2;
     
  when "11"=>an<="0111";
  numar<=input3;
  when others =>an<="1110";
    numar<=input0;
  
  end case;
  
  case numar is
       when "0001"=>cat<="1111001";
       when "0010"=>cat<="0100100";
       when "0011"=>cat<="0110000";
       when "0100"=>cat<="0011001";
       when "0101"=>cat<="0010010";
       when "0110"=>cat<="0000010";
       when "0111"=>cat<="1111000";
       when "1000"=>cat<="0000000";
       when "1001"=>cat<="0010000";
       when "1010"=>cat<="0001000";
       when "1011"=>cat<="0000011";
       when "1100"=>cat<="1000110";
       when "1101"=>cat<="0100001";
       when "1110"=>cat<="0000110";
       when "1111"=>cat<="0001110";
       when others=>cat<="1000000";
       end case;
end process;

end Behavioral;
