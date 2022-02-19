----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/15/2021 06:32:13 PM
-- Design Name: 
-- Module Name: nexys4 - Behavioral
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

entity nexys4 is
--  Port ( );

port (
signal clk: in std_logic;
signal btn: in std_logic;
signal sv: in std_logic_vector(4 downto 0);
signal led: out std_logic_vector(15 downto 0);
signal cat:out std_logic_vector(7 downto 0);
signal an: out std_logic_vector(7 downto 0)
);
end nexys4;

architecture Behavioral of nexys4 is

begin


end Behavioral;
