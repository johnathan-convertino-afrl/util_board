# create board base ips

ip_vlvn_version_check "latticesemi.com:module:pll:1.8.0"

prj_add_source "ip/clk_wiz_1/clk_wiz_1.ipx"

ip_vlvn_version_check "latticesemi.com:module:osc:1.4.0"

prj_add_source "ip/clk_osc_1/clk_osc_1.ipx"

prj_add_source "constr/crosslink-nx_eval_board_base_constr.sdc"
