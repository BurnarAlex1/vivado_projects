----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/09/2021 07:02:32 PM
-- Design Name: 
-- Module Name: num4_tb - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity num4_tb is
--  Port ( );
end num4_tb;

architecture Behavioral of num4_tb is
 signal Clk : STD_LOGIC:='0';
 signal Rst : STD_LOGIC:='0';
 signal En : STD_LOGIC:='0';
 signal Num : STD_LOGIC_VECTOR (3 downto 0);
 constant CLK_PERIOD : TIME := 10 ns;
 
begin

DUT: entity WORK.num4 port map
(
Clk=>Clk,
Rst=>Rst,
En=>En,
Num=>Num
);

gen_clk: process
begin
 Clk <= '0';
 wait for (CLK_PERIOD/2);
 Clk <= '1';
 wait for (CLK_PERIOD/2);
end process gen_clk; 

gen_vect_test: process
 variable RezCorect : STD_LOGIC_VECTOR (3 downto 0) :="0000"; -- rezultat asteptat
 variable NrErori : INTEGER := 0; -- numar de erori
 begin
 
 Rst <= '1';
 wait for CLK_PERIOD;
 Rst <= '0';
 wait for CLK_PERIOD;
 En <= '1'; 
 
 
  for i in 0 to 15 loop -- genereaza toate
  if (Num /= RezCorect) then -- verifica
  report "Rezultat asteptat (" & -- rezultatele
  STD_LOGIC'image (RezCorect(3)) &
  STD_LOGIC'image (RezCorect(2)) &
  STD_LOGIC'image (RezCorect(1)) &
 STD_LOGIC'image (RezCorect(0)) &
 ") /= Valoare obtinuta (" &
 STD_LOGIC'image (Num(3)) & STD_LOGIC'image (Num(2)) & STD_LOGIC'image (Num(1)) & STD_LOGIC'image (Num(0)) &
 ") la t = " & TIME'image (now)
  severity ERROR;
  NrErori := NrErori + 1;
  end if;
  RezCorect := RezCorect + 1;
   wait for (CLK_PERIOD);
  end loop;
 report "Testare terminata cu " &
  INTEGER'image (NrErori) & " erori";
  wait;
  end process gen_vect_test;
end Behavioral;
