----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/17/2021 05:47:32 PM
-- Design Name: 
-- Module Name: RAM - Behavioral
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

entity RAM is
    Port ( clk : in STD_LOGIC;
           en : in STD_LOGIC;
           MW : in std_logic;
           ALUResIn : in STD_LOGIC_VECTOR (15 downto 0);
           RD2 : in STD_LOGIC_VECTOR (15 downto 0);
           MemData : out STD_LOGIC_VECTOR (15 downto 0);
           ALUResOut : out STD_LOGIC_VECTOR(15 downto 0));
end RAM;

architecture Behavioral of RAM is
     type ram_type is array (0 to 31) of std_logic_vector (15 downto 0);
     signal RAM: ram_type:=(
      X"000A",
        X"000B",
        X"000C",
        X"000D",
        X"000E",
        X"000F",
        X"0009",
        X"0008",
        
        others => X"0000");
    begin
    process (clk)
    begin
    if clk'event and clk = '1' then
       if en = '1' then  
              RAM(conv_integer(ALUResIn(4 downto 0))) <= RD2;        
       end if;
    end if;
  end process;
        MemData <= RAM( conv_integer(ALUResIn(4 downto 0)));
        ALUResOut<=ALUResIn;
end Behavioral;
