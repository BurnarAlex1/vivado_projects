----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/24/2021 10:38:13 PM
-- Design Name: 
-- Module Name: sumator_8_biti - Behavioral
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

entity sumator_8_biti is
    Port ( X : in STD_LOGIC_VECTOR(7 downto 0);
           Y : in STD_LOGIC_VECTOR(7 downto 0);
           Tin : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR(7 downto 0);
           Tout : out STD_LOGIC);
end sumator_8_biti;

architecture Behavioral of sumator_8_biti is
signal P1 : STD_LOGIC_VECTOR(7 downto 0);
signal G1 : STD_LOGIC_VECTOR(7 downto 0);
signal trans : std_logic_vector(3 downto 0);

component sumator_2_biti port (X,Y : in std_logic_vector(1 downto 0); Tin : in std_logic;
                     S : out std_logic_vector(1 downto 0); P,G : out std_logic);
                     end component;
begin    

 process(X,Y,Tin,P1,G1,trans)
  begin
  
  trans(0)<=G1(1) or (P1(1) and Tin);
  trans(1)<=G1(3) or (P1(3) and trans(0));
  trans(2)<=G1(5) or (P1(5) and trans(1));
  trans(3)<=G1(7) or (P1(7) and trans(2));
  end process;                   

 C1 : sumator_2_biti port map(
   X(1 downto 0), Y(1 downto 0),Tin, S(1 downto 0),P1(1),G1(1));
 C2 : sumator_2_biti port map(
      X(3 downto 2), Y(3 downto 2),trans(0), S(3 downto 2),P1(3),G1(3));
 C3 : sumator_2_biti port map(
         X(5 downto 4), Y(5 downto 4),trans(1), S(5 downto 4),P1(5),G1(5));
 C4 : sumator_2_biti port map(
            X(7 downto 6), Y(7 downto 6),trans(2), S(7 downto 6),P1(7),G1(7));
   Tout<=trans(3);
          
                           
end Behavioral;
