----------------------------------------------------------
-- 32 bits resettable register                          --
--														--
-- myRISC												--
-- Prof. Max Santana  (2023)                            --
-- CEComp/Univasf                                       --
----------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity rreg32 is
  port(
    load	  : in std_logic;
    clk       : in std_logic;
    rst   	  : in std_logic;
    in_reg32  : in std_logic_vector(31 downto 0);
    out_reg32 : out std_logic_vector(31 downto 0)
  );
end rreg32;

architecture behavior of rreg32 is
begin

  process(clk, rst, load, in_reg32)
  begin
    if (falling_edge(rst)) then
      out_reg32 <= (out_reg32'range => '0');      
	elsif (falling_edge(clk)) then
    	if (load = '1') then
	   	out_reg32 <= in_reg32;
        end if;
	end if;
  end process;

end behavior;