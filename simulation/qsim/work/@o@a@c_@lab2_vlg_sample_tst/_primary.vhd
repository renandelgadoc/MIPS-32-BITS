library verilog;
use verilog.vl_types.all;
entity OAC_Lab2_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        clk2            : in     vl_logic;
        Endereco        : in     vl_logic_vector(31 downto 0);
        sampler_tx      : out    vl_logic
    );
end OAC_Lab2_vlg_sample_tst;
