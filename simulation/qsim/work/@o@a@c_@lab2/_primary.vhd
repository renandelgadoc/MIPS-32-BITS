library verilog;
use verilog.vl_types.all;
entity OAC_Lab2 is
    port(
        RegDst          : out    vl_logic;
        Instrucao       : out    vl_logic_vector(31 downto 0);
        clk             : in     vl_logic;
        Endereco        : in     vl_logic_vector(31 downto 0);
        OrigALU         : out    vl_logic;
        MemParaReg      : out    vl_logic;
        EscreveReg      : out    vl_logic;
        LeMem           : out    vl_logic;
        EscreveMem      : out    vl_logic;
        Branch          : out    vl_logic;
        OpALU1          : out    vl_logic;
        OpAlu0          : out    vl_logic;
        AInverte        : out    vl_logic;
        BInverte        : out    vl_logic;
        Op1             : out    vl_logic;
        Op0             : out    vl_logic;
        DadosLeitura1   : out    vl_logic_vector(31 downto 0);
        clk2            : in     vl_logic;
        DadosMem        : out    vl_logic_vector(31 downto 0);
        SaidaULA        : out    vl_logic_vector(31 downto 0);
        DadosLeitura2   : out    vl_logic_vector(31 downto 0)
    );
end OAC_Lab2;
