-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2015.4
-- Copyright (C) 2015 Xilinx Inc. All rights reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity image_filter_Mat2AXIvideo is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    img_rows_V_dout : IN STD_LOGIC_VECTOR (11 downto 0);
    img_rows_V_empty_n : IN STD_LOGIC;
    img_rows_V_read : OUT STD_LOGIC;
    img_cols_V_dout : IN STD_LOGIC_VECTOR (11 downto 0);
    img_cols_V_empty_n : IN STD_LOGIC;
    img_cols_V_read : OUT STD_LOGIC;
    img_data_stream_0_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    img_data_stream_0_V_empty_n : IN STD_LOGIC;
    img_data_stream_0_V_read : OUT STD_LOGIC;
    img_data_stream_1_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    img_data_stream_1_V_empty_n : IN STD_LOGIC;
    img_data_stream_1_V_read : OUT STD_LOGIC;
    video_out_TDATA : OUT STD_LOGIC_VECTOR (15 downto 0);
    video_out_TVALID : OUT STD_LOGIC;
    video_out_TREADY : IN STD_LOGIC;
    video_out_TKEEP : OUT STD_LOGIC_VECTOR (1 downto 0);
    video_out_TSTRB : OUT STD_LOGIC_VECTOR (1 downto 0);
    video_out_TUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    video_out_TLAST : OUT STD_LOGIC_VECTOR (0 downto 0);
    video_out_TID : OUT STD_LOGIC_VECTOR (0 downto 0);
    video_out_TDEST : OUT STD_LOGIC_VECTOR (0 downto 0) );
end;


architecture behav of image_filter_Mat2AXIvideo is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_st1_fsm_0 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_ST_st2_fsm_1 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ap_ST_pp0_stg0_fsm_2 : STD_LOGIC_VECTOR (3 downto 0) := "0100";
    constant ap_ST_st5_fsm_3 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv11_0 : STD_LOGIC_VECTOR (10 downto 0) := "00000000000";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv12_FFF : STD_LOGIC_VECTOR (11 downto 0) := "111111111111";
    constant ap_const_lv11_1 : STD_LOGIC_VECTOR (10 downto 0) := "00000000001";

    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_sig_cseq_ST_st1_fsm_0 : STD_LOGIC;
    signal ap_sig_bdd_23 : BOOLEAN;
    signal p_1_i_reg_154 : STD_LOGIC_VECTOR (10 downto 0);
    signal rows_V_reg_236 : STD_LOGIC_VECTOR (11 downto 0);
    signal ap_sig_bdd_66 : BOOLEAN;
    signal cols_V_reg_241 : STD_LOGIC_VECTOR (11 downto 0);
    signal r_V_fu_165_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal r_V_reg_246 : STD_LOGIC_VECTOR (11 downto 0);
    signal exitcond1_i_fu_180_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sig_cseq_ST_st2_fsm_1 : STD_LOGIC;
    signal ap_sig_bdd_80 : BOOLEAN;
    signal i_V_fu_185_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal i_V_reg_255 : STD_LOGIC_VECTOR (10 downto 0);
    signal exitcond2_i_fu_195_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal exitcond2_i_reg_260 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sig_cseq_ST_pp0_stg0_fsm_2 : STD_LOGIC;
    signal ap_sig_bdd_91 : BOOLEAN;
    signal ap_reg_ppiten_pp0_it0 : STD_LOGIC := '0';
    signal ap_sig_bdd_102 : BOOLEAN;
    signal ap_sig_ioackin_video_out_TREADY : STD_LOGIC;
    signal ap_reg_ppiten_pp0_it1 : STD_LOGIC := '0';
    signal j_V_fu_200_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal axi_last_V_fu_206_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal axi_last_V_reg_269 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_i_reg_143 : STD_LOGIC_VECTOR (10 downto 0);
    signal ap_sig_cseq_ST_st5_fsm_3 : STD_LOGIC;
    signal ap_sig_bdd_132 : BOOLEAN;
    signal tmp_user_V_fu_86 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_reg_ioackin_video_out_TREADY : STD_LOGIC := '0';
    signal p_cast_i_fu_176_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal p_1_cast_i_fu_191_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (3 downto 0);


begin




    -- the current state (ap_CS_fsm) of the state machine. --
    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_st1_fsm_0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    -- ap_done_reg assign process. --
    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_continue)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and not((exitcond1_i_fu_180_p2 = ap_const_lv1_0)))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    -- ap_reg_ioackin_video_out_TREADY assign process. --
    ap_reg_ioackin_video_out_TREADY_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_reg_ioackin_video_out_TREADY <= ap_const_logic_0;
            else
                if ((((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_2) and (exitcond2_i_reg_260 = ap_const_lv1_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1) and not(((ap_sig_bdd_102 or ((exitcond2_i_reg_260 = ap_const_lv1_0) and (ap_const_logic_0 = ap_sig_ioackin_video_out_TREADY))) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1)))))) then 
                    ap_reg_ioackin_video_out_TREADY <= ap_const_logic_0;
                elsif ((((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_2) and (exitcond2_i_reg_260 = ap_const_lv1_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1) and not((ap_sig_bdd_102 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1))) and (ap_const_logic_1 = video_out_TREADY)))) then 
                    ap_reg_ioackin_video_out_TREADY <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    -- ap_reg_ppiten_pp0_it0 assign process. --
    ap_reg_ppiten_pp0_it0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_reg_ppiten_pp0_it0 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_2) and not(((ap_sig_bdd_102 or ((exitcond2_i_reg_260 = ap_const_lv1_0) and (ap_const_logic_0 = ap_sig_ioackin_video_out_TREADY))) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1))) and not((exitcond2_i_fu_195_p2 = ap_const_lv1_0)))) then 
                    ap_reg_ppiten_pp0_it0 <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and (exitcond1_i_fu_180_p2 = ap_const_lv1_0))) then 
                    ap_reg_ppiten_pp0_it0 <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    -- ap_reg_ppiten_pp0_it1 assign process. --
    ap_reg_ppiten_pp0_it1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_reg_ppiten_pp0_it1 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_2) and not(((ap_sig_bdd_102 or ((exitcond2_i_reg_260 = ap_const_lv1_0) and (ap_const_logic_0 = ap_sig_ioackin_video_out_TREADY))) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1))) and (exitcond2_i_fu_195_p2 = ap_const_lv1_0))) then 
                    ap_reg_ppiten_pp0_it1 <= ap_const_logic_1;
                elsif ((((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and (exitcond1_i_fu_180_p2 = ap_const_lv1_0)) or ((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_2) and not(((ap_sig_bdd_102 or ((exitcond2_i_reg_260 = ap_const_lv1_0) and (ap_const_logic_0 = ap_sig_ioackin_video_out_TREADY))) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1))) and not((exitcond2_i_fu_195_p2 = ap_const_lv1_0))))) then 
                    ap_reg_ppiten_pp0_it1 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    -- p_1_i_reg_154 assign process. --
    p_1_i_reg_154_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_2) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and not(((ap_sig_bdd_102 or ((exitcond2_i_reg_260 = ap_const_lv1_0) and (ap_const_logic_0 = ap_sig_ioackin_video_out_TREADY))) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1))) and (exitcond2_i_fu_195_p2 = ap_const_lv1_0))) then 
                p_1_i_reg_154 <= j_V_fu_200_p2;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and (exitcond1_i_fu_180_p2 = ap_const_lv1_0))) then 
                p_1_i_reg_154 <= ap_const_lv11_0;
            end if; 
        end if;
    end process;

    -- p_i_reg_143 assign process. --
    p_i_reg_143_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not(ap_sig_bdd_66))) then 
                p_i_reg_143 <= ap_const_lv11_0;
            elsif ((ap_const_logic_1 = ap_sig_cseq_ST_st5_fsm_3)) then 
                p_i_reg_143 <= i_V_reg_255;
            end if; 
        end if;
    end process;

    -- tmp_user_V_fu_86 assign process. --
    tmp_user_V_fu_86_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_2) and (exitcond2_i_reg_260 = ap_const_lv1_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1) and not(((ap_sig_bdd_102 or ((exitcond2_i_reg_260 = ap_const_lv1_0) and (ap_const_logic_0 = ap_sig_ioackin_video_out_TREADY))) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1))))) then 
                tmp_user_V_fu_86 <= ap_const_lv1_0;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not(ap_sig_bdd_66))) then 
                tmp_user_V_fu_86 <= ap_const_lv1_1;
            end if; 
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_2) and not(((ap_sig_bdd_102 or ((exitcond2_i_reg_260 = ap_const_lv1_0) and (ap_const_logic_0 = ap_sig_ioackin_video_out_TREADY))) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1))) and (exitcond2_i_fu_195_p2 = ap_const_lv1_0))) then
                axi_last_V_reg_269 <= axi_last_V_fu_206_p2;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not(ap_sig_bdd_66))) then
                cols_V_reg_241 <= img_cols_V_dout;
                r_V_reg_246 <= r_V_fu_165_p2;
                rows_V_reg_236 <= img_rows_V_dout;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_2) and not(((ap_sig_bdd_102 or ((exitcond2_i_reg_260 = ap_const_lv1_0) and (ap_const_logic_0 = ap_sig_ioackin_video_out_TREADY))) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1))))) then
                exitcond2_i_reg_260 <= exitcond2_i_fu_195_p2;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1)) then
                i_V_reg_255 <= i_V_fu_185_p2;
            end if;
        end if;
    end process;

    -- the next state (ap_NS_fsm) of the state machine. --
    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_sig_bdd_66, exitcond1_i_fu_180_p2, exitcond2_i_fu_195_p2, exitcond2_i_reg_260, ap_reg_ppiten_pp0_it0, ap_sig_bdd_102, ap_sig_ioackin_video_out_TREADY, ap_reg_ppiten_pp0_it1)
    begin
        case ap_CS_fsm is
            when ap_ST_st1_fsm_0 => 
                if (not(ap_sig_bdd_66)) then
                    ap_NS_fsm <= ap_ST_st2_fsm_1;
                else
                    ap_NS_fsm <= ap_ST_st1_fsm_0;
                end if;
            when ap_ST_st2_fsm_1 => 
                if (not((exitcond1_i_fu_180_p2 = ap_const_lv1_0))) then
                    ap_NS_fsm <= ap_ST_st1_fsm_0;
                else
                    ap_NS_fsm <= ap_ST_pp0_stg0_fsm_2;
                end if;
            when ap_ST_pp0_stg0_fsm_2 => 
                if (not(((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and not(((ap_sig_bdd_102 or ((exitcond2_i_reg_260 = ap_const_lv1_0) and (ap_const_logic_0 = ap_sig_ioackin_video_out_TREADY))) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1))) and not((exitcond2_i_fu_195_p2 = ap_const_lv1_0))))) then
                    ap_NS_fsm <= ap_ST_pp0_stg0_fsm_2;
                elsif (((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and not(((ap_sig_bdd_102 or ((exitcond2_i_reg_260 = ap_const_lv1_0) and (ap_const_logic_0 = ap_sig_ioackin_video_out_TREADY))) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1))) and not((exitcond2_i_fu_195_p2 = ap_const_lv1_0)))) then
                    ap_NS_fsm <= ap_ST_st5_fsm_3;
                else
                    ap_NS_fsm <= ap_ST_pp0_stg0_fsm_2;
                end if;
            when ap_ST_st5_fsm_3 => 
                ap_NS_fsm <= ap_ST_st2_fsm_1;
            when others =>  
                ap_NS_fsm <= "XXXX";
        end case;
    end process;

    -- ap_done assign process. --
    ap_done_assign_proc : process(ap_done_reg, exitcond1_i_fu_180_p2, ap_sig_cseq_ST_st2_fsm_1)
    begin
        if (((ap_const_logic_1 = ap_done_reg) or ((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and not((exitcond1_i_fu_180_p2 = ap_const_lv1_0))))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_idle assign process. --
    ap_idle_assign_proc : process(ap_start, ap_sig_cseq_ST_st1_fsm_0)
    begin
        if ((not((ap_const_logic_1 = ap_start)) and (ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_ready assign process. --
    ap_ready_assign_proc : process(exitcond1_i_fu_180_p2, ap_sig_cseq_ST_st2_fsm_1)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and not((exitcond1_i_fu_180_p2 = ap_const_lv1_0)))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_bdd_102 assign process. --
    ap_sig_bdd_102_assign_proc : process(img_data_stream_0_V_empty_n, img_data_stream_1_V_empty_n, exitcond2_i_reg_260)
    begin
                ap_sig_bdd_102 <= (((img_data_stream_0_V_empty_n = ap_const_logic_0) and (exitcond2_i_reg_260 = ap_const_lv1_0)) or ((exitcond2_i_reg_260 = ap_const_lv1_0) and (img_data_stream_1_V_empty_n = ap_const_logic_0)));
    end process;


    -- ap_sig_bdd_132 assign process. --
    ap_sig_bdd_132_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_132 <= (ap_const_lv1_1 = ap_CS_fsm(3 downto 3));
    end process;


    -- ap_sig_bdd_23 assign process. --
    ap_sig_bdd_23_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_23 <= (ap_CS_fsm(0 downto 0) = ap_const_lv1_1);
    end process;


    -- ap_sig_bdd_66 assign process. --
    ap_sig_bdd_66_assign_proc : process(ap_start, ap_done_reg, img_rows_V_empty_n, img_cols_V_empty_n)
    begin
                ap_sig_bdd_66 <= ((img_rows_V_empty_n = ap_const_logic_0) or (img_cols_V_empty_n = ap_const_logic_0) or (ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;


    -- ap_sig_bdd_80 assign process. --
    ap_sig_bdd_80_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_80 <= (ap_const_lv1_1 = ap_CS_fsm(1 downto 1));
    end process;


    -- ap_sig_bdd_91 assign process. --
    ap_sig_bdd_91_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_91 <= (ap_const_lv1_1 = ap_CS_fsm(2 downto 2));
    end process;


    -- ap_sig_cseq_ST_pp0_stg0_fsm_2 assign process. --
    ap_sig_cseq_ST_pp0_stg0_fsm_2_assign_proc : process(ap_sig_bdd_91)
    begin
        if (ap_sig_bdd_91) then 
            ap_sig_cseq_ST_pp0_stg0_fsm_2 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_pp0_stg0_fsm_2 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st1_fsm_0 assign process. --
    ap_sig_cseq_ST_st1_fsm_0_assign_proc : process(ap_sig_bdd_23)
    begin
        if (ap_sig_bdd_23) then 
            ap_sig_cseq_ST_st1_fsm_0 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st1_fsm_0 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st2_fsm_1 assign process. --
    ap_sig_cseq_ST_st2_fsm_1_assign_proc : process(ap_sig_bdd_80)
    begin
        if (ap_sig_bdd_80) then 
            ap_sig_cseq_ST_st2_fsm_1 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st2_fsm_1 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st5_fsm_3 assign process. --
    ap_sig_cseq_ST_st5_fsm_3_assign_proc : process(ap_sig_bdd_132)
    begin
        if (ap_sig_bdd_132) then 
            ap_sig_cseq_ST_st5_fsm_3 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st5_fsm_3 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_ioackin_video_out_TREADY assign process. --
    ap_sig_ioackin_video_out_TREADY_assign_proc : process(video_out_TREADY, ap_reg_ioackin_video_out_TREADY)
    begin
        if ((ap_const_logic_0 = ap_reg_ioackin_video_out_TREADY)) then 
            ap_sig_ioackin_video_out_TREADY <= video_out_TREADY;
        else 
            ap_sig_ioackin_video_out_TREADY <= ap_const_logic_1;
        end if; 
    end process;

    axi_last_V_fu_206_p2 <= "1" when (p_1_cast_i_fu_191_p1 = r_V_reg_246) else "0";
    exitcond1_i_fu_180_p2 <= "1" when (p_cast_i_fu_176_p1 = rows_V_reg_236) else "0";
    exitcond2_i_fu_195_p2 <= "1" when (p_1_cast_i_fu_191_p1 = cols_V_reg_241) else "0";
    i_V_fu_185_p2 <= std_logic_vector(unsigned(p_i_reg_143) + unsigned(ap_const_lv11_1));

    -- img_cols_V_read assign process. --
    img_cols_V_read_assign_proc : process(ap_sig_cseq_ST_st1_fsm_0, ap_sig_bdd_66)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not(ap_sig_bdd_66))) then 
            img_cols_V_read <= ap_const_logic_1;
        else 
            img_cols_V_read <= ap_const_logic_0;
        end if; 
    end process;


    -- img_data_stream_0_V_read assign process. --
    img_data_stream_0_V_read_assign_proc : process(exitcond2_i_reg_260, ap_sig_cseq_ST_pp0_stg0_fsm_2, ap_sig_bdd_102, ap_sig_ioackin_video_out_TREADY, ap_reg_ppiten_pp0_it1)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_2) and (exitcond2_i_reg_260 = ap_const_lv1_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1) and not(((ap_sig_bdd_102 or ((exitcond2_i_reg_260 = ap_const_lv1_0) and (ap_const_logic_0 = ap_sig_ioackin_video_out_TREADY))) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1))))) then 
            img_data_stream_0_V_read <= ap_const_logic_1;
        else 
            img_data_stream_0_V_read <= ap_const_logic_0;
        end if; 
    end process;


    -- img_data_stream_1_V_read assign process. --
    img_data_stream_1_V_read_assign_proc : process(exitcond2_i_reg_260, ap_sig_cseq_ST_pp0_stg0_fsm_2, ap_sig_bdd_102, ap_sig_ioackin_video_out_TREADY, ap_reg_ppiten_pp0_it1)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_2) and (exitcond2_i_reg_260 = ap_const_lv1_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1) and not(((ap_sig_bdd_102 or ((exitcond2_i_reg_260 = ap_const_lv1_0) and (ap_const_logic_0 = ap_sig_ioackin_video_out_TREADY))) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1))))) then 
            img_data_stream_1_V_read <= ap_const_logic_1;
        else 
            img_data_stream_1_V_read <= ap_const_logic_0;
        end if; 
    end process;


    -- img_rows_V_read assign process. --
    img_rows_V_read_assign_proc : process(ap_sig_cseq_ST_st1_fsm_0, ap_sig_bdd_66)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not(ap_sig_bdd_66))) then 
            img_rows_V_read <= ap_const_logic_1;
        else 
            img_rows_V_read <= ap_const_logic_0;
        end if; 
    end process;

    j_V_fu_200_p2 <= std_logic_vector(unsigned(p_1_i_reg_154) + unsigned(ap_const_lv11_1));
    p_1_cast_i_fu_191_p1 <= std_logic_vector(resize(unsigned(p_1_i_reg_154),12));
    p_cast_i_fu_176_p1 <= std_logic_vector(resize(unsigned(p_i_reg_143),12));
    r_V_fu_165_p2 <= std_logic_vector(unsigned(img_cols_V_dout) + unsigned(ap_const_lv12_FFF));
    video_out_TDATA <= (img_data_stream_1_V_dout & img_data_stream_0_V_dout);
    video_out_TDEST <= ap_const_lv1_0;
    video_out_TID <= ap_const_lv1_0;
    video_out_TKEEP <= ap_const_lv2_3;
    video_out_TLAST <= axi_last_V_reg_269;
    video_out_TSTRB <= ap_const_lv2_0;
    video_out_TUSER <= tmp_user_V_fu_86;

    -- video_out_TVALID assign process. --
    video_out_TVALID_assign_proc : process(exitcond2_i_reg_260, ap_sig_cseq_ST_pp0_stg0_fsm_2, ap_sig_bdd_102, ap_reg_ppiten_pp0_it1, ap_reg_ioackin_video_out_TREADY)
    begin
        if ((((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_2) and (exitcond2_i_reg_260 = ap_const_lv1_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1) and not((ap_sig_bdd_102 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1))) and (ap_const_logic_0 = ap_reg_ioackin_video_out_TREADY)))) then 
            video_out_TVALID <= ap_const_logic_1;
        else 
            video_out_TVALID <= ap_const_logic_0;
        end if; 
    end process;

end behav;
