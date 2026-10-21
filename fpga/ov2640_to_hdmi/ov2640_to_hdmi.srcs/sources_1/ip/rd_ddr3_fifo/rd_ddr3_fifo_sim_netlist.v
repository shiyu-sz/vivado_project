// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Wed Oct 21 14:53:10 2026
// Host        : ubuntu running 64-bit Ubuntu 18.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/sy/vivado_project/fpga/ov2640_to_hdmi/ov2640_to_hdmi.srcs/sources_1/ip/rd_ddr3_fifo/rd_ddr3_fifo_sim_netlist.v
// Design      : rd_ddr3_fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "rd_ddr3_fifo,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module rd_ddr3_fifo
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    rd_data_count,
    wr_data_count,
    wr_rst_busy,
    rd_rst_busy);
  input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [63:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [15:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output [7:0]rd_data_count;
  output [5:0]wr_data_count;
  output wr_rst_busy;
  output rd_rst_busy;

  wire [63:0]din;
  wire [15:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire [7:0]rd_data_count;
  wire rd_en;
  wire rd_rst_busy;
  wire rst;
  wire wr_clk;
  wire [5:0]wr_data_count;
  wire wr_en;
  wire wr_rst_busy;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [5:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "6" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "64" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "16" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_FULL_FLAGS_RST_VAL = "1" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "1" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "1" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "2" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "2" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "2" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "512x72" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "61" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "60" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "8" *) 
  (* C_RD_DEPTH = "256" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "8" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "6" *) 
  (* C_WR_DEPTH = "64" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "6" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  rd_ddr3_fifo_fifo_generator_v13_2_5 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[5:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(rd_data_count),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(rd_rst_busy),
        .rst(rst),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(wr_data_count),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "6" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module rd_ddr3_fifo_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [5:0]src_in_bin;
  input dest_clk;
  output [5:0]dest_out_bin;

  wire [5:0]async_path;
  wire [4:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [5:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [5:0]\dest_graysync_ff[1] ;
  wire [5:0]dest_out_bin;
  wire [4:0]gray_enc;
  wire src_clk;
  wire [5:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [5]),
        .I4(\dest_graysync_ff[1] [3]),
        .I5(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [5]),
        .I3(\dest_graysync_ff[1] [4]),
        .I4(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [5]),
        .I3(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[5]),
        .Q(async_path[5]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "8" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module rd_ddr3_fifo_xpm_cdc_gray__parameterized1
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [7:0]src_in_bin;
  input dest_clk;
  output [7:0]dest_out_bin;

  wire [7:0]async_path;
  wire [6:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [7:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [7:0]\dest_graysync_ff[1] ;
  wire [7:0]dest_out_bin;
  wire [6:0]gray_enc;
  wire src_clk;
  wire [7:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(binval[2]),
        .I2(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(binval[2]),
        .O(binval[1]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [6]),
        .I3(\dest_graysync_ff[1] [7]),
        .I4(\dest_graysync_ff[1] [5]),
        .I5(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(\dest_graysync_ff[1] [7]),
        .I3(\dest_graysync_ff[1] [6]),
        .I4(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [7]),
        .I3(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[7]),
        .Q(async_path[7]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module rd_ddr3_fifo_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module rd_ddr3_fifo_xpm_cdc_single__2
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "5" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "SYNC_RST" *) 
module rd_ddr3_fifo_xpm_cdc_sync_rst
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "5" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "SYNC_RST" *) 
module rd_ddr3_fifo_xpm_cdc_sync_rst__2
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
QGLtnqZzRetDH6gCWT4Js6wuLlZfrNx/VJp3sfR2NF+cxypO5AxN0oDKLJJtmdrtE/ueNDg+Qf7Z
TqBNRojORA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
B6Ger3hRvfjHkaJ+W8639Kl3TzC9TogLuklOXEiMNdc4Im+DjEUzxb3DKlzu0VW3zxZqjJ3+wsW/
LnRmPCESi5Y9eRJaLFXg79EMfoj4X+nTdHAP6yCfltBADKegZ12gpnB/8ey5yn2KA74LUtPC7jna
iyjqSfsWLGnz6UdXzwk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BX+DxgMPRyZbYojCUR9Sk8Lq+3ZigBz4yMFHQkmurfdfDzyTPJCE827eGiPyTenK1QPVhEtf9g06
0BFXq/0COPuU1BWJwdkz1c4dE6/exDwhvEh+hPx3vRY6z8fDEf6aGVIXrHDvrmddehe7yMSIpo+k
aXHR06EEdfHCFY4TggYwhcJVXjkE+ApsVuyfmEfPmYjo8hCWyQyBsUWIOY03q1+MvUjjsmTwgs9g
fh5MY9ToaLfoJxPKdCpsqrBX4LJ+VDGFlAqIcqHTE2jCmPiToZAFXB7fzf1wDjFCBlJyFVDBGi0i
m+CouLSb7X1mvVhdDZgNrZDJMV688Bu3o54vew==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DaIU/Ddc8USbZ2mURzujJDWDH1JbHl5tFVOOQ2aVaUPIA71yyE38OXVLEtF8rNmujYH30nEeQ+FV
LVJ16aaHw+iiuaqorTM3K5KLohVlN+WlcEtSXHuPNHjw8ddqtzpaX7pH1zqZH+YmfCL5oaNLqDH4
rkBnUl0/Gm/hzSwKjYhXGQFYQ+gGP99OjXakzrAqZzp/Iq4gt+Z5902/JV9thd/isHQImJ0QyK8M
EKM579iPAfXGes2mbiNYHcvDmSPYmW1zlhOE++N1EKeea7j/msnKeyhlC+hGE4Xfn4TVvqgQexCT
rp/wS/MosY6WH1aKFQlFH2hEppA7KXUaQlvG+w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XmWoAt4X8hrCJ5yTyug4ajJW5UhfkLNibzjihWzZ4Cr9hQSvWZoTc8rjGsLPbz6Le+/9iI5KxecS
eR0wiAO+G2IkwhZgVBeZdKoFnlnTVAyLjk9wMAFXNyJZM6b1NDbfXlPcUsC6JePvPlwwdWknkSsC
r3KvgkWAS+O3xvRmaNw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hw3Y+rShKrXiUViyNU1/O2qv6TgheLHBnFMj1i9MUGrHYqh9pLfLYUgWR7S2vj4jv4S+Ks0BpP4p
dKEqVAFmTCfQNEUHaVcFPkOHgig6L4mhLY6HUUKJoRgiQepgLi/W3V+ZZPQSQFkB3CU4MsJzhXvR
yLcpDriZy8cnAHD87Zi5DrNGBzj3kigJeM0du6lCQbxtF5aEdoaNP+YTnIFtcqYhoYnswQlYt0sV
HKgFA8VzqzL5WYnpH7+1IKmFkJBHkyqHCa9wPK0qCKnxkuDj70YzPVqQ+cocdKU+/gNdpCOdZlci
F2HTxrgfrXndJru3TiDqu4UavqAe0MNuFp3t0w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XPVggoWL6aXz+MpODTOZhEUQDa0vfEnUDaYeEHXm2vGyqKJujN2c/FFAFBeBYdJATLsIsQ+BqoPc
pBbcFYXDBfOtFIW2dH6Y1OoD65KyJ/hAq8coa21kFgq4hFat5vzZ2iIfkCpTUr4vDZO7Xne8cZO9
WsHffoTCt5rS59wWm2b8I5R8Eh2TUbQg3RCyrcnD66cvcEnlXe1CNMQ4/loVJpA4IBinBf820Wjc
vw2fZbGI0jXC+ACSHOviH63Xwmn+aRV5Ppkup7IYoon/ieKapRQeASu3TTY37xSBXiInSdtMTzJ6
+4GfO4eSHVriCk/sWbuTBzfRzoSShrnHjzz5LA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L78XuiswVcgO2gtebzL7SA9BC/jJGAM0v6S9pzmyqL+QYzRneiYeGyDmsW33jEVVSTuNjTXkBLY7
yTOKQruatwe4V0OLi6174saSAmPgerSV1GyLP7KhmusLV/N61avC9TPam+tekhKeE0tds4EnJ3et
4JdLh+SE4Z4pcuqCjB5MFneIYKKWDx7siU6oesAQtoSJOesfMchX63MhOjOHFP/ch+1gHv3T45hg
IGF7V7TrdREVE4f9631tlVJ1o2Dypsmo/76Itz5WCGlTMjAnWXN8IXxKN+PZ3dyt1wjrZm2P/td+
xiGszFnSLrRvw/HferwtSmRx8q0fiHZ88roGTw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kDX5kq2QEe25429T6vQqBCFvV1McKTJRYfK99ymVNK2GGvGLXSzgwJHwB2fj9rM0wme3zYYY0vQR
x+9F4L7KLlOVY6qY3LB59uDzyXBI3mMZaS905HXHJkdZHWtQWpfHhl27LqL+8FSluaD6F+KFfYOV
CwIOVuCIp/XjxFXpNBik7YiPt4kHOlDA97IXNLnYUn/g1csGqeNWce4UTne50ggWvLYGbTFGmTjT
N67TpUiGRVRCSv8Tax72GWFIMFZk3Tlp68ZUSQEybZMWX1U9XdMdtxfvNGhf8mi5jQJ2SupSzKu4
T/+53IN9T8aLePAiGBKKG1ZBj4y1ZyYA7XYvjw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 116832)
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
