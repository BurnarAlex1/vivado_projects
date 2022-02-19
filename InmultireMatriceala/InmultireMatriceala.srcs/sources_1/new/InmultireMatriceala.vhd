----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/31/2021 05:32:55 PM
-- Design Name: 
-- Module Name: InmultireMatriceala - Behavioral
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

entity InmultireMatriceala is
    Port ( X : in STD_LOGIC_VECTOR(7 downto 0);
           Y : in STD_LOGIC_VECTOR(7 downto 0);
           P : out STD_LOGIC_VECTOR(15 downto 0));
end InmultireMatriceala;



architecture Behavioral of InmultireMatriceala is
type table1 is array (7 downto 0) of STD_LOGIC_VECTOR(7 downto 0);
type table2 is array (8 downto 0) of STD_LOGIC_VECTOR(8 downto 0);
signal PP: table1;
signal S: table2;
signal T: table2;

component SumatorElementar port (X,Y,Tin : in std_logic;
                     S,Tout : out std_logic);
                     end component;
begin 
--------------------------------generam valori
PP(0)(0)<=X(0) and Y(0);
S(0)(0)<=X(0) and Y(0);
S(0)(8)<='0';
T(0)(0)<='0';
T(1)(0)<='0';
T(2)(0)<='0';
T(3)(0)<='0';
T(4)(0)<='0';
T(5)(0)<='0';
T(6)(0)<='0';
            gen1: for i in 0 to 7 generate
             PP(0)(i)<=X(i) and Y(0); --
             PP(1)(i)<=X(i) and Y(1);--
             S(0)(i)<=x(i) and Y(0); --
             
             end generate;
             
            gen2: for i in 0 to 7 generate
            PP(2)(i)<=X(i) and Y(2);
            end generate;
            
            gen3: for i in 0 to 7 generate
            PP(3)(i)<=X(i) and Y(3);       
            end generate;
            
            gen4: for i in 0 to 7 generate
                        PP(4)(i)<=X(i) and Y(4);       
                        end generate;
            gen5: for i in 0 to 7 generate
                                    PP(5)(i)<=X(i) and Y(5);       
                                    end generate;
            gen6: for i in 0 to 7 generate
                                                PP(6)(i)<=X(i) and Y(6);       
                                                end generate;
            gen7: for i in 0 to 7 generate
                                                            PP(7)(i)<=X(i) and Y(7);       
                                                            end generate;                                                                        
            
---------------------------------------------------------------generam componente
genc1: for i in 0 to 6 generate
C1 : SumatorElementar port map(
    PP(1)(i), PP(0)(i+1),T(0)(i), S(1)(i),T(0)(i+1));
        end generate;
C2 : SumatorElementar port map(
                    PP(1)(7), S(0)(8),T(0)(7), S(1)(7),T(0)(8)); --ultimul SE din prima linie

genc2: for i in 0 to 6 generate
C3 : SumatorElementar port map(
    PP(2)(i), S(1)(i+1),T(1)(i), S(2)(i),T(1)(i+1));
        end generate;
C4 : SumatorElementar port map(
                    PP(2)(7), T(0)(8),T(1)(7), S(2)(7),T(1)(8));   

genc3: for i in 0 to 6 generate
C5 : SumatorElementar port map(
    PP(3)(i), S(2)(i+1),T(2)(i), S(3)(i),T(2)(i+1));
        end generate;
C6 : SumatorElementar port map(
                    PP(3)(7), T(1)(8),T(2)(7), S(3)(7),T(2)(8));
                    
genc4: for i in 0 to 6 generate
                    C7 : SumatorElementar port map(
                    PP(4)(i), S(3)(i+1),T(3)(i), S(4)(i),T(3)(i+1));
                            end generate;
                    C8 : SumatorElementar port map(
                    PP(4)(7), T(2)(8),T(3)(7), S(4)(7),T(3)(8));                    
genc5: for i in 0 to 6 generate
                    C9 : SumatorElementar port map(
                    PP(5)(i), S(4)(i+1),T(4)(i), S(5)(i),T(4)(i+1));
                 end generate;
                    C10 : SumatorElementar port map(
                    PP(5)(7), T(3)(8),T(4)(7), S(5)(7),T(4)(8));
genc6: for i in 0 to 6 generate
                    C11 : SumatorElementar port map(
                    PP(6)(i), S(5)(i+1),T(5)(i), S(6)(i),T(5)(i+1));
                          end generate;
                    C12 : SumatorElementar port map(
                    PP(6)(7), T(4)(8),T(5)(7), S(6)(7),T(5)(8));
genc7: for i in 0 to 6 generate
                    C13 : SumatorElementar port map(
                    PP(7)(i), S(6)(i+1),T(6)(i), S(7)(i),T(6)(i+1));
                                     end generate;
                    C14 : SumatorElementar port map(
                    PP(7)(7), T(5)(8),T(6)(7), S(7)(7),S(7)(8));
                    
genExit: for i in 0 to 7 generate
P(i)<=S(i)(0);
end generate;
genExit2: for i in 1 to 8 generate
P(i+7)<=S(7)(i);
end generate;                                                              
                                                                               
end Behavioral;
