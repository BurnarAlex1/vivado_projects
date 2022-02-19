----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/13/2021 02:40:07 PM
-- Design Name: 
-- Module Name: SPI - Behavioral
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

entity SPI is
generic(frecvSclk : INTEGER:= 5000000;
size : INTEGER:= 8); 
    Port ( TXDATA : in STD_LOGIC;
           Start : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Rst : in STD_LOGIC;
           MOSI : out STD_LOGIC;
           MISO : in STD_LOGIC;
           RXDATA : out STD_LOGIC;
           SCLK : out STD_LOGIC;
           SS : out STD_LOGIC;
           TXRDY : out STD_LOGIC;
           RXRDY : out STD_LOGIC);
end SPI;

architecture Behavioral of SPI is
constant frecvClk : INTEGER:= 100000000;
constant frecv2 : INTEGER:= frecvClk/frecvSclk;


signal start_int: std_logic:='0';
signal ret_start: std_logic:='0';
signal LDTXRX: std_logic:='0';
signal SHRXTX: std_logic:='0';
signal sclk_int: std_logic:='0';
signal sclken: std_logic:='0';
signal CEP: std_logic:='0';
signal CEN: std_logic:='0';

signal val: integer:=0;
signal cntbit: integer:=0;
signal sin: std_logic:='0';

type TIP_STARE is (idle,load,tx_rx,bit0,ready);
signal Stare : TIP_STARE;
begin

process(Clk)
begin
if clk'event and clk='1' then
val<=val+1;
end if;
end process;
process(Clk)
begin
if val=5 then
CEP<='1';
SCLK<='1';
elsif val=9 then
CEN<='1';
SCLK<='0';
val<=1;
else 
CEP<='0';
CEN<='0';
end if;
end process;

process(Clk)
begin 
if CEP='1' then
if clk'event and Clk='1' then
Sin<=MISO;
end if;
end if;
end process;

process(Clk)
begin 
if Ret_start='1' then
if Clk'event and Clk='1' then
start_int<=start;
end if;
end if;
end process;

process(clk)
begin
if CEN='1' then
if Clk'event and clk='1' then
if Rst='1' then
Stare<=idle;
else
 case Stare is
 when idle => if start_int='1' then Stare<=load; 
              end if;
 when load => CntBit<=size-1;
              Stare<=tx_rx;
 when tx_rx=> CntBit<=CntBit-1;
              if CntBit=0 then 
              Stare<=bit0;
              end if;
 when bit0 => Stare<=ready;
 when ready => CntBit<=size-1;
               if start_int ='1' then
               stare<=tx_rx;
               else
               stare<=idle;
               end if;
               
  end case;
 end if;
 end if;
 end if;
end process;  
end Behavioral;
