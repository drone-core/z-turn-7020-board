library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity rgb888_to_rgb565_v1_0 is
	port (
		vid_data  : in std_logic_vector(23 downto 0);
        vid_de    : in std_logic;
        vid_vsync : in std_logic;
        vid_hsync : in std_logic;
		vid_clk   : in std_logic;
		
	    hdmi_data  : out std_logic_vector(15 downto 0);
        hdmi_de    : out std_logic;
        hdmi_vs    : out std_logic;
        hdmi_hs    : out std_logic;
		hdmi_clk   : out std_logic
	);
end rgb888_to_rgb565_v1_0;

architecture arch_imp of rgb888_to_rgb565_v1_0 is

begin
    
    hdmi_data  <= vid_data(23 downto 19) & vid_data(15 downto 10) & vid_data(7 downto 3);
    hdmi_de    <= vid_de    ;
    hdmi_vs    <= vid_vsync ;
    hdmi_hs    <= vid_hsync ;
	hdmi_clk   <= vid_clk   ;
	
end arch_imp;
