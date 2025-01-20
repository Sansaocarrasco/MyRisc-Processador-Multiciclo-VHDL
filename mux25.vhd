----------------------------------------------------------
-- MUX 25               								--
-- myRISC												--
--														--
-- Prof. Max Santana (2023)								--
-- CEComp/Univasf										--
----------------------------------------------------------

library ieee ;
use ieee.std_logic_1164.all;

entity mux25 is
  port(	
    d0, d1 		   : in std_logic_vector(4 downto 0);
    in_mux25       : in std_logic;
    out_mux25	   : out std_logic_vector(4 downto 0)
  );
end mux25;

architecture behavior of mux25 is
begin
  out_mux25 <= d0 when in_mux25 = '0' else d1;
end behavior;