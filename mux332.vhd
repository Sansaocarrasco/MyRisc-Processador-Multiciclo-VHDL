----------------------------------------------------------------------------------------------
-- MUX 332                                                                                  --
--														                                    --
-- myRISC												                                    --
-- João Pedro											                                    --
-- Prof. Max Santana  (2023)                                                                --
-- CEComp/Univasf                                                                           --
----------------------------------------------------------------------------------------------
library ieee ;
use ieee.std_logic_1164.all;

entity mux332 is
  port(	
    d0, d1, d2	   : in std_logic_vector(31 downto 0);
    sel_mux332    : in std_logic_vector(1 downto 0);
    out_mux332	   : out std_logic_vector(31 downto 0)
  );
end mux332;

architecture behavior of mux332 is
begin
  out_mux332 <= d0 when sel_mux332 = "00" else
  	   d1 when sel_mux332 = "01" else
       d2 when sel_mux332 = "10";
end behavior;