// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Wed Oct 21 14:53:11 2026
// Host        : ubuntu running 64-bit Ubuntu 18.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/sy/vivado_project/fpga/ov2640_to_hdmi/ov2640_to_hdmi.srcs/sources_1/ip/wr_ddr3_fifo/wr_ddr3_fifo_sim_netlist.v
// Design      : wr_ddr3_fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "wr_ddr3_fifo,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module wr_ddr3_fifo
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
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [15:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [63:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output [5:0]rd_data_count;
  output [7:0]wr_data_count;
  output wr_rst_busy;
  output rd_rst_busy;

  wire [15:0]din;
  wire [63:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire [5:0]rd_data_count;
  wire rd_en;
  wire rd_rst_busy;
  wire rst;
  wire wr_clk;
  wire [7:0]wr_data_count;
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
  wire [7:0]NLW_U0_data_count_UNCONNECTED;
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
  (* C_DATA_COUNT_WIDTH = "8" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "16" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "64" *) 
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
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
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
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
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
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "253" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "252" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "6" *) 
  (* C_RD_DEPTH = "64" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "6" *) 
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
  (* C_WR_DATA_COUNT_WIDTH = "8" *) 
  (* C_WR_DEPTH = "256" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "8" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  wr_ddr3_fifo_fifo_generator_v13_2_5 U0
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
        .data_count(NLW_U0_data_count_UNCONNECTED[7:0]),
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
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
(* VERSION = "0" *) (* WIDTH = "8" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module wr_ddr3_fifo_xpm_cdc_gray
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
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
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

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "6" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module wr_ddr3_fifo_xpm_cdc_gray__parameterized1
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
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
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

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module wr_ddr3_fifo_xpm_cdc_single
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
module wr_ddr3_fifo_xpm_cdc_single__2
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
module wr_ddr3_fifo_xpm_cdc_sync_rst
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
module wr_ddr3_fifo_xpm_cdc_sync_rst__2
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 120144)
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
