// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sun Nov 22 09:53:30 2026
// Host        : GilsLaptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/gilst/Documents/ECE520/mult_and_fifo_soc/mult_and_fifo_soc.gen/sources_1/bd/mult_and_fifo_bd_gg/ip/mult_and_fifo_bd_gg_sc_fifo_axi_0_0/mult_and_fifo_bd_gg_sc_fifo_axi_0_0_sim_netlist.v
// Design      : mult_and_fifo_bd_gg_sc_fifo_axi_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_and_fifo_bd_gg_sc_fifo_axi_0_0,sc_fifo_axi_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "sc_fifo_axi_v1_0,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module mult_and_fifo_bd_gg_sc_fifo_axi_0_0
   (s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN mult_and_fifo_bd_gg_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [5:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [5:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 16, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 6, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN mult_and_fifo_bd_gg_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s00_axi_rready;

  wire \<const0> ;
  wire s00_axi_aclk;
  wire [5:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [5:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [28:0]\^s00_axi_rdata ;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rdata[31] = \<const0> ;
  assign s00_axi_rdata[30] = \^s00_axi_rdata [28];
  assign s00_axi_rdata[29] = \<const0> ;
  assign s00_axi_rdata[28] = \^s00_axi_rdata [28];
  assign s00_axi_rdata[27] = \<const0> ;
  assign s00_axi_rdata[26] = \<const0> ;
  assign s00_axi_rdata[25] = \^s00_axi_rdata [28];
  assign s00_axi_rdata[24] = \^s00_axi_rdata [24];
  assign s00_axi_rdata[23] = \<const0> ;
  assign s00_axi_rdata[22] = \<const0> ;
  assign s00_axi_rdata[21] = \<const0> ;
  assign s00_axi_rdata[20] = \^s00_axi_rdata [19];
  assign s00_axi_rdata[19] = \^s00_axi_rdata [19];
  assign s00_axi_rdata[18] = \^s00_axi_rdata [19];
  assign s00_axi_rdata[17] = \^s00_axi_rdata [19];
  assign s00_axi_rdata[16] = \^s00_axi_rdata [19];
  assign s00_axi_rdata[15:0] = \^s00_axi_rdata [15:0];
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  mult_and_fifo_bd_gg_sc_fifo_axi_0_0_sc_fifo_axi_v1_0 inst
       (.S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_WREADY(s00_axi_wready),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[5:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[5:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata({\^s00_axi_rdata [28],\^s00_axi_rdata [24],\^s00_axi_rdata [19],\^s00_axi_rdata [15:0]}),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata[15:0]),
        .s00_axi_wstrb(s00_axi_wstrb[1:0]),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_6,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "blk_mem_gen_0" *) 
(* X_CORE_INFO = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
module mult_and_fifo_bd_gg_sc_fifo_axi_0_0_blk_mem_gen_0
   (clka,
    ena,
    wea,
    addra,
    dina,
    clkb,
    enb,
    addrb,
    doutb);
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [4:0]addra;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [4:0]addrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [15:0]doutb;

  wire [4:0]addra;
  wire [4:0]addrb;
  wire clka;
  wire [15:0]dina;
  wire [15:0]doutb;
  wire ena;
  wire enb;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [15:0]NLW_U0_douta_UNCONNECTED;
  wire [4:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [4:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "5" *) 
  (* C_ADDRB_WIDTH = "5" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "1" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.209099 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "32" *) 
  (* C_READ_DEPTH_B = "32" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "32" *) 
  (* C_WRITE_DEPTH_B = "32" *) 
  (* C_WRITE_MODE_A = "READ_FIRST" *) 
  (* C_WRITE_MODE_B = "READ_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  mult_and_fifo_bd_gg_sc_fifo_axi_0_0_blk_mem_gen_v8_4_6 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[15:0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[4:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[4:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule

(* ORIG_REF_NAME = "sc_fifo" *) 
module mult_and_fifo_bd_gg_sc_fifo_axi_0_0_sc_fifo
   (D,
    E,
    \data_count_reg[5]_0 ,
    SR,
    \data_count_reg[5]_1 ,
    read_valid_reg,
    s00_axi_aclk,
    Q,
    fifo_write_enable,
    read_valid_reg_0,
    slv_reg1,
    s00_axi_aresetn,
    read_valid_reg_1);
  output [15:0]D;
  output [0:0]E;
  output [5:0]\data_count_reg[5]_0 ;
  output [0:0]SR;
  output [3:0]\data_count_reg[5]_1 ;
  output read_valid_reg;
  input s00_axi_aclk;
  input [15:0]Q;
  input fifo_write_enable;
  input read_valid_reg_0;
  input [0:0]slv_reg1;
  input s00_axi_aresetn;
  input [0:0]read_valid_reg_1;

  wire [15:0]D;
  wire [0:0]E;
  wire [15:0]Q;
  wire [0:0]SR;
  wire base_valid_i_1_n_0;
  wire bram_insta_i_3_n_0;
  wire \data_count[0]_i_1_n_0 ;
  wire \data_count[1]_i_1_n_0 ;
  wire \data_count[2]_i_1_n_0 ;
  wire \data_count[3]_i_1_n_0 ;
  wire \data_count[4]_i_1_n_0 ;
  wire \data_count[5]_i_1_n_0 ;
  wire \data_count[5]_i_2_n_0 ;
  wire \data_count[5]_i_3_n_0 ;
  wire \data_count[5]_i_4_n_0 ;
  wire \data_count[5]_i_5_n_0 ;
  wire [5:0]\data_count_reg[5]_0 ;
  wire [3:0]\data_count_reg[5]_1 ;
  wire enb;
  wire fifo_write_enable;
  wire [4:0]p_0_in;
  wire [4:0]p_0_in__0;
  wire [4:0]read_ptr_reg;
  wire read_valid_reg;
  wire read_valid_reg_0;
  wire [0:0]read_valid_reg_1;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire [0:0]slv_reg1;
  wire wea;
  wire [4:0]write_ptr_reg;

  LUT3 #(
    .INIT(8'h08)) 
    base_valid_i_1
       (.I0(enb),
        .I1(s00_axi_aresetn),
        .I2(slv_reg1),
        .O(base_valid_i_1_n_0));
  FDRE base_valid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(base_valid_i_1_n_0),
        .Q(E),
        .R(1'b0));
  (* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_6,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
  mult_and_fifo_bd_gg_sc_fifo_axi_0_0_blk_mem_gen_0 bram_insta
       (.addra(write_ptr_reg),
        .addrb(read_ptr_reg),
        .clka(s00_axi_aclk),
        .clkb(1'b0),
        .dina(Q),
        .doutb(D),
        .ena(wea),
        .enb(enb),
        .wea(1'b0));
  LUT6 #(
    .INIT(64'h0000BF0000000000)) 
    bram_insta_i_1
       (.I0(\data_count_reg[5]_0 [4]),
        .I1(\data_count_reg[5]_0 [5]),
        .I2(bram_insta_i_3_n_0),
        .I3(fifo_write_enable),
        .I4(slv_reg1),
        .I5(s00_axi_aresetn),
        .O(wea));
  LUT6 #(
    .INIT(64'h0000EF0000000000)) 
    bram_insta_i_2
       (.I0(\data_count_reg[5]_0 [4]),
        .I1(\data_count_reg[5]_0 [5]),
        .I2(bram_insta_i_3_n_0),
        .I3(read_valid_reg_0),
        .I4(slv_reg1),
        .I5(s00_axi_aresetn),
        .O(enb));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    bram_insta_i_3
       (.I0(\data_count_reg[5]_0 [0]),
        .I1(\data_count_reg[5]_0 [1]),
        .I2(\data_count_reg[5]_0 [3]),
        .I3(\data_count_reg[5]_0 [2]),
        .O(bram_insta_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \data_count[0]_i_1 
       (.I0(\data_count_reg[5]_0 [0]),
        .O(\data_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h2DD2)) 
    \data_count[1]_i_1 
       (.I0(enb),
        .I1(wea),
        .I2(\data_count_reg[5]_0 [0]),
        .I3(\data_count_reg[5]_0 [1]),
        .O(\data_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6A6AA96A)) 
    \data_count[2]_i_1 
       (.I0(\data_count_reg[5]_0 [2]),
        .I1(\data_count_reg[5]_0 [0]),
        .I2(\data_count_reg[5]_0 [1]),
        .I3(enb),
        .I4(wea),
        .O(\data_count[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4FFFB000FFFB0004)) 
    \data_count[3]_i_1 
       (.I0(wea),
        .I1(enb),
        .I2(\data_count_reg[5]_0 [1]),
        .I3(\data_count_reg[5]_0 [0]),
        .I4(\data_count_reg[5]_0 [3]),
        .I5(\data_count_reg[5]_0 [2]),
        .O(\data_count[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF8000FFFE0001)) 
    \data_count[4]_i_1 
       (.I0(\data_count_reg[5]_0 [2]),
        .I1(\data_count_reg[5]_0 [0]),
        .I2(\data_count_reg[5]_0 [1]),
        .I3(\data_count[5]_i_4_n_0 ),
        .I4(\data_count_reg[5]_0 [4]),
        .I5(\data_count_reg[5]_0 [3]),
        .O(\data_count[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \data_count[5]_i_1 
       (.I0(wea),
        .I1(enb),
        .O(\data_count[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF7F70808CCFF3300)) 
    \data_count[5]_i_2 
       (.I0(\data_count[5]_i_3_n_0 ),
        .I1(\data_count[5]_i_4_n_0 ),
        .I2(\data_count[5]_i_5_n_0 ),
        .I3(bram_insta_i_3_n_0),
        .I4(\data_count_reg[5]_0 [5]),
        .I5(\data_count_reg[5]_0 [4]),
        .O(\data_count[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_count[5]_i_3 
       (.I0(\data_count_reg[5]_0 [1]),
        .I1(\data_count_reg[5]_0 [0]),
        .O(\data_count[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEFEFEFEFCFEFFFEF)) 
    \data_count[5]_i_4 
       (.I0(fifo_write_enable),
        .I1(SR),
        .I2(read_valid_reg_0),
        .I3(bram_insta_i_3_n_0),
        .I4(\data_count_reg[5]_0 [5]),
        .I5(\data_count_reg[5]_0 [4]),
        .O(\data_count[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \data_count[5]_i_5 
       (.I0(\data_count_reg[5]_0 [2]),
        .I1(\data_count_reg[5]_0 [3]),
        .O(\data_count[5]_i_5_n_0 ));
  FDRE \data_count_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\data_count[5]_i_1_n_0 ),
        .D(\data_count[0]_i_1_n_0 ),
        .Q(\data_count_reg[5]_0 [0]),
        .R(SR));
  FDRE \data_count_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\data_count[5]_i_1_n_0 ),
        .D(\data_count[1]_i_1_n_0 ),
        .Q(\data_count_reg[5]_0 [1]),
        .R(SR));
  FDRE \data_count_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\data_count[5]_i_1_n_0 ),
        .D(\data_count[2]_i_1_n_0 ),
        .Q(\data_count_reg[5]_0 [2]),
        .R(SR));
  FDRE \data_count_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\data_count[5]_i_1_n_0 ),
        .D(\data_count[3]_i_1_n_0 ),
        .Q(\data_count_reg[5]_0 [3]),
        .R(SR));
  FDRE \data_count_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\data_count[5]_i_1_n_0 ),
        .D(\data_count[4]_i_1_n_0 ),
        .Q(\data_count_reg[5]_0 [4]),
        .R(SR));
  FDRE \data_count_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\data_count[5]_i_1_n_0 ),
        .D(\data_count[5]_i_2_n_0 ),
        .Q(\data_count_reg[5]_0 [5]),
        .R(SR));
  LUT2 #(
    .INIT(4'hB)) 
    \read_data[15]_i_1 
       (.I0(slv_reg1),
        .I1(s00_axi_aresetn),
        .O(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \read_ptr[0]_i_1 
       (.I0(read_ptr_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \read_ptr[1]_i_1 
       (.I0(read_ptr_reg[0]),
        .I1(read_ptr_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \read_ptr[2]_i_1 
       (.I0(read_ptr_reg[2]),
        .I1(read_ptr_reg[1]),
        .I2(read_ptr_reg[0]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \read_ptr[3]_i_1 
       (.I0(read_ptr_reg[3]),
        .I1(read_ptr_reg[0]),
        .I2(read_ptr_reg[1]),
        .I3(read_ptr_reg[2]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \read_ptr[4]_i_1 
       (.I0(read_ptr_reg[4]),
        .I1(read_ptr_reg[2]),
        .I2(read_ptr_reg[1]),
        .I3(read_ptr_reg[0]),
        .I4(read_ptr_reg[3]),
        .O(p_0_in__0[4]));
  FDRE \read_ptr_reg[0] 
       (.C(s00_axi_aclk),
        .CE(enb),
        .D(p_0_in__0[0]),
        .Q(read_ptr_reg[0]),
        .R(SR));
  FDRE \read_ptr_reg[1] 
       (.C(s00_axi_aclk),
        .CE(enb),
        .D(p_0_in__0[1]),
        .Q(read_ptr_reg[1]),
        .R(SR));
  FDRE \read_ptr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(enb),
        .D(p_0_in__0[2]),
        .Q(read_ptr_reg[2]),
        .R(SR));
  FDRE \read_ptr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(enb),
        .D(p_0_in__0[3]),
        .Q(read_ptr_reg[3]),
        .R(SR));
  FDRE \read_ptr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(enb),
        .D(p_0_in__0[4]),
        .Q(read_ptr_reg[4]),
        .R(SR));
  LUT5 #(
    .INIT(32'h0000CE00)) 
    read_valid_i_1
       (.I0(read_valid_reg_1),
        .I1(E),
        .I2(read_valid_reg_0),
        .I3(s00_axi_aresetn),
        .I4(slv_reg1),
        .O(read_valid_reg));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \slv_reg5[0]_i_1 
       (.I0(\data_count_reg[5]_0 [2]),
        .I1(\data_count_reg[5]_0 [3]),
        .I2(\data_count_reg[5]_0 [1]),
        .I3(\data_count_reg[5]_0 [0]),
        .I4(\data_count_reg[5]_0 [5]),
        .I5(\data_count_reg[5]_0 [4]),
        .O(\data_count_reg[5]_1 [0]));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \slv_reg5[1]_i_1 
       (.I0(\data_count_reg[5]_0 [2]),
        .I1(\data_count_reg[5]_0 [3]),
        .I2(\data_count_reg[5]_0 [1]),
        .I3(\data_count_reg[5]_0 [0]),
        .I4(\data_count_reg[5]_0 [5]),
        .I5(\data_count_reg[5]_0 [4]),
        .O(\data_count_reg[5]_1 [1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \slv_reg5[2]_i_1 
       (.I0(\data_count_reg[5]_0 [4]),
        .I1(\data_count_reg[5]_0 [5]),
        .I2(\data_count_reg[5]_0 [1]),
        .I3(\data_count_reg[5]_0 [3]),
        .I4(\data_count_reg[5]_0 [2]),
        .O(\data_count_reg[5]_1 [2]));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \slv_reg5[3]_i_1 
       (.I0(\data_count_reg[5]_0 [5]),
        .I1(\data_count_reg[5]_0 [3]),
        .I2(\data_count_reg[5]_0 [2]),
        .I3(\data_count_reg[5]_0 [4]),
        .I4(\data_count_reg[5]_0 [1]),
        .I5(\data_count_reg[5]_0 [0]),
        .O(\data_count_reg[5]_1 [3]));
  LUT1 #(
    .INIT(2'h1)) 
    \write_ptr[0]_i_1 
       (.I0(write_ptr_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \write_ptr[1]_i_1 
       (.I0(write_ptr_reg[0]),
        .I1(write_ptr_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \write_ptr[2]_i_1 
       (.I0(write_ptr_reg[2]),
        .I1(write_ptr_reg[1]),
        .I2(write_ptr_reg[0]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \write_ptr[3]_i_1 
       (.I0(write_ptr_reg[3]),
        .I1(write_ptr_reg[0]),
        .I2(write_ptr_reg[1]),
        .I3(write_ptr_reg[2]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \write_ptr[4]_i_1 
       (.I0(write_ptr_reg[4]),
        .I1(write_ptr_reg[2]),
        .I2(write_ptr_reg[1]),
        .I3(write_ptr_reg[0]),
        .I4(write_ptr_reg[3]),
        .O(p_0_in[4]));
  FDRE \write_ptr_reg[0] 
       (.C(s00_axi_aclk),
        .CE(wea),
        .D(p_0_in[0]),
        .Q(write_ptr_reg[0]),
        .R(SR));
  FDRE \write_ptr_reg[1] 
       (.C(s00_axi_aclk),
        .CE(wea),
        .D(p_0_in[1]),
        .Q(write_ptr_reg[1]),
        .R(SR));
  FDRE \write_ptr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(wea),
        .D(p_0_in[2]),
        .Q(write_ptr_reg[2]),
        .R(SR));
  FDRE \write_ptr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(wea),
        .D(p_0_in[3]),
        .Q(write_ptr_reg[3]),
        .R(SR));
  FDRE \write_ptr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(wea),
        .D(p_0_in[4]),
        .Q(write_ptr_reg[4]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "sc_fifo_axi_v1_0" *) 
module mult_and_fifo_bd_gg_sc_fifo_axi_0_0_sc_fifo_axi_v1_0
   (S_AXI_WREADY,
    S_AXI_AWREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_araddr,
    s00_axi_wdata,
    s00_axi_aresetn,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_wstrb,
    s00_axi_arvalid,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output S_AXI_ARREADY;
  output [18:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input s00_axi_aclk;
  input [3:0]s00_axi_awaddr;
  input [3:0]s00_axi_araddr;
  input [15:0]s00_axi_wdata;
  input s00_axi_aresetn;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input [1:0]s00_axi_wstrb;
  input s00_axi_arvalid;
  input s00_axi_bready;
  input s00_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [18:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [15:0]s00_axi_wdata;
  wire [1:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  mult_and_fifo_bd_gg_sc_fifo_axi_0_0_sc_fifo_axi_v1_0_S00_AXI sc_fifo_axi_v1_0_S00_AXI_inst
       (.S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_WREADY(S_AXI_WREADY),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "sc_fifo_axi_v1_0_S00_AXI" *) 
module mult_and_fifo_bd_gg_sc_fifo_axi_0_0_sc_fifo_axi_v1_0_S00_AXI
   (S_AXI_WREADY,
    S_AXI_AWREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_araddr,
    s00_axi_wdata,
    s00_axi_aresetn,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_wstrb,
    s00_axi_arvalid,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output S_AXI_ARREADY;
  output [18:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input s00_axi_aclk;
  input [3:0]s00_axi_awaddr;
  input [3:0]s00_axi_araddr;
  input [15:0]s00_axi_wdata;
  input s00_axi_aresetn;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input [1:0]s00_axi_wstrb;
  input s00_axi_arvalid;
  input s00_axi_bready;
  input s00_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire almost_empty;
  wire almost_full;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire axi_arready0;
  wire axi_awready0;
  wire axi_awready_i_1_n_0;
  wire axi_bvalid_i_1_n_0;
  wire \axi_rdata[0]_i_2_n_0 ;
  wire \axi_rdata[2]_i_2_n_0 ;
  wire \axi_rdata[3]_i_2_n_0 ;
  wire \axi_rdata[4]_i_2_n_0 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire [5:0]data_count_reg;
  wire [15:0]doutb;
  wire fifo_empty;
  wire fifo_full;
  wire fifo_srst;
  wire fifo_valid;
  wire fifo_write_enable;
  wire fifo_write_enable_i_1_n_0;
  wire [3:0]p_0_in_0;
  wire [15:0]read_data;
  wire read_valid;
  wire [30:0]reg_data_out;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [18:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [15:0]s00_axi_wdata;
  wire [1:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire sc_fifo_inst_n_28;
  wire [3:0]sel0;
  wire \slv_reg0_reg_n_0_[30] ;
  wire [0:0]slv_reg1;
  wire \slv_reg1[0]_i_1_n_0 ;
  wire \slv_reg1[0]_i_2_n_0 ;
  wire [15:0]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[15]_i_2_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire \slv_reg3[0]_i_1_n_0 ;
  wire \slv_reg3_reg_n_0_[0] ;
  wire \slv_reg4_reg_n_0_[0] ;
  wire \slv_reg4_reg_n_0_[10] ;
  wire \slv_reg4_reg_n_0_[11] ;
  wire \slv_reg4_reg_n_0_[12] ;
  wire \slv_reg4_reg_n_0_[13] ;
  wire \slv_reg4_reg_n_0_[14] ;
  wire \slv_reg4_reg_n_0_[15] ;
  wire \slv_reg4_reg_n_0_[1] ;
  wire \slv_reg4_reg_n_0_[2] ;
  wire \slv_reg4_reg_n_0_[3] ;
  wire \slv_reg4_reg_n_0_[4] ;
  wire \slv_reg4_reg_n_0_[5] ;
  wire \slv_reg4_reg_n_0_[6] ;
  wire \slv_reg4_reg_n_0_[7] ;
  wire \slv_reg4_reg_n_0_[8] ;
  wire \slv_reg4_reg_n_0_[9] ;
  wire \slv_reg5_reg_n_0_[0] ;
  wire \slv_reg5_reg_n_0_[1] ;
  wire \slv_reg5_reg_n_0_[2] ;
  wire \slv_reg5_reg_n_0_[3] ;
  wire \slv_reg5_reg_n_0_[4] ;
  wire \slv_reg6_reg_n_0_[0] ;
  wire \slv_reg6_reg_n_0_[1] ;
  wire \slv_reg6_reg_n_0_[2] ;
  wire \slv_reg6_reg_n_0_[3] ;
  wire \slv_reg6_reg_n_0_[4] ;
  wire \slv_reg6_reg_n_0_[5] ;
  wire slv_reg_rden__0;

  LUT6 #(
    .INIT(64'hFFFF88880FFF8888)) 
    aw_en_i_1
       (.I0(s00_axi_bvalid),
        .I1(s00_axi_bready),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(aw_en_reg_n_0),
        .I5(S_AXI_AWREADY),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(axi_awready_i_1_n_0));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[0]),
        .Q(sel0[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[1]),
        .Q(sel0[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_araddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[2]),
        .Q(sel0[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_araddr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[3]),
        .Q(sel0[3]),
        .R(axi_awready_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[0]),
        .Q(p_0_in_0[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[1]),
        .Q(p_0_in_0[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[2]),
        .Q(p_0_in_0[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[3]),
        .Q(p_0_in_0[3]),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h4000)) 
    axi_awready_i_2
       (.I0(S_AXI_AWREADY),
        .I1(aw_en_reg_n_0),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h7444444444444444)) 
    axi_bvalid_i_1
       (.I0(s00_axi_bready),
        .I1(s00_axi_bvalid),
        .I2(S_AXI_AWREADY),
        .I3(S_AXI_WREADY),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_awvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0C0C00000C0C00A0)) 
    \axi_rdata[0]_i_1 
       (.I0(\slv_reg0_reg_n_0_[30] ),
        .I1(\axi_rdata[0]_i_2_n_0 ),
        .I2(sel0[3]),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .I5(sel0[1]),
        .O(reg_data_out[0]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[0]_i_2 
       (.I0(\slv_reg4_reg_n_0_[0] ),
        .I1(\slv_reg6_reg_n_0_[0] ),
        .I2(\slv_reg5_reg_n_0_[0] ),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .O(\axi_rdata[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \axi_rdata[10]_i_1 
       (.I0(sel0[3]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\slv_reg4_reg_n_0_[10] ),
        .O(reg_data_out[10]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \axi_rdata[11]_i_1 
       (.I0(sel0[3]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\slv_reg4_reg_n_0_[11] ),
        .O(reg_data_out[11]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \axi_rdata[12]_i_1 
       (.I0(sel0[3]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\slv_reg4_reg_n_0_[12] ),
        .O(reg_data_out[12]));
  LUT6 #(
    .INIT(64'h00000000A0000C00)) 
    \axi_rdata[13]_i_1 
       (.I0(\slv_reg0_reg_n_0_[30] ),
        .I1(\slv_reg4_reg_n_0_[13] ),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(sel0[0]),
        .I5(sel0[3]),
        .O(reg_data_out[13]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \axi_rdata[14]_i_1 
       (.I0(sel0[3]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\slv_reg4_reg_n_0_[14] ),
        .O(reg_data_out[14]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \axi_rdata[15]_i_1 
       (.I0(sel0[3]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\slv_reg4_reg_n_0_[15] ),
        .O(reg_data_out[15]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \axi_rdata[1]_i_1 
       (.I0(\axi_rdata[3]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(\slv_reg5_reg_n_0_[1] ),
        .I4(\slv_reg6_reg_n_0_[1] ),
        .I5(\slv_reg4_reg_n_0_[1] ),
        .O(reg_data_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    \axi_rdata[20]_i_1 
       (.I0(sel0[3]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .I4(\slv_reg0_reg_n_0_[30] ),
        .O(reg_data_out[20]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \axi_rdata[24]_i_1 
       (.I0(\slv_reg0_reg_n_0_[30] ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .I4(sel0[3]),
        .O(reg_data_out[24]));
  LUT6 #(
    .INIT(64'h0000AA030000AA00)) 
    \axi_rdata[2]_i_1 
       (.I0(\axi_rdata[2]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .I4(sel0[3]),
        .I5(\slv_reg0_reg_n_0_[30] ),
        .O(reg_data_out[2]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[2]_i_2 
       (.I0(\slv_reg4_reg_n_0_[2] ),
        .I1(\slv_reg6_reg_n_0_[2] ),
        .I2(\slv_reg5_reg_n_0_[2] ),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .O(\axi_rdata[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000100)) 
    \axi_rdata[30]_i_1 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(\slv_reg0_reg_n_0_[30] ),
        .I4(sel0[3]),
        .O(reg_data_out[30]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \axi_rdata[3]_i_1 
       (.I0(\axi_rdata[3]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(\slv_reg5_reg_n_0_[3] ),
        .I4(\slv_reg6_reg_n_0_[3] ),
        .I5(\slv_reg4_reg_n_0_[3] ),
        .O(reg_data_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \axi_rdata[3]_i_2 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .O(\axi_rdata[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \axi_rdata[4]_i_1 
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .I2(\axi_rdata[4]_i_2_n_0 ),
        .O(reg_data_out[4]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \axi_rdata[4]_i_2 
       (.I0(\slv_reg5_reg_n_0_[4] ),
        .I1(\slv_reg0_reg_n_0_[30] ),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(\slv_reg4_reg_n_0_[4] ),
        .I5(\slv_reg6_reg_n_0_[4] ),
        .O(\axi_rdata[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000AC00)) 
    \axi_rdata[5]_i_1 
       (.I0(\slv_reg6_reg_n_0_[5] ),
        .I1(\slv_reg4_reg_n_0_[5] ),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(sel0[0]),
        .I5(sel0[3]),
        .O(reg_data_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \axi_rdata[6]_i_1 
       (.I0(sel0[3]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\slv_reg4_reg_n_0_[6] ),
        .O(reg_data_out[6]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \axi_rdata[7]_i_1 
       (.I0(sel0[3]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\slv_reg4_reg_n_0_[7] ),
        .O(reg_data_out[7]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \axi_rdata[8]_i_1 
       (.I0(sel0[3]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\slv_reg4_reg_n_0_[8] ),
        .O(reg_data_out[8]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \axi_rdata[9]_i_1 
       (.I0(sel0[3]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\slv_reg4_reg_n_0_[9] ),
        .O(reg_data_out[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(S_AXI_ARREADY),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    axi_wready_i_1
       (.I0(S_AXI_WREADY),
        .I1(aw_en_reg_n_0),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    fifo_write_enable_i_1
       (.I0(s00_axi_aresetn),
        .I1(\slv_reg2[15]_i_2_n_0 ),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(p_0_in_0[3]),
        .I5(p_0_in_0[2]),
        .O(fifo_write_enable_i_1_n_0));
  FDRE fifo_write_enable_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fifo_write_enable_i_1_n_0),
        .Q(fifo_write_enable),
        .R(1'b0));
  FDRE \read_data_reg[0] 
       (.C(s00_axi_aclk),
        .CE(fifo_valid),
        .D(doutb[0]),
        .Q(read_data[0]),
        .R(fifo_srst));
  FDRE \read_data_reg[10] 
       (.C(s00_axi_aclk),
        .CE(fifo_valid),
        .D(doutb[10]),
        .Q(read_data[10]),
        .R(fifo_srst));
  FDRE \read_data_reg[11] 
       (.C(s00_axi_aclk),
        .CE(fifo_valid),
        .D(doutb[11]),
        .Q(read_data[11]),
        .R(fifo_srst));
  FDRE \read_data_reg[12] 
       (.C(s00_axi_aclk),
        .CE(fifo_valid),
        .D(doutb[12]),
        .Q(read_data[12]),
        .R(fifo_srst));
  FDRE \read_data_reg[13] 
       (.C(s00_axi_aclk),
        .CE(fifo_valid),
        .D(doutb[13]),
        .Q(read_data[13]),
        .R(fifo_srst));
  FDRE \read_data_reg[14] 
       (.C(s00_axi_aclk),
        .CE(fifo_valid),
        .D(doutb[14]),
        .Q(read_data[14]),
        .R(fifo_srst));
  FDRE \read_data_reg[15] 
       (.C(s00_axi_aclk),
        .CE(fifo_valid),
        .D(doutb[15]),
        .Q(read_data[15]),
        .R(fifo_srst));
  FDRE \read_data_reg[1] 
       (.C(s00_axi_aclk),
        .CE(fifo_valid),
        .D(doutb[1]),
        .Q(read_data[1]),
        .R(fifo_srst));
  FDRE \read_data_reg[2] 
       (.C(s00_axi_aclk),
        .CE(fifo_valid),
        .D(doutb[2]),
        .Q(read_data[2]),
        .R(fifo_srst));
  FDRE \read_data_reg[3] 
       (.C(s00_axi_aclk),
        .CE(fifo_valid),
        .D(doutb[3]),
        .Q(read_data[3]),
        .R(fifo_srst));
  FDRE \read_data_reg[4] 
       (.C(s00_axi_aclk),
        .CE(fifo_valid),
        .D(doutb[4]),
        .Q(read_data[4]),
        .R(fifo_srst));
  FDRE \read_data_reg[5] 
       (.C(s00_axi_aclk),
        .CE(fifo_valid),
        .D(doutb[5]),
        .Q(read_data[5]),
        .R(fifo_srst));
  FDRE \read_data_reg[6] 
       (.C(s00_axi_aclk),
        .CE(fifo_valid),
        .D(doutb[6]),
        .Q(read_data[6]),
        .R(fifo_srst));
  FDRE \read_data_reg[7] 
       (.C(s00_axi_aclk),
        .CE(fifo_valid),
        .D(doutb[7]),
        .Q(read_data[7]),
        .R(fifo_srst));
  FDRE \read_data_reg[8] 
       (.C(s00_axi_aclk),
        .CE(fifo_valid),
        .D(doutb[8]),
        .Q(read_data[8]),
        .R(fifo_srst));
  FDRE \read_data_reg[9] 
       (.C(s00_axi_aclk),
        .CE(fifo_valid),
        .D(doutb[9]),
        .Q(read_data[9]),
        .R(fifo_srst));
  FDRE read_valid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(sc_fifo_inst_n_28),
        .Q(read_valid),
        .R(1'b0));
  mult_and_fifo_bd_gg_sc_fifo_axi_0_0_sc_fifo sc_fifo_inst
       (.D(doutb),
        .E(fifo_valid),
        .Q(slv_reg2),
        .SR(fifo_srst),
        .\data_count_reg[5]_0 (data_count_reg),
        .\data_count_reg[5]_1 ({almost_full,almost_empty,fifo_full,fifo_empty}),
        .fifo_write_enable(fifo_write_enable),
        .read_valid_reg(sc_fifo_inst_n_28),
        .read_valid_reg_0(\slv_reg3_reg_n_0_[0] ),
        .read_valid_reg_1(read_valid),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .slv_reg1(slv_reg1));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(\slv_reg0_reg_n_0_[30] ),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \slv_reg1[0]_i_1 
       (.I0(\slv_reg1[0]_i_2_n_0 ),
        .I1(p_0_in_0[1]),
        .I2(\slv_reg2[15]_i_2_n_0 ),
        .I3(s00_axi_aresetn),
        .O(\slv_reg1[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFFFFFF)) 
    \slv_reg1[0]_i_2 
       (.I0(p_0_in_0[2]),
        .I1(p_0_in_0[3]),
        .I2(s00_axi_wdata[0]),
        .I3(s00_axi_wstrb[0]),
        .I4(p_0_in_0[0]),
        .O(\slv_reg1[0]_i_2_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg1[0]_i_1_n_0 ),
        .Q(slv_reg1),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \slv_reg2[15]_i_1 
       (.I0(p_0_in_0[0]),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[3]),
        .I3(p_0_in_0[2]),
        .I4(\slv_reg2[15]_i_2_n_0 ),
        .I5(s00_axi_wstrb[1]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg2[15]_i_2 
       (.I0(S_AXI_AWREADY),
        .I1(S_AXI_WREADY),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .O(\slv_reg2[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    \slv_reg2[7]_i_1 
       (.I0(\slv_reg2[15]_i_2_n_0 ),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[3]),
        .I3(p_0_in_0[1]),
        .I4(p_0_in_0[0]),
        .I5(s00_axi_wstrb[0]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg2[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg2[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg2[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg2[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg2[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg2[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg2[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg2[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg2[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg2[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg2[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg2[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg2[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg2[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg2[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg2[9]),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \slv_reg3[0]_i_1 
       (.I0(\slv_reg1[0]_i_2_n_0 ),
        .I1(p_0_in_0[1]),
        .I2(\slv_reg2[15]_i_2_n_0 ),
        .I3(s00_axi_aresetn),
        .O(\slv_reg3[0]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[0]_i_1_n_0 ),
        .Q(\slv_reg3_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \slv_reg4_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(read_data[0]),
        .Q(\slv_reg4_reg_n_0_[0] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(read_data[10]),
        .Q(\slv_reg4_reg_n_0_[10] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(read_data[11]),
        .Q(\slv_reg4_reg_n_0_[11] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(read_data[12]),
        .Q(\slv_reg4_reg_n_0_[12] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(read_data[13]),
        .Q(\slv_reg4_reg_n_0_[13] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(read_data[14]),
        .Q(\slv_reg4_reg_n_0_[14] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(read_data[15]),
        .Q(\slv_reg4_reg_n_0_[15] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(read_data[1]),
        .Q(\slv_reg4_reg_n_0_[1] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(read_data[2]),
        .Q(\slv_reg4_reg_n_0_[2] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(read_data[3]),
        .Q(\slv_reg4_reg_n_0_[3] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(read_data[4]),
        .Q(\slv_reg4_reg_n_0_[4] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(read_data[5]),
        .Q(\slv_reg4_reg_n_0_[5] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(read_data[6]),
        .Q(\slv_reg4_reg_n_0_[6] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(read_data[7]),
        .Q(\slv_reg4_reg_n_0_[7] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(read_data[8]),
        .Q(\slv_reg4_reg_n_0_[8] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(read_data[9]),
        .Q(\slv_reg4_reg_n_0_[9] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fifo_empty),
        .Q(\slv_reg5_reg_n_0_[0] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(fifo_full),
        .Q(\slv_reg5_reg_n_0_[1] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(almost_empty),
        .Q(\slv_reg5_reg_n_0_[2] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(almost_full),
        .Q(\slv_reg5_reg_n_0_[3] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(read_valid),
        .Q(\slv_reg5_reg_n_0_[4] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(data_count_reg[0]),
        .Q(\slv_reg6_reg_n_0_[0] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(data_count_reg[1]),
        .Q(\slv_reg6_reg_n_0_[1] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(data_count_reg[2]),
        .Q(\slv_reg6_reg_n_0_[2] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(data_count_reg[3]),
        .Q(\slv_reg6_reg_n_0_[3] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(data_count_reg[4]),
        .Q(\slv_reg6_reg_n_0_[4] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(data_count_reg[5]),
        .Q(\slv_reg6_reg_n_0_[5] ),
        .R(axi_awready_i_1_n_0));
  LUT3 #(
    .INIT(8'h20)) 
    slv_reg_rden
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_rvalid),
        .I2(S_AXI_ARREADY),
        .O(slv_reg_rden__0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
aMT3usC6uizzcwnzOCX4OsS16Ob+YxFcsGovFpFklbnaIaD1S0lVdxenTwHPp6ByIEi+ehwr6Rgg
z/3AlTheI5NFTM8ihiMA18/wmUxI7EbaftJACA1LykUKCuj5myy0T+DACuv3sGYIZS38TZTZnnBC
FGAlvTZmRWs+JzneH3o=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lR9ZerhYSAb39nzEkeYvhnwEs5t9y/+yTDf8KuoUtR1BGeHZq8pA/YxtjzQLtaOW1R1IQUb0FtSI
e3CYAb7WHYbIjcpw3vKHvW1SqcGn9CMGa556CYKmD2oF12Kow8xRaFvMSBUVxX7HsHxNWnRd+PU1
+C0YayU2KFIY/7Yl6cZ5luAzhw/6SW3PFYUIyyqWy5MCIXweHOwQR2IpQEdlDur5nluN7i7BeB+i
fxwwHh8TU/g7T4mhZFkiTuBKdLAtQOjxWxzqTMxgcuAjlTylY16FgMFOASdvvSbqBZJjbxMdVloU
rYjS8O/8rWktv8GXcaIdBJ2BRj01q7jsChsbwA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Qvl63GHz9mq2xOB7elt/vAQ7URLGdD1Lkcz7f3Wtw31dwjjjbP62Ny/Jr6OmBIheWlgejx38qxAT
TrHiiEyjKmGcnPn1Tn2n+cH4RAxCbOFnCI9n6+YsYMTe9JkplGhGGr39SkFgJz0I2IKpPsuqTjCj
rhf49TAryNMQeRpREJA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MA+9Ro+dh339m0iZrkKbqTKN8gQ5xkxN/SPCfhkOn+5jjgCTS5IOKLHil+HsZDjX333ebxnornwG
MOBxyEdFfLM8SA+bs2r41J/j0af2VVMmCM3hOh8JmZxB4X9Jg/glegNCbvwzqxMbOQNEy+zt7j5t
TFVD82RtPFmYVVYZZyll/WvAA+0aVpyjzLCIM1GznFky0RWLv65Wp4MJJnNRRrtG3muMznVO/u2s
tACsJ9jzv9M0IlMYjYH9BixhG6cZX02I4LEXXaPkhdOINlMMhsbArXtc9NphzmS4bY1/1yF1D6YD
EKLyS2Sr3HDl0O/lefN+jvfG8iKuVl55PNNrVQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
wpMTg7STjFkUDhOqdNPa0FHXTnHQgKmhvqDv+rRVBvMiQ8O7u8oj7ibITq3o+jugJsMJ60B410gQ
JFTcqCJKYmYJvqi8rPLLOYDmFG6ZLP/Ixr3n62IyIaCeDltBahi3yV009QN0X+iuzuFCL+Y7g9ff
IvAgyBly+Z3Itv2H9EJMZPMl17Sa7IkgjmWqzVXIKNMKn0iDVYsQw6ZgzQDYQ8N8IvTIEggU3/lh
6Nf0hV0ev3qOv/2P+4w0U766Ux3yLuzPJSI7bKm3/ip9NjhOytxOiKKqVXhKG8dzbbuS5u3EE/eq
q6YxkL7gpvNltVqqBnJB6vHSyWrD6+MqsCtR9A==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Q7Q4SSp70lxFryaopuic9VVP/Ire0pSsPEIMYdURBAczC7ShkuYeV02U7L3BlAiyBE4vBKcwYSQd
cWiaj8sVP7q4kxoRHKxLV1R5PIO6l4DsLWE2E+1MLyUPME0w5KTular/oX8EPCJ5n/8VCtW7x4Vf
dpeyki1/IAPJkAyi3zVZKHzgKhEwnZaZZtZYuMWoPZMt4V38sAcE42Raf+7yfFWG5HO74JY6iEnW
gJeRk58K+avB/XLF2/j2RQZfjTYizrprT2tUMBK6e7DRWZZtk8AOcsMhUikev44IFGNbNXjP8BXC
0J3y3P7pCFT6l+saU83nRwi/H25fSA34diJtNw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
a/8ooC+s+6nfvfa1+oBhsvYWLJjFgp83DI1kNyOi5Am+ugPbGRmgGZudfyo6yw6Yd5gGbLm5aToQ
5G4cGF5HaXD5TU6A0ZZFMTIbzFLE76JMjjIxX8JcaJIZpSmrXqlru8l5gDINUEAmwUY3mRQnjcGJ
0Z+kMRH8iAEF+gEviPiFZSBbJeOPqivIS217kimQJX3BeNbNPQTP+GUidcRywpGMh5avxtA0kDRO
F9SoCSyTm9hr2v9hsK1IUAYQLb7n2/R+z5YNKNzt1oN4qgJH1wZfdI8if2K8+ohyOdnxrrgJOWdj
cOqr7cGqEOYfBMTIQeHVZzb7NGWVN+9B8XSUaQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
FLPvOUNRWNW2GU+FEGmt2XWthOT5bY/31DRbol2cUmEGNF6b2XzpCosNKGx/o2n6sQvGP39KRFCs
nJu0ihe2dUGee9nEZZUcpwPjnEfXVI3yJaRVYy8iL+rm59lXq0jX4sjAPieDvv8shgAnoXLTZGlq
K+2c1JhaHt+nFi27TDrYar/+P8nP1MhocOS7BjzCvSs0foEXj92/qD+71Sm/LqGr8cjlH2qTJJ8B
ynxoH6iT+bksVA2VbtPT9o6h1kJ/zwP4wcsL9l+qSlJhd4GI11JPux26DlNyIi41WmufQcfiT0PB
r6O9+0E9lV9ODwKdjaxfZRK29rjKeq2yr0jWhMV38XKKqHAJli7MIypGRXcCo+u89H87KgYt+ebw
s3foIqCe0JKR57WzI8VD6XdNtOL8eBxK539oemx4vkE0cGYECZKYru6A2hPeZOYDD5eyWSUlQl1R
EciK49WM8HnssyRVcmE6di6bISMbVi0TZG/v98bz+9UZa8DtqMVYH0tz

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fphquQOeFuqByo36Gh2C1zEC1J6u9swSMbMzsKldIvLm+SZ6/hr/N8KJ/G2vBABzX6UtbVuP1ZXx
AxdftP4Aqis1B3Bs6989aQG9eo0SOHA7r6aFLtFb3qoD5Pvqw4aVNU4z4EtTpFpn/jCWD21lKROf
q5X32HRfFq1jwqod+9vIbUNRRzz5y9VHvXfacZlxDazSPmcCF4hxB1KqWqT44KmYVkDedgkgnYgb
ZGidHnTb3W7C8tSqC9ac4kNJCL429QndtddweESJNlpX+65pt9Irok9pkOodwoj0QScswOIFjhBZ
/GrzZLQcFWiD3gXRU4DazzxQnGdRH4qEIRWziw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
1lUYYHPCt1BUJOvcBbgMU2GSQiqfxItz4ntieMaenjrtsE9SLwaU6xB0tBl8Atw5yP/RRNww1kX/
9uZbTz5He3r9mPVt+mGxB4N3f9BbCrQRb4USVPgKO/+vWUfMQERGklScy0+fz75WuxH74CjRUoDI
8iyssb2cUNnfDe13jIoI8gM1w4w/Pkxkmb6Mef53QMxacHAWEZeytcH3fuL/adO263D8P90U3XJv
vBXJmbjkRVi9qzjBzfMxuOy2KbZaZgR3BLzaffIfFnMwg/Rb8sGls5pQsZv5jL2wk3+Bj3OXBYdd
pDyjGoalJBzObKzd/t15kNHwY4FXYFcZLQPncw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YRmSEzaa2WFVvMH1BwWc1TIUpVbzSEIP0VbI6n0sEgct/X4PiTfMQmK1jBVCaISIzwBxscKQwZOt
mb/nmINGg6I7ih39LSbBMtx6cdCUiyaLkPeRbqfyPpKhvnUIFmdKVvTd1dYzxeOeuDnhSVaBaAcN
3lngSg7lIbmhLIGjC29yQrBTiLArbVZi6IRGronMK51e3UrYa6GspsznhiuRcXjEb4bHKrJ2CM5Z
BUwA+E9949sQgyOagFZbLVle2ESbwBaoxcAPn2gxfRHlT0leqyLgUGDZLsfArzGzw9BTGzyEG2TR
XOrKFNYRfMXMrnGsBM7acIelY4LdAMgsKgDH/A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20912)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
