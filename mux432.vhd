----------------------------------------------------------
-- MUX 432              								--
-- myRISC												--
--														--
-- Prof. Max Santana (2023)								--
-- CEComp/Univasf										--
----------------------------------------------------------

library ieee ;
use ieee.std_logic_1164.all;

entity mux432 is
  port(	
    d0, d1, d2, d3 : in std_logic_vector(31 downto 0);
    in_mux432      : in std_logic_vector (1 downto 0);
    out_mux432	   : out std_logic_vector(31 downto 0)
  );
end mux432;

architecture behavior of mux432 is
begin
  out_mux432 <= d0 when in_mux432 = "00" else
  	  			d1 when in_mux432 = "01" else
       			d2 when in_mux432 = "10" else
       			d3 when in_mux432 = "11";
end behavior;