library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity tutorial_wrapper is
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
    fmc_imageon_iic_rst_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    fmc_imageon_iic_scl_io : inout STD_LOGIC;
    fmc_imageon_iic_sda_io : inout STD_LOGIC;
    hdmio_io_clk : out STD_LOGIC;
    hdmio_io_data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    hdmio_io_spdif : out STD_LOGIC;
    vita_clk : in STD_LOGIC;
    vita_io_clk_out_n : in STD_LOGIC;
    vita_io_clk_out_p : in STD_LOGIC;
    vita_io_clk_pll : out STD_LOGIC;
    vita_io_data_n : in STD_LOGIC_VECTOR ( 3 downto 0 );
    vita_io_data_p : in STD_LOGIC_VECTOR ( 3 downto 0 );
    vita_io_monitor : in STD_LOGIC_VECTOR ( 1 downto 0 );
    vita_io_reset_n : out STD_LOGIC;
    vita_io_spi_miso : in STD_LOGIC;
    vita_io_spi_mosi : out STD_LOGIC;
    vita_io_spi_sclk : out STD_LOGIC;
    vita_io_spi_ssel_n : out STD_LOGIC;
    vita_io_sync_n : in STD_LOGIC;
    vita_io_sync_p : in STD_LOGIC;
    vita_io_trigger : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
end tutorial_wrapper;

architecture STRUCTURE of tutorial_wrapper is
  component tutorial is
  port (
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
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    fmc_imageon_iic_scl_i : in STD_LOGIC;
    fmc_imageon_iic_scl_o : out STD_LOGIC;
    fmc_imageon_iic_scl_t : out STD_LOGIC;
    fmc_imageon_iic_sda_i : in STD_LOGIC;
    fmc_imageon_iic_sda_o : out STD_LOGIC;
    fmc_imageon_iic_sda_t : out STD_LOGIC;
    fmc_imageon_iic_rst_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    vita_clk : in STD_LOGIC;
    hdmio_io_clk : out STD_LOGIC;
    hdmio_io_data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    hdmio_io_spdif : out STD_LOGIC;
    vita_io_clk_out_n : in STD_LOGIC;
    vita_io_clk_out_p : in STD_LOGIC;
    vita_io_clk_pll : out STD_LOGIC;
    vita_io_data_n : in STD_LOGIC_VECTOR ( 3 downto 0 );
    vita_io_data_p : in STD_LOGIC_VECTOR ( 3 downto 0 );
    vita_io_monitor : in STD_LOGIC_VECTOR ( 1 downto 0 );
    vita_io_reset_n : out STD_LOGIC;
    vita_io_spi_miso : in STD_LOGIC;
    vita_io_spi_mosi : out STD_LOGIC;
    vita_io_spi_sclk : out STD_LOGIC;
    vita_io_spi_ssel_n : out STD_LOGIC;
    vita_io_sync_n : in STD_LOGIC;
    vita_io_sync_p : in STD_LOGIC;
    vita_io_trigger : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component tutorial;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal fmc_imageon_iic_scl_i : STD_LOGIC;
  signal fmc_imageon_iic_scl_o : STD_LOGIC;
  signal fmc_imageon_iic_scl_t : STD_LOGIC;
  signal fmc_imageon_iic_sda_i : STD_LOGIC;
  signal fmc_imageon_iic_sda_o : STD_LOGIC;
  signal fmc_imageon_iic_sda_t : STD_LOGIC;
begin
fmc_imageon_iic_scl_iobuf: component IOBUF
    port map (
      I => fmc_imageon_iic_scl_o,
      IO => fmc_imageon_iic_scl_io,
      O => fmc_imageon_iic_scl_i,
      T => fmc_imageon_iic_scl_t
    );
fmc_imageon_iic_sda_iobuf: component IOBUF
    port map (
      I => fmc_imageon_iic_sda_o,
      IO => fmc_imageon_iic_sda_io,
      O => fmc_imageon_iic_sda_i,
      T => fmc_imageon_iic_sda_t
    );
tutorial_i: component tutorial
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
      fmc_imageon_iic_rst_n(0) => fmc_imageon_iic_rst_n(0),
      fmc_imageon_iic_scl_i => fmc_imageon_iic_scl_i,
      fmc_imageon_iic_scl_o => fmc_imageon_iic_scl_o,
      fmc_imageon_iic_scl_t => fmc_imageon_iic_scl_t,
      fmc_imageon_iic_sda_i => fmc_imageon_iic_sda_i,
      fmc_imageon_iic_sda_o => fmc_imageon_iic_sda_o,
      fmc_imageon_iic_sda_t => fmc_imageon_iic_sda_t,
      hdmio_io_clk => hdmio_io_clk,
      hdmio_io_data(15 downto 0) => hdmio_io_data(15 downto 0),
      hdmio_io_spdif => hdmio_io_spdif,
      vita_clk => vita_clk,
      vita_io_clk_out_n => vita_io_clk_out_n,
      vita_io_clk_out_p => vita_io_clk_out_p,
      vita_io_clk_pll => vita_io_clk_pll,
      vita_io_data_n(3 downto 0) => vita_io_data_n(3 downto 0),
      vita_io_data_p(3 downto 0) => vita_io_data_p(3 downto 0),
      vita_io_monitor(1 downto 0) => vita_io_monitor(1 downto 0),
      vita_io_reset_n => vita_io_reset_n,
      vita_io_spi_miso => vita_io_spi_miso,
      vita_io_spi_mosi => vita_io_spi_mosi,
      vita_io_spi_sclk => vita_io_spi_sclk,
      vita_io_spi_ssel_n => vita_io_spi_ssel_n,
      vita_io_sync_n => vita_io_sync_n,
      vita_io_sync_p => vita_io_sync_p,
      vita_io_trigger(2 downto 0) => vita_io_trigger(2 downto 0)
    );
end STRUCTURE;
