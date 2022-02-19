----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/16/2021 08:09:54 PM
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
entity automat is
 port (Clk : in STD_LOGIC;
 Rst : in STD_LOGIC;
 Hit : in STD_LOGIC;
 Frame : in STD_LOGIC;
 ACT : out STD_LOGIC;
 OE : out STD_LOGIC;
 GO : out STD_LOGIC);
end automat;
architecture automat_stare of automat is
type TIP_STARE is (idle, decode, busy, xfer1, xfer2);
signal Stare : TIP_STARE; 

begin
 proc1: process (Clk)
begin
 if RISING_EDGE (Clk) then
 if (Rst = '1') then
 Stare <= idle;
 else
 case Stare is
 when idle =>
 if (Frame = '1') then
 Stare <= decode;
 else -- else nu este necesar
 Stare <= idle;
end if;
 when decode =>
 if (Hit = '1') then
 Stare <= xfer1;
 else 
 Stare <= busy;
end if;
 when busy =>
 if (Frame = '1') then
 Stare <= idle;
 end if;
 when xfer1 =>
 if (Frame = '1') then
 Stare <= xfer2;
 end if;
  when xfer2 =>
 if (Rst = '1') then
 Stare <= idle;
 end if;
 end case;
 end if;
 end if;
 end process;
 
 proc2: process (Stare)
 begin
  case Stare is
  when idle => OE <= '0'; GO <= '0'; ACT<='0';
 when decode => OE <= '0'; GO <= '0'; ACT<='0';
 when busy => OE <= '0'; GO <= '0'; ACT<='1';
 when xfer1 => OE <= '1'; GO <= '1'; ACT<='1';
 when xfer2 => OE <= '1'; GO <= '0'; ACT<='1';
  end case;
  end process proc2;
 end automat_stare; 
