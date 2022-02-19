----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/18/2021 01:06:56 PM
-- Design Name: 
-- Module Name: automat - Behavioral
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

entity automat is
 port (Clk : in STD_LOGIC;
 Rst : in STD_LOGIC;
 Hit : in STD_LOGIC;
 Frame : in STD_LOGIC;
 ACT : out STD_LOGIC;
 OE : out STD_LOGIC;
 GO : out STD_LOGIC);
end automat;
architecture Behavioral of automat is
signal Stare : STD_LOGIC_VECTOR (3 downto 0);
constant idle : STD_LOGIC_VECTOR (3 downto 0) := "0000";
constant decode : STD_LOGIC_VECTOR (3 downto 0) := "0001";
constant busy : STD_LOGIC_VECTOR (3 downto 0) := "0010";
constant xfer1 : STD_LOGIC_VECTOR (3 downto 0) := "1110";
constant xfer2 : STD_LOGIC_VECTOR (3 downto 0) := "1010";
begin
 tranz_st: process (Clk)
begin
 if RISING_EDGE (Clk) then
 if (Rst = '1') then
 Stare <= idle;
 else
 case Stare is
 when idle => --idle
 if (Frame = '1') then
 Stare <= decode;
 end if; 
 
 when decode => --decode
 if (Hit = '1') then
 Stare <= xfer1;
 else -- RW = '0'
 Stare <= busy;
end if;

 when xfer1 => --xfer1
 if (Frame = '1') then
 Stare <= xfer2;
 end if; 
 
 when busy => --busy
 if (Frame = '1') then
 Stare <= idle;
 end if;
 
 when others => 
 Stare <= idle;
  end case;
  end if;
  end if;
  end process tranz_st;
  OE <= Stare(1);
  GO <= Stare(2); 
  ACT <= Stare(3);


end Behavioral;
