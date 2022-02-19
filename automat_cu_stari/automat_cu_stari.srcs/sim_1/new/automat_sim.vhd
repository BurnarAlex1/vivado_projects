----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/17/2021 01:09:59 PM
-- Design Name: 
-- Module Name: automat_sim - Behavioral
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

entity automat_sim is
--  Port ( );
end automat_sim;

architecture Behavioral of automat_sim is
signal Clk : STD_LOGIC :='0';
signal Rst : STD_LOGIC :='0';
signal Hit : STD_LOGIC :='0';
signal Frame : STD_LOGIC :='0';
signal ACT : STD_LOGIC;
signal OE : STD_LOGIC;
signal GO : STD_LOGIC;
constant CLK_PERIOD : TIME := 10 ns;
begin

DUT: entity WORK.automat port map
(
Clk=>Clk,
Rst=>Rst,
Hit=>Hit,
Frame=>Frame,
ACT=>ACT,
OE=>OE,
GO=>GO
);
gen_clk: process
begin
 Clk <= '0';
 wait for (CLK_PERIOD/2);
 Clk <= '1';
 wait for (CLK_PERIOD/2);
end process gen_clk;

gen_vect_test: process
 variable RezCorect : STD_LOGIC_VECTOR (2 downto 0):="000"; -- rezultat asteptat
 variable NrErori : INTEGER := 0; -- numar de erori
 begin
 
 Rst <= '1';
 wait for CLK_PERIOD;
 RezCorect:="000";
 if (OE & GO & ACT /= RezCorect) then -- verifica
   report "Rezultat asteptat (" & -- rezultatele
   STD_LOGIC'image (RezCorect(2)) &
   STD_LOGIC'image (RezCorect(1)) &
  STD_LOGIC'image (RezCorect(0)) &
  ") /= Valoare obtinuta (" &
  STD_LOGIC'image (OE) & STD_LOGIC'image (GO) & STD_LOGIC'image (ACT) &
  ") la t = " & TIME'image (now)
   severity ERROR;
   NrErori := NrErori + 1;
   end if;
   
   Rst<='0';--mergem la decode
   Frame<='1';
   wait for CLK_PERIOD;
   RezCorect:="000";
  
   if (OE & GO & ACT /= RezCorect) then -- verifica
      report "Rezultat asteptat (" & -- rezultatele
      STD_LOGIC'image (RezCorect(2)) &
      STD_LOGIC'image (RezCorect(1)) &
     STD_LOGIC'image (RezCorect(0)) &
     ") /= Valoare obtinuta (" &
     STD_LOGIC'image (OE) & STD_LOGIC'image (GO) & STD_LOGIC'image (ACT) &
     ") la t = " & TIME'image (now)
      severity ERROR;
      NrErori := NrErori + 1;
      end if;
      
  Frame<='0';--mergem la busy
  Hit<='0';     
 wait for CLK_PERIOD;
 RezCorect:="001";
  if (OE & GO & ACT /= RezCorect) then -- verifica
      report "Rezultat asteptat (" & -- rezultatele
      STD_LOGIC'image (RezCorect(2)) &
      STD_LOGIC'image (RezCorect(1)) &
     STD_LOGIC'image (RezCorect(0)) &
     ") /= Valoare obtinuta (" &
     STD_LOGIC'image (OE) & STD_LOGIC'image (GO) & STD_LOGIC'image (ACT) &
     ") la t = " & TIME'image (now)
      severity ERROR;
      NrErori := NrErori + 1;
      end if;
     
    Hit<='0';
    Frame<='1';
    wait for CLK_PERIOD;
    RezCorect:="000";  
    if (OE & GO & ACT /= RezCorect) then -- verifica
          report "Rezultat asteptat (" & -- rezultatele
          STD_LOGIC'image (RezCorect(2)) &
          STD_LOGIC'image (RezCorect(1)) &
         STD_LOGIC'image (RezCorect(0)) &
         ") /= Valoare obtinuta (" &
         STD_LOGIC'image (OE) & STD_LOGIC'image (GO) & STD_LOGIC'image (ACT) &
         ") la t = " & TIME'image (now)
          severity ERROR;
          NrErori := NrErori + 1;
          end if;
          
          Rst<='0';--mergem la decode
             Frame<='1';
             wait for CLK_PERIOD;
                RezCorect:="000";
               
                if (OE & GO & ACT /= RezCorect) then -- verifica
                   report "Rezultat asteptat (" & -- rezultatele
                   STD_LOGIC'image (RezCorect(2)) &
                   STD_LOGIC'image (RezCorect(1)) &
                  STD_LOGIC'image (RezCorect(0)) &
                  ") /= Valoare obtinuta (" &
                  STD_LOGIC'image (OE) & STD_LOGIC'image (GO) & STD_LOGIC'image (ACT) &
                  ") la t = " & TIME'image (now)
                   severity ERROR;
                   NrErori := NrErori + 1;
                   end if;
                   
               Frame<='0';--mergem la xfer1
               Hit<='1'; 
               wait for CLK_PERIOD;  
               RezCorect:="111";
                              
                               if (OE & GO & ACT /= RezCorect) then -- verifica
                                  report "Rezultat asteptat (" & -- rezultatele
                                  STD_LOGIC'image (RezCorect(2)) &
                                  STD_LOGIC'image (RezCorect(1)) &
                                 STD_LOGIC'image (RezCorect(0)) &
                                 ") /= Valoare obtinuta (" &
                                 STD_LOGIC'image (OE) & STD_LOGIC'image (GO) & STD_LOGIC'image (ACT) &
                                 ") la t = " & TIME'image (now)
                                  severity ERROR;
                                  NrErori := NrErori + 1;
                                  end if;
                        
                        Frame<='1';--mergem la xfer2
                        Hit<='0';
                        wait for CLK_PERIOD;
                        RezCorect:="101";
                         if (OE & GO & ACT /= RezCorect) then -- verifica
                                                         report "Rezultat asteptat (" & -- rezultatele
                                                         STD_LOGIC'image (RezCorect(2)) &
                                                         STD_LOGIC'image (RezCorect(1)) &
                                                        STD_LOGIC'image (RezCorect(0)) &
                                                        ") /= Valoare obtinuta (" &
                                                        STD_LOGIC'image (OE) & STD_LOGIC'image (GO) & STD_LOGIC'image (ACT) &
                                                        ") la t = " & TIME'image (now)
                                                         severity ERROR;
                                                         NrErori := NrErori + 1;
                                                         end if;
 
 report "Testare terminata cu " &
  INTEGER'image (NrErori) & " erori";
  wait;
  end process gen_vect_test;
end Behavioral;
