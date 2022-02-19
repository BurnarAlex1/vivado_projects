----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/28/2021 04:49:17 PM
-- Design Name: 
-- Module Name: test_env - Behavioral
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

entity test_env is
    Port ( clk : in STD_LOGIC;
           btn_clk : in STD_LOGIC;
           btn_mpg : in STD_LOGIC;
           --sw : in STD_LOGIC_VECTOR (15 downto 0);
           --led : out STD_LOGIC_VECTOR (15 downto 0);
           enable : in STD_LOGIC;
           led : out STD_LOGIC;
           --an : out STD_LOGIC_VECTOR (3 downto 0);
           --cat : out STD_LOGIC_VECTOR (6 downto 0));
           wen : in std_logic;
           digits : out std_logic_vector (15 downto 0);
           do : out std_logic_vector(15 downto 0));
           
end test_env;

architecture Behavioral of test_env is

--component MPG 
--port(clk,btn :in STD_LOGIC;
--enable :out STD_LOGIC);
--end component;
 --signal semnal: STD_LOGIC_VECTOR (7 downto 0 ) :="00000000";
 --signal enable: std_logic :='0';
--begin
--problema 1---------------
--led <= sw; 
--an <= btn(3 downto 0); 
--cat <= (others=>'0'); 

--problema 3-----------------

--comp1: MPG port map(enable,clk,led(0));
--process(clk)
--begin
--if clk'event AND clk='1' then
  --  if btn=0 then
   -- semnal<=semnal-1;
    --elsif btn = 1 then
    --semnal <= semnal+1 ; 
    --end if ;
    --end if;
    --end process;
    -------------------------------------LAB 3 ------------------------
    
    component MPG 
    port(clk,btn :in STD_LOGIC;
    enable :out STD_LOGIC);
    end component;
    
    type array_type is array (0 to 7) of std_logic_vector(15 downto 0);
    signal array_name: array_type;
    
   
    signal iesire_num : std_logic_vector(7 downto 0);
    signal enable_mpg : std_logic:='0';
    begin
    comp1: MPG port map(clk,btn_mpg,enable_mpg);
    process(clk)
    begin
    if clk'event AND clk='1' AND enable_mpg='1' then
    iesire_num<=iesire_num+1;
    end if;
    end process;
    digits<=array_name(conv_integer(iesire_num));
    
     
     
     -----------------------------------------------------------------------------
    
         
         
         
         
      
         --type reg_array is array (0 to 7) of std_logic_vector(15 downto 0);
         --signal reg_file : reg_array;
         --signal iesire_num : std_logic_vector(3 downto 0);
         --signal wd: std_logic_vector(15 downto 0);
         --signal rd1: std_logic_vector(15 downto 0);
         --signal rd2: std_logic_vector(15 downto 0);
         --begin
         --process(clk)
         --begin
         --if clk'event AND clk='1' then
         --iesire_num<=iesire_num+1;
         --end if;
         --end process;
         --process(clk)
         --begin
         --if rising_edge(clk) then
         --if wen = '1' then
         --reg_file(conv_integer(iesire_num)) <= wd;
         --end if;
         --end if;
         --end process;
         --rd1 <= reg_file(conv_integer(iesire_num));
         --rd2 <= reg_file(conv_integer(iesire_num));
         --wd<=rd1+rd2;
         --digits<=wd;
         ---------------------------------------------------------------------------
         
         
         --type ram_type is array (0 to 255) of std_logic_vector (15 downto 0);
         --signal RAM: ram_type;
         --signal iesire_num :std_logic_vector(7 downto 0);
         --signal iesire_ram :std_logic_vector(15 downto 0);
         
         --begin
         --process(clk)
         --begin
         --if clk'event AND clk='1' then
         --iesire_num<=iesire_num+1;
         --end if;
         --end process;
        -- process (clk)
         --begin
         --if clk'event and clk = '1' then
         --if enable = '1' then
         --iesire_ram <= RAM( conv_integer(iesire_num));
         --end if;
         --end if;
         --end process;
         --do<=iesire_ram(13 downto 0)&"00";
         
         
         
         
end Behavioral;




