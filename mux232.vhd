---------------------------------------------------------------------------------------------
-- MUX 232                                                                                  --
--														                                    --
-- myRISC												                                    --
-- João Pedro											                                    --
-- Prof. Max Santana  (2023)                                                                --
-- CEComp/Univasf                                                                           --
----------------------------------------------------------------------------------------------

library ieee ;
use ieee.std_logic_1164.all;

entity mux232 is
  port(	
    d0, d1 		   : in std_logic_vector(31 downto 0);
    in_mux232      : in std_logic;
    out_mux232	   : out std_logic_vector(31 downto 0)
  );
end mux232;

architecture behavior of mux232 is
begin
  out_mux232 <= d0 when in_mux232 = '0' else d1;
end behavior;