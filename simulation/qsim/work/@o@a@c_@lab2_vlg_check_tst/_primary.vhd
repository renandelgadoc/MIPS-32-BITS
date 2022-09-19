library verilog;
use verilog.vl_types.all;
entity OAC_Lab2_vlg_check_tst is
    port(
        AInverte        : in     vl_logic;
        BInverte        : in     vl_logic;
        Branch          : in     vl_logic;
        DadosLeitura1   : in     vl_logic_vector(31 downto 0);
        DadosLeitura2   : in     vl_logic_vector(31 downto 0);
        DadosMem        : in     vl_logic_vector(31 downto 0);
        EscreveMem      : in     vl_logic;
        EscreveReg      : in     vl_logic;
        Instrucao       : in     vl_logic_vector(31 downto 0);
        LeMem           : in     vl_logic;
        MemParaReg      : in     vl_logic;
        Op0             : in     vl_logic;
        Op1             : in     vl_logic;
        OpAlu0          : in     vl_logic;
        OpALU1          : in     vl_logic;
        OrigALU         : in     vl_logic;
        RegDst          : in     vl_logic;
        SaidaULA        : in     vl_logic_vector(31 downto 0);
        sampler_rx      : in     vl_logic
    );
end OAC_Lab2_vlg_check_tst;
