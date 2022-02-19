----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/24/2021 09:15:03 PM
-- Design Name: 
-- Module Name: sumator_2_biti - Behavioral
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
use IEEE.STD_LOGIC_unsigned.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sumator_2_biti is
    Port ( X : in STD_LOGIC_VECTOR(1 downto 0);
           Y : in STD_LOGIC_VECTOR(1 downto 0);
           Tin : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR(1 downto 0);
           P : out STD_LOGIC;
           G : out STD_LOGIC);
end sumator_2_biti;

architecture Behavioral of sumator_2_biti is
signal  g_dub : STD_LOGIC;
signal  p_dub : STD_LOGIC;
signal trans : std_logic;
begin

g_dub<=X(0) and Y(0);
p_dub<=X(0) or Y(0);
trans<=g_dub or (p_dub and Tin);

S(0)<=X(0) xor Y(0) xor Tin;
S(1)<=X(1) xor Y(1) xor trans;

P<=(X(1) or Y(1)) and ( X(0) or Y(0));
G<=(X(1) and Y(1)) or ((X(1) or Y(1)) and (X(0) and Y(0)));

end Behavioral;
