-- (c) Copyright 1995-2014 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:ip:v_cfa:7.0
-- IP Revision: 2

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

LIBRARY v_cfa_v7_0;
USE v_cfa_v7_0.v_cfa;

ENTITY tutorial_v_cfa_0_0 IS
  PORT (
    aclk : IN STD_LOGIC;
    aclken : IN STD_LOGIC;
    aresetn : IN STD_LOGIC;
    s_axi_aclk : IN STD_LOGIC;
    s_axi_aclken : IN STD_LOGIC;
    s_axi_aresetn : IN STD_LOGIC;
    irq : OUT STD_LOGIC;
    s_axis_video_tdata : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    s_axis_video_tready : OUT STD_LOGIC;
    s_axis_video_tvalid : IN STD_LOGIC;
    s_axis_video_tlast : IN STD_LOGIC;
    s_axis_video_tuser : IN STD_LOGIC;
    m_axis_video_tdata : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
    m_axis_video_tvalid : OUT STD_LOGIC;
    m_axis_video_tready : IN STD_LOGIC;
    m_axis_video_tlast : OUT STD_LOGIC;
    m_axis_video_tuser : OUT STD_LOGIC;
    s_axi_awaddr : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
    s_axi_awvalid : IN STD_LOGIC;
    s_axi_awready : OUT STD_LOGIC;
    s_axi_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_wvalid : IN STD_LOGIC;
    s_axi_wready : OUT STD_LOGIC;
    s_axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_bvalid : OUT STD_LOGIC;
    s_axi_bready : IN STD_LOGIC;
    s_axi_araddr : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
    s_axi_arvalid : IN STD_LOGIC;
    s_axi_arready : OUT STD_LOGIC;
    s_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_rvalid : OUT STD_LOGIC;
    s_axi_rready : IN STD_LOGIC
  );
END tutorial_v_cfa_0_0;

ARCHITECTURE tutorial_v_cfa_0_0_arch OF tutorial_v_cfa_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : string;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF tutorial_v_cfa_0_0_arch: ARCHITECTURE IS "yes";

  COMPONENT v_cfa IS
    GENERIC (
      c_s_axis_video_data_width : INTEGER;
      c_m_axis_video_data_width : INTEGER;
      c_s_axis_video_tdata_width : INTEGER;
      c_m_axis_video_tdata_width : INTEGER;
      c_s_axis_video_format : INTEGER;
      c_m_axis_video_format : INTEGER;
      c_s_axis_video_tuser_width : INTEGER;
      c_m_axis_video_tuser_width : INTEGER;
      c_s_axi_addr_width : INTEGER;
      c_s_axi_data_width : INTEGER;
      c_s_axi_clk_freq_hz : INTEGER;
      c_bayer_phase : INTEGER;
      c_active_rows : INTEGER;
      c_active_cols : INTEGER;
      c_max_cols : INTEGER;
      c_has_intc_if : INTEGER;
      c_has_axi4_lite : INTEGER;
      c_has_debug : INTEGER;
      c_hor_filt : INTEGER;
      c_fringe_tol : INTEGER;
      c_family : STRING
    );
    PORT (
      aclk : IN STD_LOGIC;
      aclken : IN STD_LOGIC;
      aresetn : IN STD_LOGIC;
      s_axi_aclk : IN STD_LOGIC;
      s_axi_aclken : IN STD_LOGIC;
      s_axi_aresetn : IN STD_LOGIC;
      intc_if : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
      irq : OUT STD_LOGIC;
      s_axis_video_tdata : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      s_axis_video_tready : OUT STD_LOGIC;
      s_axis_video_tvalid : IN STD_LOGIC;
      s_axis_video_tlast : IN STD_LOGIC;
      s_axis_video_tuser : IN STD_LOGIC;
      m_axis_video_tdata : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
      m_axis_video_tvalid : OUT STD_LOGIC;
      m_axis_video_tready : IN STD_LOGIC;
      m_axis_video_tlast : OUT STD_LOGIC;
      m_axis_video_tuser : OUT STD_LOGIC;
      s_axi_awaddr : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
      s_axi_awvalid : IN STD_LOGIC;
      s_axi_awready : OUT STD_LOGIC;
      s_axi_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_wvalid : IN STD_LOGIC;
      s_axi_wready : OUT STD_LOGIC;
      s_axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_bvalid : OUT STD_LOGIC;
      s_axi_bready : IN STD_LOGIC;
      s_axi_araddr : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
      s_axi_arvalid : IN STD_LOGIC;
      s_axi_arready : OUT STD_LOGIC;
      s_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_rvalid : OUT STD_LOGIC;
      s_axi_rready : IN STD_LOGIC
    );
  END COMPONENT v_cfa;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF tutorial_v_cfa_0_0_arch: ARCHITECTURE IS "v_cfa,Vivado 2013.3";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF tutorial_v_cfa_0_0_arch : ARCHITECTURE IS "tutorial_v_cfa_0_0,v_cfa,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF tutorial_v_cfa_0_0_arch: ARCHITECTURE IS "tutorial_v_cfa_0_0,v_cfa,{x_ipProduct=Vivado 2013.3,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=v_cfa,x_ipVersion=7.0,x_ipCoreRevision=2,x_ipLanguage=VHDL,x_ipLicense=v_cfa@2013.03(hardware_evaluation),c_s_axis_video_data_width=8,c_m_axis_video_data_width=8,c_s_axis_video_tdata_width=8,c_m_axis_video_tdata_width=24,c_s_axis_video_format=12,c_m_axis_video_format=2,c_s_axis_video_tuser_width=1,c_m_axis_video_tuser_width=1,c_s_axi_addr_width=9,c_s_axi_data_width=32,c_s_axi_clk_freq_hz=100000000,c_bayer_phase=3,c_active_rows=1080,c_active_cols=1920,c_max_cols=1920,c_has_intc_if=0,c_has_axi4_lite=1,c_has_debug=0,c_hor_filt=0,c_fringe_tol=0,c_family=zynq}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 aclk_intf CLK";
  ATTRIBUTE X_INTERFACE_INFO OF aclken: SIGNAL IS "xilinx.com:signal:clockenable:1.0 aclken_intf CE";
  ATTRIBUTE X_INTERFACE_INFO OF aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 aresetn_intf RST";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 s_axi_aclk_intf CLK";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_aclken: SIGNAL IS "xilinx.com:signal:clockenable:1.0 s_axi_aclken_intf CE";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 s_axi_aresetn_intf RST";
  ATTRIBUTE X_INTERFACE_INFO OF irq: SIGNAL IS "xilinx.com:signal:interrupt:1.0 IRQ INTERRUPT";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_video_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 video_in TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_video_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 video_in TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_video_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 video_in TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_video_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 video_in TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_video_tuser: SIGNAL IS "xilinx.com:interface:axis:1.0 video_in TUSER";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_video_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 video_out TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_video_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 video_out TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_video_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 video_out TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_video_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 video_out TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_video_tuser: SIGNAL IS "xilinx.com:interface:axis:1.0 video_out TUSER";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 ctrl AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 ctrl AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 ctrl AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 ctrl WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 ctrl WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 ctrl WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 ctrl WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 ctrl BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 ctrl BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 ctrl BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 ctrl ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 ctrl ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 ctrl ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 ctrl RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 ctrl RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 ctrl RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 ctrl RREADY";
BEGIN
  U0 : v_cfa
    GENERIC MAP (
      c_s_axis_video_data_width => 8,
      c_m_axis_video_data_width => 8,
      c_s_axis_video_tdata_width => 8,
      c_m_axis_video_tdata_width => 24,
      c_s_axis_video_format => 12,
      c_m_axis_video_format => 2,
      c_s_axis_video_tuser_width => 1,
      c_m_axis_video_tuser_width => 1,
      c_s_axi_addr_width => 9,
      c_s_axi_data_width => 32,
      c_s_axi_clk_freq_hz => 100000000,
      c_bayer_phase => 3,
      c_active_rows => 1080,
      c_active_cols => 1920,
      c_max_cols => 1920,
      c_has_intc_if => 0,
      c_has_axi4_lite => 1,
      c_has_debug => 0,
      c_hor_filt => 0,
      c_fringe_tol => 0,
      c_family => "zynq"
    )
    PORT MAP (
      aclk => aclk,
      aclken => aclken,
      aresetn => aresetn,
      s_axi_aclk => s_axi_aclk,
      s_axi_aclken => s_axi_aclken,
      s_axi_aresetn => s_axi_aresetn,
      irq => irq,
      s_axis_video_tdata => s_axis_video_tdata,
      s_axis_video_tready => s_axis_video_tready,
      s_axis_video_tvalid => s_axis_video_tvalid,
      s_axis_video_tlast => s_axis_video_tlast,
      s_axis_video_tuser => s_axis_video_tuser,
      m_axis_video_tdata => m_axis_video_tdata,
      m_axis_video_tvalid => m_axis_video_tvalid,
      m_axis_video_tready => m_axis_video_tready,
      m_axis_video_tlast => m_axis_video_tlast,
      m_axis_video_tuser => m_axis_video_tuser,
      s_axi_awaddr => s_axi_awaddr,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_awready => s_axi_awready,
      s_axi_wdata => s_axi_wdata,
      s_axi_wstrb => s_axi_wstrb,
      s_axi_wvalid => s_axi_wvalid,
      s_axi_wready => s_axi_wready,
      s_axi_bresp => s_axi_bresp,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_bready => s_axi_bready,
      s_axi_araddr => s_axi_araddr,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_arready => s_axi_arready,
      s_axi_rdata => s_axi_rdata,
      s_axi_rresp => s_axi_rresp,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_rready => s_axi_rready
    );
END tutorial_v_cfa_0_0_arch;
