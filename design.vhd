----------------------------------------------------------
-- Design												--
-- myRISC												--
--														--
-- Prof. Max Santana (2023)								--
-- CEComp/Univasf										--
----------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

entity design is
	port(
      clk		 : in std_logic;
      rst		 : in std_logic;
      state		 : out std_logic_vector(3 downto 0)

    );
end design;

architecture behavior of design is

	signal wireMemDr,
    wireIMMEXT,
    wireAluOut,
    WireOutA,
    WireOutB,
    wirePCplus4,
    wireJumpAddr,
    wireResult,
    wireInst :std_logic_vector(31 downto 0);
    
    signal wireAddr	: std_logic_vector(25 downto 0);

    signal WireIMM : std_logic_vector(15 downto 0);

    signal wireOP,
    wireFunct : std_logic_vector(5 downto 0);

    signal wireRS,
    wireRT,
    wireRD : std_logic_vector(4 downto 0);

    
    signal WirePCSOURCE,
    WireALUOP,
    WireALUSRCB : std_logic_vector(1 downto 0);
    
    signal WireBRANCH,
    WirePCWRITE,
    WireMEMWRITE,
    WireMEMTOREG,
    WireIRWRITE,
    WireALUSRCA,
    WireREGWRITE,
    WireREGDST,
    WireZERO : std_logic;
begin
     CTRL: entity work.control port map(
     	clk			=> clk,
    	rst			=> rst,
    	op			=> wireOP,
    	branch		=> wireBRANCH,
    	PCWrite		=> wirePCWRITE,
    	memWrite	=> wireMEMWRITE,
    	memToReg	=> wireMEMTOREG,
    	IRWrite		=> wireIRWRITE,
    	PCSource	=> wirePCSOURCE,
    	aluOp		=> wireALUOP, 
    	aluSrcA		=> wireALUSRCA,
    	aluSrcB		=> wireALUSRCB,
    	regWrite	=> wireREGWRITE,
    	regDst		=> wireREGDST,
    	state		=> state
     );
     
     DECODE: entity work.decoder port map(
     	clk			=> clk,
        rst			=> rst,
    	regDst		=> wireREGDST,
    	memToReg	=> wireMEMTOREG,
    	regWrite	=> wireREGWRITE,
    	rs			=> wireRS,
    	rt			=> wireRT,
    	rd			=> wireRD,
    	imm			=> wireIMM,
    	memDR		=> wireMemDr,
        immExt		=> wireIMMEXT,
    	aluOut		=> wireAluOut,
    	outA		=> wireOutA,
    	outB		=> wireOutB
     
     );
     
     EXECUTE: entity work.execute port map (
    	clk			=> clk,
    	aluSrcA		=> wireALUSRCA,
        aluSrcB		=> wireALUSRCB,
    	aluOp		=> wireALUOP,
        funct		=> wireFUNCT,
        addr		=> wireAddr,
        immExt		=> wireIMMEXT,
    	outA		=> wireOutA,
        outB		=> wireOutB,
        PCplus4		=> wirePCplus4,
        zero		=> wireZERO,
        result		=> wireResult,
        aluOut		=> wireAluOut,
        jumpAddr	=> wireJumpAddr
    );
    FETCH: entity work.fetch port map (
    	clk			=> clk,
    	rst			=> rst,
        PCSource	=> wirePCSOURCE,
        branch		=> wireBRANCH,
        PCWrite		=> wirePCWRITE,
        zero		=> wireZERO,
        result		=> wireResult,
        aluOut		=> wireAluOut,
        jumpAddr	=> wireJumpAddr,
        inst		=> wireInst,
        PCplus4		=> wirePCplus4
	);
    IR: entity work.ir port map (
    	clk			=> clk,
    	IRWrite		=> wireIRWRITE,
    	inst		=> wireInst,
    	op			=> wireOP,
    	addr		=> wireAddr,
    	rs			=> wireRS,
    	rt			=> wireRT,
    	rd			=> wireRD,
    	imm			=> wireImm,
    	funct		=> wireFunct
     );
     MEMORYACCESS: entity work.memoryAccess port map(
    	clk			=> clk,
    	memWrite	=> wireMEMWRITE,
        outB		=> wireOutB,
    	aluOut		=> wireAluOut,
    	memDR		=> wireMemDr
    );

end architecture behavior;