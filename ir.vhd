----------------------------------------------------------
--  IR                   								--
-- myRISC                                               --
-- Prof. Max Santana  (2023)                            --
-- CEComp/Univasf                                       --
----------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std_unsigned.ALL;

entity ir is
  port(
    clk		: in std_logic;
    inst	: in std_logic_vector (31 downto 0);
    op      : out std_logic_vector(5 downto 0);
    rs		: out std_logic_vector(4 downto 0);
    rt		: out std_logic_vector(4 downto 0);
    rd		: out std_logic_vector(4 downto 0);
    funct   : out std_logic_vector(5 downto 0);
    addr	: out std_logic_vector(25 downto 0);
    imm     : out std_logic_vector(15 downto 0);  
    IrWrite : in std_logic
    
  );
end ir;

architecture behavior of ir is

begin
  process(clk, inst)
  begin
    if (falling_edge(clk)) then
	   if (IRWrite = '1') then
       		op		<= inst (31 downto 26);
    		addr	<= inst (25 downto 0);
    		rs		<= inst (25 downto 21);
    		rt		<= inst (20 downto 16);
    		rd		<= inst (15 downto 11);
    		imm		<= inst (15 downto 0);
    		funct	<= inst (5 downto 0);
        end if;
	end if;
  end process;
end behavior;