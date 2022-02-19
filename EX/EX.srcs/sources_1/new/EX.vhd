----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/08/2021 11:33:20 AM
-- Design Name: 
-- Module Name: EX - Behavioral
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity EX is
Port (PCinc : in std_logic_vector(15 downto 0);
      RD1: in std_logic_vector(15 downto 0);
      RD2: in std_logic_vector(15 downto 0);
      EXT_IMM : in std_logic_vector(15 downto 0);
      func : in std_logic_vector(2 downto 0);
      sa : in std_logic;
      ALUSRC : in std_logic;
      ALUOP :in std_logic_vector(2 downto 0);
      BranchAdress : out std_logic_vector(15 downto 0);
      ALURes : out std_logic_vector(15 downto 0);  
      led : out std_logic); 
end EX;

architecture Behavioral of EX is

signal ALUCtrl: std_logic_vector(3 downto 0);
signal res_mux: std_logic_vector(15 downto 0);
signal DIGITS: std_logic_vector(15 downto 0);
begin

process(ALUOp,func)
begin
case ALUOp is 

when "000" => case func is 
                when "000" => ALUCtrl <= "0000"; --add
                when "001" => ALUCtrl <= "0001"; --sub
                when "010" => ALUCtrl <= "0010"; --sll
                when "011" => ALUCtrl <= "0011"; --srl
                when "100" => ALUCtrl <= "0100"; --and
                when "101" => ALUCtrl <= "0101"; --or
                when "110" => ALUCtrl <= "0110"; --xor
                when "111" => ALUCtrl <= "0111"; --sllv
                when others => ALUCtrl <=(others => '0');
                end case;
when "001" => ALUCtrl <= "0000";  --addi
when "010" => ALUCtrl <= "0000";  --lw
when "011" => ALUCtrl <= "0000";  --sw
when "100" => ALUCtrl <= "1111";  --beq
when "101" => ALUCtrl <= "0101";  --ori
when "110" => ALUCtrl <= "0100";  --andi
when others => ALUCtrl <=(others => '0');
end case;      
end process;

process(ALUCtrl,RD1,res_mux,sa)
begin
case ALUCtrl is 
when "0000" => DIGITS <= RD1 + res_mux;
when "0001" => DIGITS <= RD1 - res_mux;
when "0010" => if sa='1' then DIGITS<= res_mux(14 downto 0) & '0'; 
else DIGITS<=res_mux;
end if;

when "0011" => if sa='1' then DIGITS<='0' & res_mux(15 downto 1) ; 
else DIGITS<=RD1; 
end if;

when "0100" => DIGITS <= RD1 and res_mux;
when "0101" => DIGITS <= RD1 or res_mux;
when "1111" =>
if signed(RD1) < signed(res_mux) then
    DIGITS<=X"0001";
else
    DIGITS<=X"0000";
end if;
when "0110" => DIGITS <= RD1 xor res_mux;
when "0111" => if sa='1' then DIGITS<= res_mux(14 downto 0) & '0'; else DIGITS<=res_mux; end if;--sllv---------
when others => DIGITS <=(others => 'X');
end case;      

case DIGITS is
            when X"0000" => led <= '1';
            when others => led <= '0';
        end case;
end process;

process(RD2,Ext_imm,ALUSrc)
begin
if ALUSrc = '1' then
res_mux<=Ext_Imm;
else
res_mux<=RD2;
end if;
end process;

BranchAdress<=PCinc + Ext_imm;
AluRes<=DIGITS;
end Behavioral;
