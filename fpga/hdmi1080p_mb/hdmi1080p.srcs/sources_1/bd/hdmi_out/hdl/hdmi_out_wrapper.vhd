--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
--Date        : Thu Apr 30 21:49:17 2020
--Host        : M4600 running 64-bit Ubuntu 18.04.4 LTS
--Command     : generate_target hdmi_out_wrapper.bd
--Design      : hdmi_out_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity hdmi_out_wrapper is
  port (
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    IIC_0_scl_io : inout STD_LOGIC;
    IIC_0_sda_io : inout STD_LOGIC;
    MB_IIC_scl_io : inout STD_LOGIC;
    MB_IIC_sda_io : inout STD_LOGIC;
    MB_SPI_io0_io : inout STD_LOGIC;
    MB_SPI_io1_io : inout STD_LOGIC;
    MB_SPI_sck_io : inout STD_LOGIC;
    MB_SPI_ss_io : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    MB_UART_rxd : in STD_LOGIC;
    MB_UART_txd : out STD_LOGIC;
    hdmi_clk : out STD_LOGIC;
    hdmi_intn : in STD_LOGIC;
    hdmi_vid_active_video : out STD_LOGIC;
    hdmi_vid_data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    hdmi_vid_hsync : out STD_LOGIC;
    hdmi_vid_vsync : out STD_LOGIC
  );
end hdmi_out_wrapper;

architecture STRUCTURE of hdmi_out_wrapper is
  component hdmi_out is
  port (
    hdmi_intn : in STD_LOGIC;
    hdmi_clk : out STD_LOGIC;
    hdmi_vid_active_video : out STD_LOGIC;
    hdmi_vid_vsync : out STD_LOGIC;
    hdmi_vid_data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    hdmi_vid_hsync : out STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    DDR_cas_n : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    IIC_0_sda_i : in STD_LOGIC;
    IIC_0_sda_o : out STD_LOGIC;
    IIC_0_sda_t : out STD_LOGIC;
    IIC_0_scl_i : in STD_LOGIC;
    IIC_0_scl_o : out STD_LOGIC;
    IIC_0_scl_t : out STD_LOGIC;
    MB_UART_rxd : in STD_LOGIC;
    MB_UART_txd : out STD_LOGIC;
    MB_IIC_scl_i : in STD_LOGIC;
    MB_IIC_scl_o : out STD_LOGIC;
    MB_IIC_scl_t : out STD_LOGIC;
    MB_IIC_sda_i : in STD_LOGIC;
    MB_IIC_sda_o : out STD_LOGIC;
    MB_IIC_sda_t : out STD_LOGIC;
    MB_SPI_io0_i : in STD_LOGIC;
    MB_SPI_io0_o : out STD_LOGIC;
    MB_SPI_io0_t : out STD_LOGIC;
    MB_SPI_io1_i : in STD_LOGIC;
    MB_SPI_io1_o : out STD_LOGIC;
    MB_SPI_io1_t : out STD_LOGIC;
    MB_SPI_sck_i : in STD_LOGIC;
    MB_SPI_sck_o : out STD_LOGIC;
    MB_SPI_sck_t : out STD_LOGIC;
    MB_SPI_ss_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    MB_SPI_ss_o : out STD_LOGIC_VECTOR ( 1 downto 0 );
    MB_SPI_ss_t : out STD_LOGIC
  );
  end component hdmi_out;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal IIC_0_scl_i : STD_LOGIC;
  signal IIC_0_scl_o : STD_LOGIC;
  signal IIC_0_scl_t : STD_LOGIC;
  signal IIC_0_sda_i : STD_LOGIC;
  signal IIC_0_sda_o : STD_LOGIC;
  signal IIC_0_sda_t : STD_LOGIC;
  signal MB_IIC_scl_i : STD_LOGIC;
  signal MB_IIC_scl_o : STD_LOGIC;
  signal MB_IIC_scl_t : STD_LOGIC;
  signal MB_IIC_sda_i : STD_LOGIC;
  signal MB_IIC_sda_o : STD_LOGIC;
  signal MB_IIC_sda_t : STD_LOGIC;
  signal MB_SPI_io0_i : STD_LOGIC;
  signal MB_SPI_io0_o : STD_LOGIC;
  signal MB_SPI_io0_t : STD_LOGIC;
  signal MB_SPI_io1_i : STD_LOGIC;
  signal MB_SPI_io1_o : STD_LOGIC;
  signal MB_SPI_io1_t : STD_LOGIC;
  signal MB_SPI_sck_i : STD_LOGIC;
  signal MB_SPI_sck_o : STD_LOGIC;
  signal MB_SPI_sck_t : STD_LOGIC;
  signal MB_SPI_ss_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal MB_SPI_ss_i_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal MB_SPI_ss_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal MB_SPI_ss_io_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal MB_SPI_ss_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal MB_SPI_ss_o_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal MB_SPI_ss_t : STD_LOGIC;
begin
IIC_0_scl_iobuf: component IOBUF
     port map (
      I => IIC_0_scl_o,
      IO => IIC_0_scl_io,
      O => IIC_0_scl_i,
      T => IIC_0_scl_t
    );
IIC_0_sda_iobuf: component IOBUF
     port map (
      I => IIC_0_sda_o,
      IO => IIC_0_sda_io,
      O => IIC_0_sda_i,
      T => IIC_0_sda_t
    );
MB_IIC_scl_iobuf: component IOBUF
     port map (
      I => MB_IIC_scl_o,
      IO => MB_IIC_scl_io,
      O => MB_IIC_scl_i,
      T => MB_IIC_scl_t
    );
MB_IIC_sda_iobuf: component IOBUF
     port map (
      I => MB_IIC_sda_o,
      IO => MB_IIC_sda_io,
      O => MB_IIC_sda_i,
      T => MB_IIC_sda_t
    );
MB_SPI_io0_iobuf: component IOBUF
     port map (
      I => MB_SPI_io0_o,
      IO => MB_SPI_io0_io,
      O => MB_SPI_io0_i,
      T => MB_SPI_io0_t
    );
MB_SPI_io1_iobuf: component IOBUF
     port map (
      I => MB_SPI_io1_o,
      IO => MB_SPI_io1_io,
      O => MB_SPI_io1_i,
      T => MB_SPI_io1_t
    );
MB_SPI_sck_iobuf: component IOBUF
     port map (
      I => MB_SPI_sck_o,
      IO => MB_SPI_sck_io,
      O => MB_SPI_sck_i,
      T => MB_SPI_sck_t
    );
MB_SPI_ss_iobuf_0: component IOBUF
     port map (
      I => MB_SPI_ss_o_0(0),
      IO => MB_SPI_ss_io(0),
      O => MB_SPI_ss_i_0(0),
      T => MB_SPI_ss_t
    );
MB_SPI_ss_iobuf_1: component IOBUF
     port map (
      I => MB_SPI_ss_o_1(1),
      IO => MB_SPI_ss_io(1),
      O => MB_SPI_ss_i_1(1),
      T => MB_SPI_ss_t
    );
hdmi_out_i: component hdmi_out
     port map (
      DDR_addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_ba(2 downto 0) => DDR_ba(2 downto 0),
      DDR_cas_n => DDR_cas_n,
      DDR_ck_n => DDR_ck_n,
      DDR_ck_p => DDR_ck_p,
      DDR_cke => DDR_cke,
      DDR_cs_n => DDR_cs_n,
      DDR_dm(3 downto 0) => DDR_dm(3 downto 0),
      DDR_dq(31 downto 0) => DDR_dq(31 downto 0),
      DDR_dqs_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_dqs_p(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_odt => DDR_odt,
      DDR_ras_n => DDR_ras_n,
      DDR_reset_n => DDR_reset_n,
      DDR_we_n => DDR_we_n,
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
      IIC_0_scl_i => IIC_0_scl_i,
      IIC_0_scl_o => IIC_0_scl_o,
      IIC_0_scl_t => IIC_0_scl_t,
      IIC_0_sda_i => IIC_0_sda_i,
      IIC_0_sda_o => IIC_0_sda_o,
      IIC_0_sda_t => IIC_0_sda_t,
      MB_IIC_scl_i => MB_IIC_scl_i,
      MB_IIC_scl_o => MB_IIC_scl_o,
      MB_IIC_scl_t => MB_IIC_scl_t,
      MB_IIC_sda_i => MB_IIC_sda_i,
      MB_IIC_sda_o => MB_IIC_sda_o,
      MB_IIC_sda_t => MB_IIC_sda_t,
      MB_SPI_io0_i => MB_SPI_io0_i,
      MB_SPI_io0_o => MB_SPI_io0_o,
      MB_SPI_io0_t => MB_SPI_io0_t,
      MB_SPI_io1_i => MB_SPI_io1_i,
      MB_SPI_io1_o => MB_SPI_io1_o,
      MB_SPI_io1_t => MB_SPI_io1_t,
      MB_SPI_sck_i => MB_SPI_sck_i,
      MB_SPI_sck_o => MB_SPI_sck_o,
      MB_SPI_sck_t => MB_SPI_sck_t,
      MB_SPI_ss_i(1) => MB_SPI_ss_i_1(1),
      MB_SPI_ss_i(0) => MB_SPI_ss_i_0(0),
      MB_SPI_ss_o(1) => MB_SPI_ss_o_1(1),
      MB_SPI_ss_o(0) => MB_SPI_ss_o_0(0),
      MB_SPI_ss_t => MB_SPI_ss_t,
      MB_UART_rxd => MB_UART_rxd,
      MB_UART_txd => MB_UART_txd,
      hdmi_clk => hdmi_clk,
      hdmi_intn => hdmi_intn,
      hdmi_vid_active_video => hdmi_vid_active_video,
      hdmi_vid_data(15 downto 0) => hdmi_vid_data(15 downto 0),
      hdmi_vid_hsync => hdmi_vid_hsync,
      hdmi_vid_vsync => hdmi_vid_vsync
    );
end STRUCTURE;
