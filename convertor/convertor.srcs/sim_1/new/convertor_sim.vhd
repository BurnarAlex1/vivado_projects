----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/11/2021 12:48:57 PM
-- Design Name: 
-- Module Name: convertor_sim - Behavioral
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
use IEEE.STD_LOGIC_ARITH.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity convertor_sim is
--  Port ( );
end convertor_sim;

architecture Behavioral of convertor_sim is
 signal Hex : STD_LOGIC_VECTOR (3 downto 0):="0000";
 signal BCD1 : STD_LOGIC_VECTOR (3 downto 0):="0000";
 signal BCD0 : STD_LOGIC_VECTOR (3 downto 0):="0000";
 
 
begin

DUT: entity WORK.convertor port map
(
BCD1=>BCD1,
BCD0=>BCD0,
Hex=>Hex
);

gen_vect_test: process
 variable RezCorect1 : STD_LOGIC_VECTOR (3 downto 0):="0000"; -- rezultat asteptat
 variable RezCorect0 : STD_LOGIC_VECTOR (3 downto 0):="0000"; -- rezultat asteptat
 variable NrErori : INTEGER := 0; 
 
begin
  for i in 0 to 15 loop -- genereaza toate
  wait for 10 ns;
  Hex <= CONV_STD_LOGIC_VECTOR(i,4);
     
    if i < 10 then
       RezCorect1:= "0000";
       RezCorect0:= CONV_STD_LOGIC_VECTOR(i,4);
       elsif i >= 10 then
       RezCorect1:="0001";
       RezCorect0:= CONV_STD_LOGIC_VECTOR(i-10,4);
      
       end if;
       
  if (BCD1 /= RezCorect1 or BCD0 /= RezCorect0) then -- verifica
  report "Rezultat asteptat ( BCD1 =" & -- rezultatele
  STD_LOGIC'image (RezCorect1(3)) &
  STD_LOGIC'image (RezCorect1(2)) &
  STD_LOGIC'image (RezCorect1(1)) &
 STD_LOGIC'image (RezCorect1(0)) &
 " BCD0 =" & STD_LOGIC'image (RezCorect0(3)) &
  STD_LOGIC'image (RezCorect0(2)) &
  STD_LOGIC'image (RezCorect0(1)) &
 STD_LOGIC'image (RezCorect0(0)) & ") /= Valoare obtinuta (BCD1=" &
 STD_LOGIC'image (BCD1(3)) & STD_LOGIC'image (BCD1(2)) & STD_LOGIC'image (BCD1(1)) & STD_LOGIC'image (BCD1(0)) &
 " BCD0= " & STD_LOGIC'image (BCD0(3)) & STD_LOGIC'image (BCD0(2)) & STD_LOGIC'image (BCD0(1)) & STD_LOGIC'image (BCD0(0)) &")"
  severity ERROR;
   NrErori := NrErori + 1;
   end if;
   end loop;
    report "Testare terminata cu " &
     INTEGER'image (NrErori) & " erori";
     wait;
     end process gen_vect_test;
end Behavioral;
