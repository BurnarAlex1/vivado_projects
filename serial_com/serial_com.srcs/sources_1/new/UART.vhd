----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/15/2021 06:34:33 PM
-- Design Name: 
-- Module Name: UART - Behavioral
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

entity UART is
generic( baud_rate: integer :=115200);
Port ( 
signal clk: in std_logic;
signal rst: in std_logic;
signal start: in std_logic;
signal TxData: in std_logic;
signal Tx: out std_logic;
signal TxRdy : out std_logic);
end UART;

architecture Behavioral of UART is
type stari is (ready,load,send,waitbit,shift);
signal shdata : std_logic:='0';
signal lddata : std_logic:='0';
signal stdata : std_logic:='0';
signal Txen : std_logic:='0';
signal st: stari:=ready;
signal tsr: std_logic_vector(9 downto 0);
signal cntbit: integer:=0;
signal cntRate: integer:=0;

constant frecventa: integer:=100000000;
constant t_bit: integer:=frecventa/baud_rate; --nr cicluri ceas
begin
proc_control: process (Clk)
 begin
 if RISING_EDGE (Clk) then
 if (Rst = '1') then
 St <= ready;
 else
 case St is
 when ready =>
 CntRate <= 0;
 CntBit <= 0;
 if (Start = '1') then
 St <= load;
 end if;
 when load =>
 St <= send;
when send =>
 St <= waitbit;
when waitbit =>
 CntRate <= CntRate + 1;
 if (CntRate = T_BIT) then
 CntRate <= 0;
 St <= shift;
 end if;
 when shift =>
 CntBit <= CntBit + 1;
 if (CntBit = 10) then
 St <= ready;
 else
 St <= send;
end if;
 when others =>
 St <= ready;
 end case;
 end if;
 end if;
 end process proc_control;
 
-- Setarea semnalelor de comanda
  LdData <= '1' when St = load else '0';
  ShData <= '1' when St = shift else '0';
  TxEn <= '0' when St = ready or St = load else '1';
 -- Setarea semnalelor de iesire
  Tx <= TSR(0) when TxEn = '1' else '1';
  TxRdy <= '1' when St = ready else '0'; 
  
  proc_reg:process(clk,rst)
  begin
  if rst='1' then
  TSR<=(others=>'0');
  elsif clk='1' and clk'event then
   if lddata='1' and shdata='0' then
   TSR(9)<=txdata;
   elsif lddata='0' and shdata='1' then
   tsr<='0' & tsr(9 downto 1);
   end if;
  end if;
  end process;
end Behavioral;
