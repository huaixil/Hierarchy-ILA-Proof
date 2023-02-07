module pe_core(
__ILA_pe_core_grant__,
act_port_ready,
addr,
axi_rw,
clk,
data_in_0,
data_in_1,
data_in_10,
data_in_11,
data_in_12,
data_in_13,
data_in_14,
data_in_15,
data_in_2,
data_in_3,
data_in_4,
data_in_5,
data_in_6,
data_in_7,
data_in_8,
data_in_9,
input_port_addr,
input_port_data,
input_port_index,
input_port_valid,
pe_start,
pe_start_valid,
rst,
rva_in_valid,
wstrb,
__ILA_pe_core_acc_decode__,
__ILA_pe_core_decode_of_PE0_CONFIG_CLUSTER_TABLE_FIRST__,
__ILA_pe_core_decode_of_PE0_CONFIG_CLUSTER_TABLE_SECOND__,
__ILA_pe_core_decode_of_PE0_CONFIG_MEM_MNGR_FIRST__,
__ILA_pe_core_decode_of_PE0_CONFIG_MEM_MNGR_SECOND__,
__ILA_pe_core_decode_of_PE0_CONFIG_RNN_LAYER_SIZING__,
__ILA_pe_core_decode_of_PE0_CORE_STORE_INPUT_BUFFER__,
__ILA_pe_core_decode_of_PE0_CORE_STORE_WEIGHT_BUFFER__,
__ILA_pe_core_decode_of_PE0_core_bias__,
__ILA_pe_core_decode_of_PE0_core_is_start__,
__ILA_pe_core_decode_of_PE0_core_mac__,
__ILA_pe_core_decode_of_PE0_core_out__,
__ILA_pe_core_decode_of_PE0_core_out_sent__,
__ILA_pe_core_decode_of_PE0_core_prep__,
__ILA_pe_core_decode_of_PE0_core_read_gb__,
__ILA_pe_core_valid__,
pe0_core_weight_buffer_addr0,
pe0_core_weight_buffer_data0,
pe0_core_weight_buffer_wen0,
pe0_core_weight_buffer_addr1,
pe0_core_weight_buffer_data1,
pe0_core_weight_buffer_wen1,
pe0_core_weight_buffer_addr2,
pe0_core_weight_buffer_data2,
pe0_core_weight_buffer_wen2,
pe0_core_weight_buffer_addr3,
pe0_core_weight_buffer_data3,
pe0_core_weight_buffer_wen3,
pe0_core_weight_buffer_addr4,
pe0_core_weight_buffer_data4,
pe0_core_weight_buffer_wen4,
pe0_core_weight_buffer_addr5,
pe0_core_weight_buffer_data5,
pe0_core_weight_buffer_wen5,
pe0_core_weight_buffer_addr6,
pe0_core_weight_buffer_data6,
pe0_core_weight_buffer_wen6,
pe0_core_weight_buffer_addr7,
pe0_core_weight_buffer_data7,
pe0_core_weight_buffer_wen7,
pe0_core_weight_buffer_addr8,
pe0_core_weight_buffer_data8,
pe0_core_weight_buffer_wen8,
pe0_core_weight_buffer_addr9,
pe0_core_weight_buffer_data9,
pe0_core_weight_buffer_wen9,
pe0_core_weight_buffer_addr10,
pe0_core_weight_buffer_data10,
pe0_core_weight_buffer_wen10,
pe0_core_weight_buffer_addr11,
pe0_core_weight_buffer_data11,
pe0_core_weight_buffer_wen11,
pe0_core_weight_buffer_addr12,
pe0_core_weight_buffer_data12,
pe0_core_weight_buffer_wen12,
pe0_core_weight_buffer_addr13,
pe0_core_weight_buffer_data13,
pe0_core_weight_buffer_wen13,
pe0_core_weight_buffer_addr14,
pe0_core_weight_buffer_data14,
pe0_core_weight_buffer_wen14,
pe0_core_weight_buffer_addr15,
pe0_core_weight_buffer_data15,
pe0_core_weight_buffer_wen15,
pe0_core_input_buffer_addr0,
pe0_core_input_buffer_data0,
pe0_core_input_buffer_wen0,
pe0_core_input_buffer_addr1,
pe0_core_input_buffer_data1,
pe0_core_input_buffer_wen1,
pe0_core_input_buffer_addr2,
pe0_core_input_buffer_data2,
pe0_core_input_buffer_wen2,
pe0_core_input_buffer_addr3,
pe0_core_input_buffer_data3,
pe0_core_input_buffer_wen3,
pe0_core_input_buffer_addr4,
pe0_core_input_buffer_data4,
pe0_core_input_buffer_wen4,
pe0_core_input_buffer_addr5,
pe0_core_input_buffer_data5,
pe0_core_input_buffer_wen5,
pe0_core_input_buffer_addr6,
pe0_core_input_buffer_data6,
pe0_core_input_buffer_wen6,
pe0_core_input_buffer_addr7,
pe0_core_input_buffer_data7,
pe0_core_input_buffer_wen7,
pe0_core_input_buffer_addr8,
pe0_core_input_buffer_data8,
pe0_core_input_buffer_wen8,
pe0_core_input_buffer_addr9,
pe0_core_input_buffer_data9,
pe0_core_input_buffer_wen9,
pe0_core_input_buffer_addr10,
pe0_core_input_buffer_data10,
pe0_core_input_buffer_wen10,
pe0_core_input_buffer_addr11,
pe0_core_input_buffer_data11,
pe0_core_input_buffer_wen11,
pe0_core_input_buffer_addr12,
pe0_core_input_buffer_data12,
pe0_core_input_buffer_wen12,
pe0_core_input_buffer_addr13,
pe0_core_input_buffer_data13,
pe0_core_input_buffer_wen13,
pe0_core_input_buffer_addr14,
pe0_core_input_buffer_data14,
pe0_core_input_buffer_wen14,
pe0_core_input_buffer_addr15,
pe0_core_input_buffer_data15,
pe0_core_input_buffer_wen15,
rva_in_ready,
pe_start_ready,
input_port_ready,
PE0_core_act_vector_0,
PE0_core_act_vector_1,
PE0_core_act_vector_2,
PE0_core_act_vector_3,
PE0_core_act_vector_4,
PE0_core_act_vector_5,
PE0_core_act_vector_6,
PE0_core_act_vector_7,
PE0_core_act_vector_8,
PE0_core_act_vector_9,
PE0_core_act_vector_10,
PE0_core_act_vector_11,
PE0_core_act_vector_12,
PE0_core_act_vector_13,
PE0_core_act_vector_14,
PE0_core_act_vector_15,
pe0_act_reg_port_valid,
cluster_table_first_Entry_0,
cluster_table_first_Entry_1,
cluster_table_first_Entry_2,
cluster_table_first_Entry_3,
cluster_table_first_Entry_4,
cluster_table_first_Entry_5,
cluster_table_first_Entry_6,
cluster_table_first_Entry_7,
cluster_table_first_Entry_8,
cluster_table_first_Entry_9,
cluster_table_first_Entry_10,
cluster_table_first_Entry_11,
cluster_table_first_Entry_12,
cluster_table_first_Entry_13,
cluster_table_first_Entry_14,
cluster_table_first_Entry_15,
cluster_table_second_Entry_0,
cluster_table_second_Entry_1,
cluster_table_second_Entry_2,
cluster_table_second_Entry_3,
cluster_table_second_Entry_4,
cluster_table_second_Entry_5,
cluster_table_second_Entry_6,
cluster_table_second_Entry_7,
cluster_table_second_Entry_8,
cluster_table_second_Entry_9,
cluster_table_second_Entry_10,
cluster_table_second_Entry_11,
cluster_table_second_Entry_12,
cluster_table_second_Entry_13,
cluster_table_second_Entry_14,
cluster_table_second_Entry_15,
pe0_mem_mngr_first_zero_active,
pe0_mem_mngr_first_adpfloat_bias_w,
pe0_mem_mngr_first_adpfloat_bias_b,
pe0_mem_mngr_first_adpfloat_bias_i,
pe0_mem_mngr_first_num_input,
pe0_mem_mngr_first_base_weight,
pe0_mem_mngr_first_base_bias,
pe0_mem_mngr_first_base_input,
pe0_mem_mngr_second_zero_active,
pe0_mem_mngr_second_adpfloat_bias_w,
pe0_mem_mngr_second_adpfloat_bias_b,
pe0_mem_mngr_second_adpfloat_bias_i,
pe0_mem_mngr_second_num_input,
pe0_mem_mngr_second_base_weight,
pe0_mem_mngr_second_base_bias,
pe0_mem_mngr_second_base_input,
pe0_rnn_layer_sizing_is_valid,
pe0_rnn_layer_sizing_is_zero_first,
pe0_rnn_layer_sizing_is_cluster,
pe0_rnn_layer_sizing_is_bias,
pe0_rnn_layer_sizing_num_manager,
pe0_rnn_layer_sizing_num_output,
pe0_core_state,
pe0_core_is_start,
pe0_core_manager_cntr,
pe0_core_input_counter,
pe0_core_output_counter,
PE0_core_accum_vector_0,
PE0_core_accum_vector_1,
PE0_core_accum_vector_2,
PE0_core_accum_vector_3,
PE0_core_accum_vector_4,
PE0_core_accum_vector_5,
PE0_core_accum_vector_6,
PE0_core_accum_vector_7,
PE0_core_accum_vector_8,
PE0_core_accum_vector_9,
PE0_core_accum_vector_10,
PE0_core_accum_vector_11,
PE0_core_accum_vector_12,
PE0_core_accum_vector_13,
PE0_core_accum_vector_14,
PE0_core_accum_vector_15
);
input     [13:0] __ILA_pe_core_grant__;
input            act_port_ready;
input     [23:0] addr;
input            axi_rw;
input            clk;
input      [7:0] data_in_0;
input      [7:0] data_in_1;
input      [7:0] data_in_10;
input      [7:0] data_in_11;
input      [7:0] data_in_12;
input      [7:0] data_in_13;
input      [7:0] data_in_14;
input      [7:0] data_in_15;
input      [7:0] data_in_2;
input      [7:0] data_in_3;
input      [7:0] data_in_4;
input      [7:0] data_in_5;
input      [7:0] data_in_6;
input      [7:0] data_in_7;
input      [7:0] data_in_8;
input      [7:0] data_in_9;
input      [7:0] input_port_addr;
input    [127:0] input_port_data;
input      [1:0] input_port_index;
input            input_port_valid;
input            pe_start;
input            pe_start_valid;
input            rst;
input            rva_in_valid;
input     [15:0] wstrb;
output     [13:0] __ILA_pe_core_acc_decode__;
output            __ILA_pe_core_decode_of_PE0_CONFIG_CLUSTER_TABLE_FIRST__;
output            __ILA_pe_core_decode_of_PE0_CONFIG_CLUSTER_TABLE_SECOND__;
output            __ILA_pe_core_decode_of_PE0_CONFIG_MEM_MNGR_FIRST__;
output            __ILA_pe_core_decode_of_PE0_CONFIG_MEM_MNGR_SECOND__;
output            __ILA_pe_core_decode_of_PE0_CONFIG_RNN_LAYER_SIZING__;
output            __ILA_pe_core_decode_of_PE0_CORE_STORE_INPUT_BUFFER__;
output            __ILA_pe_core_decode_of_PE0_CORE_STORE_WEIGHT_BUFFER__;
output            __ILA_pe_core_decode_of_PE0_core_bias__;
output            __ILA_pe_core_decode_of_PE0_core_is_start__;
output            __ILA_pe_core_decode_of_PE0_core_mac__;
output            __ILA_pe_core_decode_of_PE0_core_out__;
output            __ILA_pe_core_decode_of_PE0_core_out_sent__;
output            __ILA_pe_core_decode_of_PE0_core_prep__;
output            __ILA_pe_core_decode_of_PE0_core_read_gb__;
output            __ILA_pe_core_valid__;
output     [31:0] pe0_core_weight_buffer_addr0;
output      [7:0] pe0_core_weight_buffer_data0;
output            pe0_core_weight_buffer_wen0;
output     [31:0] pe0_core_weight_buffer_addr1;
output      [7:0] pe0_core_weight_buffer_data1;
output            pe0_core_weight_buffer_wen1;
output     [31:0] pe0_core_weight_buffer_addr2;
output      [7:0] pe0_core_weight_buffer_data2;
output            pe0_core_weight_buffer_wen2;
output     [31:0] pe0_core_weight_buffer_addr3;
output      [7:0] pe0_core_weight_buffer_data3;
output            pe0_core_weight_buffer_wen3;
output     [31:0] pe0_core_weight_buffer_addr4;
output      [7:0] pe0_core_weight_buffer_data4;
output            pe0_core_weight_buffer_wen4;
output     [31:0] pe0_core_weight_buffer_addr5;
output      [7:0] pe0_core_weight_buffer_data5;
output            pe0_core_weight_buffer_wen5;
output     [31:0] pe0_core_weight_buffer_addr6;
output      [7:0] pe0_core_weight_buffer_data6;
output            pe0_core_weight_buffer_wen6;
output     [31:0] pe0_core_weight_buffer_addr7;
output      [7:0] pe0_core_weight_buffer_data7;
output            pe0_core_weight_buffer_wen7;
output     [31:0] pe0_core_weight_buffer_addr8;
output      [7:0] pe0_core_weight_buffer_data8;
output            pe0_core_weight_buffer_wen8;
output     [31:0] pe0_core_weight_buffer_addr9;
output      [7:0] pe0_core_weight_buffer_data9;
output            pe0_core_weight_buffer_wen9;
output     [31:0] pe0_core_weight_buffer_addr10;
output      [7:0] pe0_core_weight_buffer_data10;
output            pe0_core_weight_buffer_wen10;
output     [31:0] pe0_core_weight_buffer_addr11;
output      [7:0] pe0_core_weight_buffer_data11;
output            pe0_core_weight_buffer_wen11;
output     [31:0] pe0_core_weight_buffer_addr12;
output      [7:0] pe0_core_weight_buffer_data12;
output            pe0_core_weight_buffer_wen12;
output     [31:0] pe0_core_weight_buffer_addr13;
output      [7:0] pe0_core_weight_buffer_data13;
output            pe0_core_weight_buffer_wen13;
output     [31:0] pe0_core_weight_buffer_addr14;
output      [7:0] pe0_core_weight_buffer_data14;
output            pe0_core_weight_buffer_wen14;
output     [31:0] pe0_core_weight_buffer_addr15;
output      [7:0] pe0_core_weight_buffer_data15;
output            pe0_core_weight_buffer_wen15;
output     [31:0] pe0_core_input_buffer_addr0;
output      [7:0] pe0_core_input_buffer_data0;
output            pe0_core_input_buffer_wen0;
output     [31:0] pe0_core_input_buffer_addr1;
output      [7:0] pe0_core_input_buffer_data1;
output            pe0_core_input_buffer_wen1;
output     [31:0] pe0_core_input_buffer_addr2;
output      [7:0] pe0_core_input_buffer_data2;
output            pe0_core_input_buffer_wen2;
output     [31:0] pe0_core_input_buffer_addr3;
output      [7:0] pe0_core_input_buffer_data3;
output            pe0_core_input_buffer_wen3;
output     [31:0] pe0_core_input_buffer_addr4;
output      [7:0] pe0_core_input_buffer_data4;
output            pe0_core_input_buffer_wen4;
output     [31:0] pe0_core_input_buffer_addr5;
output      [7:0] pe0_core_input_buffer_data5;
output            pe0_core_input_buffer_wen5;
output     [31:0] pe0_core_input_buffer_addr6;
output      [7:0] pe0_core_input_buffer_data6;
output            pe0_core_input_buffer_wen6;
output     [31:0] pe0_core_input_buffer_addr7;
output      [7:0] pe0_core_input_buffer_data7;
output            pe0_core_input_buffer_wen7;
output     [31:0] pe0_core_input_buffer_addr8;
output      [7:0] pe0_core_input_buffer_data8;
output            pe0_core_input_buffer_wen8;
output     [31:0] pe0_core_input_buffer_addr9;
output      [7:0] pe0_core_input_buffer_data9;
output            pe0_core_input_buffer_wen9;
output     [31:0] pe0_core_input_buffer_addr10;
output      [7:0] pe0_core_input_buffer_data10;
output            pe0_core_input_buffer_wen10;
output     [31:0] pe0_core_input_buffer_addr11;
output      [7:0] pe0_core_input_buffer_data11;
output            pe0_core_input_buffer_wen11;
output     [31:0] pe0_core_input_buffer_addr12;
output      [7:0] pe0_core_input_buffer_data12;
output            pe0_core_input_buffer_wen12;
output     [31:0] pe0_core_input_buffer_addr13;
output      [7:0] pe0_core_input_buffer_data13;
output            pe0_core_input_buffer_wen13;
output     [31:0] pe0_core_input_buffer_addr14;
output      [7:0] pe0_core_input_buffer_data14;
output            pe0_core_input_buffer_wen14;
output     [31:0] pe0_core_input_buffer_addr15;
output      [7:0] pe0_core_input_buffer_data15;
output            pe0_core_input_buffer_wen15;
output reg            rva_in_ready;
output reg            pe_start_ready;
output reg            input_port_ready;
output reg     [19:0] PE0_core_act_vector_0;
output reg     [19:0] PE0_core_act_vector_1;
output reg     [19:0] PE0_core_act_vector_2;
output reg     [19:0] PE0_core_act_vector_3;
output reg     [19:0] PE0_core_act_vector_4;
output reg     [19:0] PE0_core_act_vector_5;
output reg     [19:0] PE0_core_act_vector_6;
output reg     [19:0] PE0_core_act_vector_7;
output reg     [19:0] PE0_core_act_vector_8;
output reg     [19:0] PE0_core_act_vector_9;
output reg     [19:0] PE0_core_act_vector_10;
output reg     [19:0] PE0_core_act_vector_11;
output reg     [19:0] PE0_core_act_vector_12;
output reg     [19:0] PE0_core_act_vector_13;
output reg     [19:0] PE0_core_act_vector_14;
output reg     [19:0] PE0_core_act_vector_15;
output reg            pe0_act_reg_port_valid;
output reg      [7:0] cluster_table_first_Entry_0;
output reg      [7:0] cluster_table_first_Entry_1;
output reg      [7:0] cluster_table_first_Entry_2;
output reg      [7:0] cluster_table_first_Entry_3;
output reg      [7:0] cluster_table_first_Entry_4;
output reg      [7:0] cluster_table_first_Entry_5;
output reg      [7:0] cluster_table_first_Entry_6;
output reg      [7:0] cluster_table_first_Entry_7;
output reg      [7:0] cluster_table_first_Entry_8;
output reg      [7:0] cluster_table_first_Entry_9;
output reg      [7:0] cluster_table_first_Entry_10;
output reg      [7:0] cluster_table_first_Entry_11;
output reg      [7:0] cluster_table_first_Entry_12;
output reg      [7:0] cluster_table_first_Entry_13;
output reg      [7:0] cluster_table_first_Entry_14;
output reg      [7:0] cluster_table_first_Entry_15;
output reg      [7:0] cluster_table_second_Entry_0;
output reg      [7:0] cluster_table_second_Entry_1;
output reg      [7:0] cluster_table_second_Entry_2;
output reg      [7:0] cluster_table_second_Entry_3;
output reg      [7:0] cluster_table_second_Entry_4;
output reg      [7:0] cluster_table_second_Entry_5;
output reg      [7:0] cluster_table_second_Entry_6;
output reg      [7:0] cluster_table_second_Entry_7;
output reg      [7:0] cluster_table_second_Entry_8;
output reg      [7:0] cluster_table_second_Entry_9;
output reg      [7:0] cluster_table_second_Entry_10;
output reg      [7:0] cluster_table_second_Entry_11;
output reg      [7:0] cluster_table_second_Entry_12;
output reg      [7:0] cluster_table_second_Entry_13;
output reg      [7:0] cluster_table_second_Entry_14;
output reg      [7:0] cluster_table_second_Entry_15;
output reg            pe0_mem_mngr_first_zero_active;
output reg      [2:0] pe0_mem_mngr_first_adpfloat_bias_w;
output reg      [2:0] pe0_mem_mngr_first_adpfloat_bias_b;
output reg      [2:0] pe0_mem_mngr_first_adpfloat_bias_i;
output reg      [7:0] pe0_mem_mngr_first_num_input;
output reg     [15:0] pe0_mem_mngr_first_base_weight;
output reg     [15:0] pe0_mem_mngr_first_base_bias;
output reg     [15:0] pe0_mem_mngr_first_base_input;
output reg            pe0_mem_mngr_second_zero_active;
output reg      [2:0] pe0_mem_mngr_second_adpfloat_bias_w;
output reg      [2:0] pe0_mem_mngr_second_adpfloat_bias_b;
output reg      [2:0] pe0_mem_mngr_second_adpfloat_bias_i;
output reg      [7:0] pe0_mem_mngr_second_num_input;
output reg     [15:0] pe0_mem_mngr_second_base_weight;
output reg     [15:0] pe0_mem_mngr_second_base_bias;
output reg     [15:0] pe0_mem_mngr_second_base_input;
output reg            pe0_rnn_layer_sizing_is_valid;
output reg            pe0_rnn_layer_sizing_is_zero_first;
output reg            pe0_rnn_layer_sizing_is_cluster;
output reg            pe0_rnn_layer_sizing_is_bias;
output reg      [3:0] pe0_rnn_layer_sizing_num_manager;
output reg      [7:0] pe0_rnn_layer_sizing_num_output;
output reg      [2:0] pe0_core_state;
output reg            pe0_core_is_start;
output reg            pe0_core_manager_cntr;
output reg      [7:0] pe0_core_input_counter;
output reg      [7:0] pe0_core_output_counter;
output reg     [31:0] PE0_core_accum_vector_0;
output reg     [31:0] PE0_core_accum_vector_1;
output reg     [31:0] PE0_core_accum_vector_2;
output reg     [31:0] PE0_core_accum_vector_3;
output reg     [31:0] PE0_core_accum_vector_4;
output reg     [31:0] PE0_core_accum_vector_5;
output reg     [31:0] PE0_core_accum_vector_6;
output reg     [31:0] PE0_core_accum_vector_7;
output reg     [31:0] PE0_core_accum_vector_8;
output reg     [31:0] PE0_core_accum_vector_9;
output reg     [31:0] PE0_core_accum_vector_10;
output reg     [31:0] PE0_core_accum_vector_11;
output reg     [31:0] PE0_core_accum_vector_12;
output reg     [31:0] PE0_core_accum_vector_13;
output reg     [31:0] PE0_core_accum_vector_14;
output reg     [31:0] PE0_core_accum_vector_15;
wire     [13:0] __ILA_pe_core_acc_decode__;
wire            __ILA_pe_core_decode_of_PE0_CONFIG_CLUSTER_TABLE_FIRST__;
wire            __ILA_pe_core_decode_of_PE0_CONFIG_CLUSTER_TABLE_SECOND__;
wire            __ILA_pe_core_decode_of_PE0_CONFIG_MEM_MNGR_FIRST__;
wire            __ILA_pe_core_decode_of_PE0_CONFIG_MEM_MNGR_SECOND__;
wire            __ILA_pe_core_decode_of_PE0_CONFIG_RNN_LAYER_SIZING__;
wire            __ILA_pe_core_decode_of_PE0_CORE_STORE_INPUT_BUFFER__;
wire            __ILA_pe_core_decode_of_PE0_CORE_STORE_WEIGHT_BUFFER__;
wire            __ILA_pe_core_decode_of_PE0_core_bias__;
wire            __ILA_pe_core_decode_of_PE0_core_is_start__;
wire            __ILA_pe_core_decode_of_PE0_core_mac__;
wire            __ILA_pe_core_decode_of_PE0_core_out__;
wire            __ILA_pe_core_decode_of_PE0_core_out_sent__;
wire            __ILA_pe_core_decode_of_PE0_core_prep__;
wire            __ILA_pe_core_decode_of_PE0_core_read_gb__;
wire     [13:0] __ILA_pe_core_grant__;
wire            __ILA_pe_core_valid__;
wire            act_port_ready;
wire     [23:0] addr;
wire            axi_rw;
wire     [15:0] bv_16_0_n194;
wire            bv_1_0_n55;
wire            bv_1_1_n0;
wire     [23:0] bv_24_4194320_n27;
wire     [23:0] bv_24_4194336_n15;
wire     [23:0] bv_24_4194352_n2;
wire     [23:0] bv_24_4194368_n21;
wire     [23:0] bv_24_4194384_n9;
wire     [23:0] bv_24_5242880_n33;
wire     [23:0] bv_24_6291440_n37;
wire     [23:0] bv_24_6291456_n44;
wire     [23:0] bv_24_6295536_n48;
wire      [1:0] bv_2_0_n195;
wire     [31:0] bv_32_0_n167;
wire     [31:0] bv_32_10_n147;
wire     [31:0] bv_32_11_n145;
wire     [31:0] bv_32_12_n143;
wire     [31:0] bv_32_13_n141;
wire     [31:0] bv_32_14_n139;
wire     [31:0] bv_32_15_n137;
wire     [31:0] bv_32_1_n165;
wire     [31:0] bv_32_2_n163;
wire     [31:0] bv_32_3_n161;
wire     [31:0] bv_32_4_n159;
wire     [31:0] bv_32_5242880_n135;
wire     [31:0] bv_32_5_n157;
wire     [31:0] bv_32_6291456_n175;
wire     [31:0] bv_32_6_n155;
wire     [31:0] bv_32_7_n153;
wire     [31:0] bv_32_8_n151;
wire     [31:0] bv_32_9_n149;
wire      [2:0] bv_3_0_n62;
wire      [2:0] bv_3_1_n75;
wire      [2:0] bv_3_2_n80;
wire      [2:0] bv_3_3_n85;
wire      [2:0] bv_3_4_n90;
wire      [3:0] bv_4_0_n248;
wire      [3:0] bv_4_1_n119;
wire      [7:0] bv_8_0_n133;
wire      [7:0] bv_8_1_n122;
wire            clk;
wire      [7:0] data_in_0;
wire      [7:0] data_in_1;
wire      [7:0] data_in_10;
wire      [7:0] data_in_11;
wire      [7:0] data_in_12;
wire      [7:0] data_in_13;
wire      [7:0] data_in_14;
wire      [7:0] data_in_15;
wire      [7:0] data_in_2;
wire      [7:0] data_in_3;
wire      [7:0] data_in_4;
wire      [7:0] data_in_5;
wire      [7:0] data_in_6;
wire      [7:0] data_in_7;
wire      [7:0] data_in_8;
wire      [7:0] data_in_9;
wire      [7:0] input_port_addr;
wire    [127:0] input_port_data;
wire      [1:0] input_port_index;
wire            input_port_valid;
wire            n1;
wire            n10;
wire      [2:0] n100;
wire      [2:0] n101;
wire     [15:0] n102;
wire      [7:0] n103;
wire     [15:0] n104;
wire     [15:0] n105;
wire     [15:0] n106;
wire            n107;
wire      [2:0] n108;
wire      [2:0] n109;
wire            n11;
wire      [2:0] n110;
wire     [15:0] n111;
wire      [7:0] n112;
wire     [15:0] n113;
wire     [15:0] n114;
wire     [15:0] n115;
wire            n116;
wire            n117;
wire      [3:0] n118;
wire            n12;
wire      [3:0] n120;
wire            n121;
wire      [7:0] n123;
wire            n124;
wire            n125;
wire            n126;
wire            n127;
wire            n128;
wire      [3:0] n129;
wire            n13;
wire            n130;
wire            n131;
wire            n132;
wire     [31:0] n134;
wire     [31:0] n136;
wire     [31:0] n138;
wire            n14;
wire     [31:0] n140;
wire     [31:0] n142;
wire     [31:0] n144;
wire     [31:0] n146;
wire     [31:0] n148;
wire     [31:0] n150;
wire     [31:0] n152;
wire     [31:0] n154;
wire     [31:0] n156;
wire     [31:0] n158;
wire            n16;
wire     [31:0] n160;
wire     [31:0] n162;
wire     [31:0] n164;
wire     [31:0] n166;
wire     [31:0] n168;
wire            n169;
wire            n17;
wire            n170;
wire            n171;
wire            n172;
wire            n173;
wire     [31:0] n174;
wire     [31:0] n176;
wire     [31:0] n177;
wire     [31:0] n178;
wire     [31:0] n179;
wire            n18;
wire     [31:0] n180;
wire     [31:0] n181;
wire     [31:0] n182;
wire     [31:0] n183;
wire     [31:0] n184;
wire     [31:0] n185;
wire     [31:0] n186;
wire     [31:0] n187;
wire     [31:0] n188;
wire     [31:0] n189;
wire            n19;
wire     [31:0] n190;
wire     [31:0] n191;
wire     [31:0] n192;
wire            n193;
wire            n196;
wire     [15:0] n197;
wire     [15:0] n198;
wire     [15:0] n199;
wire            n20;
wire     [31:0] n200;
wire     [31:0] n201;
wire     [31:0] n202;
wire      [7:0] n203;
wire     [31:0] n204;
wire      [7:0] n205;
wire     [31:0] n206;
wire      [7:0] n207;
wire     [31:0] n208;
wire      [7:0] n209;
wire     [31:0] n210;
wire      [7:0] n211;
wire     [31:0] n212;
wire      [7:0] n213;
wire     [31:0] n214;
wire      [7:0] n215;
wire     [31:0] n216;
wire      [7:0] n217;
wire     [31:0] n218;
wire      [7:0] n219;
wire            n22;
wire     [31:0] n220;
wire      [7:0] n221;
wire     [31:0] n222;
wire      [7:0] n223;
wire     [31:0] n224;
wire      [7:0] n225;
wire     [31:0] n226;
wire      [7:0] n227;
wire     [31:0] n228;
wire      [7:0] n229;
wire            n23;
wire     [31:0] n230;
wire      [7:0] n231;
wire     [31:0] n232;
wire      [7:0] n233;
wire            n234;
wire            n235;
wire            n236;
wire            n237;
wire            n238;
wire      [2:0] n239;
wire            n24;
wire            n240;
wire      [7:0] n241;
wire      [7:0] n242;
wire            n243;
wire            n244;
wire            n245;
wire      [2:0] n246;
wire      [3:0] n247;
wire            n249;
wire            n25;
wire            n250;
wire            n251;
wire      [2:0] n252;
wire      [2:0] n253;
wire            n254;
wire            n255;
wire      [7:0] n256;
wire      [7:0] n257;
wire            n258;
wire            n259;
wire            n26;
wire            n260;
wire      [7:0] n261;
wire      [7:0] n262;
wire      [7:0] n263;
wire            n28;
wire            n29;
wire            n3;
wire            n30;
wire            n31;
wire            n32;
wire            n34;
wire            n35;
wire            n36;
wire            n38;
wire            n39;
wire            n4;
wire            n40;
wire            n41;
wire            n42;
wire            n43;
wire            n45;
wire            n46;
wire            n47;
wire            n49;
wire            n5;
wire            n50;
wire            n51;
wire            n52;
wire            n53;
wire            n54;
wire            n56;
wire            n57;
wire            n58;
wire            n59;
wire            n6;
wire            n60;
wire            n61;
wire            n63;
wire            n64;
wire            n65;
wire            n66;
wire            n67;
wire            n68;
wire            n69;
wire            n7;
wire            n70;
wire            n71;
wire            n72;
wire            n73;
wire            n74;
wire            n76;
wire            n77;
wire            n78;
wire            n79;
wire            n8;
wire            n81;
wire            n82;
wire            n83;
wire            n84;
wire            n86;
wire            n87;
wire            n88;
wire            n89;
wire            n91;
wire            n92;
wire            n93;
wire            n94;
wire            n95;
wire            n96;
wire            n97;
wire            n98;
wire      [2:0] n99;
wire     [31:0] pe0_core_input_buffer_addr0;
wire     [31:0] pe0_core_input_buffer_addr1;
wire     [31:0] pe0_core_input_buffer_addr10;
wire     [31:0] pe0_core_input_buffer_addr11;
wire     [31:0] pe0_core_input_buffer_addr12;
wire     [31:0] pe0_core_input_buffer_addr13;
wire     [31:0] pe0_core_input_buffer_addr14;
wire     [31:0] pe0_core_input_buffer_addr15;
wire     [31:0] pe0_core_input_buffer_addr2;
wire     [31:0] pe0_core_input_buffer_addr3;
wire     [31:0] pe0_core_input_buffer_addr4;
wire     [31:0] pe0_core_input_buffer_addr5;
wire     [31:0] pe0_core_input_buffer_addr6;
wire     [31:0] pe0_core_input_buffer_addr7;
wire     [31:0] pe0_core_input_buffer_addr8;
wire     [31:0] pe0_core_input_buffer_addr9;
wire      [7:0] pe0_core_input_buffer_data0;
wire      [7:0] pe0_core_input_buffer_data1;
wire      [7:0] pe0_core_input_buffer_data10;
wire      [7:0] pe0_core_input_buffer_data11;
wire      [7:0] pe0_core_input_buffer_data12;
wire      [7:0] pe0_core_input_buffer_data13;
wire      [7:0] pe0_core_input_buffer_data14;
wire      [7:0] pe0_core_input_buffer_data15;
wire      [7:0] pe0_core_input_buffer_data2;
wire      [7:0] pe0_core_input_buffer_data3;
wire      [7:0] pe0_core_input_buffer_data4;
wire      [7:0] pe0_core_input_buffer_data5;
wire      [7:0] pe0_core_input_buffer_data6;
wire      [7:0] pe0_core_input_buffer_data7;
wire      [7:0] pe0_core_input_buffer_data8;
wire      [7:0] pe0_core_input_buffer_data9;
wire            pe0_core_input_buffer_wen0;
wire            pe0_core_input_buffer_wen1;
wire            pe0_core_input_buffer_wen10;
wire            pe0_core_input_buffer_wen11;
wire            pe0_core_input_buffer_wen12;
wire            pe0_core_input_buffer_wen13;
wire            pe0_core_input_buffer_wen14;
wire            pe0_core_input_buffer_wen15;
wire            pe0_core_input_buffer_wen2;
wire            pe0_core_input_buffer_wen3;
wire            pe0_core_input_buffer_wen4;
wire            pe0_core_input_buffer_wen5;
wire            pe0_core_input_buffer_wen6;
wire            pe0_core_input_buffer_wen7;
wire            pe0_core_input_buffer_wen8;
wire            pe0_core_input_buffer_wen9;
wire     [31:0] pe0_core_weight_buffer_addr0;
wire     [31:0] pe0_core_weight_buffer_addr1;
wire     [31:0] pe0_core_weight_buffer_addr10;
wire     [31:0] pe0_core_weight_buffer_addr11;
wire     [31:0] pe0_core_weight_buffer_addr12;
wire     [31:0] pe0_core_weight_buffer_addr13;
wire     [31:0] pe0_core_weight_buffer_addr14;
wire     [31:0] pe0_core_weight_buffer_addr15;
wire     [31:0] pe0_core_weight_buffer_addr2;
wire     [31:0] pe0_core_weight_buffer_addr3;
wire     [31:0] pe0_core_weight_buffer_addr4;
wire     [31:0] pe0_core_weight_buffer_addr5;
wire     [31:0] pe0_core_weight_buffer_addr6;
wire     [31:0] pe0_core_weight_buffer_addr7;
wire     [31:0] pe0_core_weight_buffer_addr8;
wire     [31:0] pe0_core_weight_buffer_addr9;
wire      [7:0] pe0_core_weight_buffer_data0;
wire      [7:0] pe0_core_weight_buffer_data1;
wire      [7:0] pe0_core_weight_buffer_data10;
wire      [7:0] pe0_core_weight_buffer_data11;
wire      [7:0] pe0_core_weight_buffer_data12;
wire      [7:0] pe0_core_weight_buffer_data13;
wire      [7:0] pe0_core_weight_buffer_data14;
wire      [7:0] pe0_core_weight_buffer_data15;
wire      [7:0] pe0_core_weight_buffer_data2;
wire      [7:0] pe0_core_weight_buffer_data3;
wire      [7:0] pe0_core_weight_buffer_data4;
wire      [7:0] pe0_core_weight_buffer_data5;
wire      [7:0] pe0_core_weight_buffer_data6;
wire      [7:0] pe0_core_weight_buffer_data7;
wire      [7:0] pe0_core_weight_buffer_data8;
wire      [7:0] pe0_core_weight_buffer_data9;
wire            pe0_core_weight_buffer_wen0;
wire            pe0_core_weight_buffer_wen1;
wire            pe0_core_weight_buffer_wen10;
wire            pe0_core_weight_buffer_wen11;
wire            pe0_core_weight_buffer_wen12;
wire            pe0_core_weight_buffer_wen13;
wire            pe0_core_weight_buffer_wen14;
wire            pe0_core_weight_buffer_wen15;
wire            pe0_core_weight_buffer_wen2;
wire            pe0_core_weight_buffer_wen3;
wire            pe0_core_weight_buffer_wen4;
wire            pe0_core_weight_buffer_wen5;
wire            pe0_core_weight_buffer_wen6;
wire            pe0_core_weight_buffer_wen7;
wire            pe0_core_weight_buffer_wen8;
wire            pe0_core_weight_buffer_wen9;
wire            pe_start;
wire            pe_start_valid;
wire            rst;
wire            rva_in_valid;
wire     [15:0] wstrb;
assign __ILA_pe_core_valid__ = 1'b1 ;
assign bv_1_1_n0 = 1'h1 ;
assign n1 =  ( axi_rw ) == ( bv_1_1_n0 )  ;
assign bv_24_4194352_n2 = 24'h400030 ;
assign n3 =  ( addr ) == ( bv_24_4194352_n2 )  ;
assign n4 =  ( rva_in_valid ) & ( rva_in_ready )  ;
assign n5 =  ( n4 ) == ( bv_1_1_n0 )  ;
assign n6 =  ( n3 ) & (n5 )  ;
assign n7 =  ( n1 ) & (n6 )  ;
assign __ILA_pe_core_decode_of_PE0_CONFIG_CLUSTER_TABLE_FIRST__ = n7 ;
assign __ILA_pe_core_acc_decode__[0] = __ILA_pe_core_decode_of_PE0_CONFIG_CLUSTER_TABLE_FIRST__ ;
assign n8 =  ( axi_rw ) == ( bv_1_1_n0 )  ;
assign bv_24_4194384_n9 = 24'h400050 ;
assign n10 =  ( addr ) == ( bv_24_4194384_n9 )  ;
assign n11 =  ( n4 ) == ( bv_1_1_n0 )  ;
assign n12 =  ( n10 ) & (n11 )  ;
assign n13 =  ( n8 ) & (n12 )  ;
assign __ILA_pe_core_decode_of_PE0_CONFIG_CLUSTER_TABLE_SECOND__ = n13 ;
assign __ILA_pe_core_acc_decode__[1] = __ILA_pe_core_decode_of_PE0_CONFIG_CLUSTER_TABLE_SECOND__ ;
assign n14 =  ( axi_rw ) == ( bv_1_1_n0 )  ;
assign bv_24_4194336_n15 = 24'h400020 ;
assign n16 =  ( addr ) == ( bv_24_4194336_n15 )  ;
assign n17 =  ( n4 ) == ( bv_1_1_n0 )  ;
assign n18 =  ( n16 ) & (n17 )  ;
assign n19 =  ( n14 ) & (n18 )  ;
assign __ILA_pe_core_decode_of_PE0_CONFIG_MEM_MNGR_FIRST__ = n19 ;
assign __ILA_pe_core_acc_decode__[2] = __ILA_pe_core_decode_of_PE0_CONFIG_MEM_MNGR_FIRST__ ;
assign n20 =  ( axi_rw ) == ( bv_1_1_n0 )  ;
assign bv_24_4194368_n21 = 24'h400040 ;
assign n22 =  ( addr ) == ( bv_24_4194368_n21 )  ;
assign n23 =  ( n4 ) == ( bv_1_1_n0 )  ;
assign n24 =  ( n22 ) & (n23 )  ;
assign n25 =  ( n20 ) & (n24 )  ;
assign __ILA_pe_core_decode_of_PE0_CONFIG_MEM_MNGR_SECOND__ = n25 ;
assign __ILA_pe_core_acc_decode__[3] = __ILA_pe_core_decode_of_PE0_CONFIG_MEM_MNGR_SECOND__ ;
assign n26 =  ( axi_rw ) == ( bv_1_1_n0 )  ;
assign bv_24_4194320_n27 = 24'h400010 ;
assign n28 =  ( addr ) == ( bv_24_4194320_n27 )  ;
assign n29 =  ( n4 ) == ( bv_1_1_n0 )  ;
assign n30 =  ( n28 ) & (n29 )  ;
assign n31 =  ( n26 ) & (n30 )  ;
assign __ILA_pe_core_decode_of_PE0_CONFIG_RNN_LAYER_SIZING__ = n31 ;
assign __ILA_pe_core_acc_decode__[4] = __ILA_pe_core_decode_of_PE0_CONFIG_RNN_LAYER_SIZING__ ;
assign n32 =  ( axi_rw ) == ( bv_1_1_n0 )  ;
assign bv_24_5242880_n33 = 24'h500000 ;
assign n34 =  ( addr ) == ( bv_24_5242880_n33 )  ;
assign n35 =  ( addr ) > ( bv_24_5242880_n33 )  ;
assign n36 =  ( n34 ) | ( n35 )  ;
assign bv_24_6291440_n37 = 24'h5ffff0 ;
assign n38 =  ( addr ) == ( bv_24_6291440_n37 )  ;
assign n39 =  ( addr ) < ( bv_24_6291440_n37 )  ;
assign n40 =  ( n38 ) | ( n39 )  ;
assign n41 =  ( n36 ) & (n40 )  ;
assign n42 =  ( n32 ) & (n41 )  ;
assign __ILA_pe_core_decode_of_PE0_CORE_STORE_WEIGHT_BUFFER__ = n42 ;
assign __ILA_pe_core_acc_decode__[5] = __ILA_pe_core_decode_of_PE0_CORE_STORE_WEIGHT_BUFFER__ ;
assign n43 =  ( axi_rw ) == ( bv_1_1_n0 )  ;
assign bv_24_6291456_n44 = 24'h600000 ;
assign n45 =  ( addr ) == ( bv_24_6291456_n44 )  ;
assign n46 =  ( addr ) > ( bv_24_6291456_n44 )  ;
assign n47 =  ( n45 ) | ( n46 )  ;
assign bv_24_6295536_n48 = 24'h600ff0 ;
assign n49 =  ( addr ) == ( bv_24_6295536_n48 )  ;
assign n50 =  ( addr ) < ( bv_24_6295536_n48 )  ;
assign n51 =  ( n49 ) | ( n50 )  ;
assign n52 =  ( n47 ) & (n51 )  ;
assign n53 =  ( n43 ) & (n52 )  ;
assign __ILA_pe_core_decode_of_PE0_CORE_STORE_INPUT_BUFFER__ = n53 ;
assign __ILA_pe_core_acc_decode__[6] = __ILA_pe_core_decode_of_PE0_CORE_STORE_INPUT_BUFFER__ ;
assign n54 =  ( pe0_rnn_layer_sizing_is_valid ) == ( bv_1_1_n0 )  ;
assign bv_1_0_n55 = 1'h0 ;
assign n56 =  ( pe0_core_is_start ) == ( bv_1_0_n55 )  ;
assign n57 =  ( n54 ) & (n56 )  ;
assign n58 =  ( input_port_valid ) == ( bv_1_1_n0 )  ;
assign n59 =  ( input_port_ready ) == ( bv_1_1_n0 )  ;
assign n60 =  ( n58 ) & (n59 )  ;
assign n61 =  ( n57 ) & (n60 )  ;
assign bv_3_0_n62 = 3'h0 ;
assign n63 =  ( pe0_core_state ) == ( bv_3_0_n62 )  ;
assign n64 =  ( n61 ) & (n63 )  ;
assign __ILA_pe_core_decode_of_PE0_core_read_gb__ = n64 ;
assign __ILA_pe_core_acc_decode__[7] = __ILA_pe_core_decode_of_PE0_core_read_gb__ ;
assign n65 =  ( pe_start_valid ) == ( bv_1_1_n0 )  ;
assign n66 =  ( pe_start ) == ( bv_1_1_n0 )  ;
assign n67 =  ( n65 ) & (n66 )  ;
assign n68 =  ( n54 ) & (n67 )  ;
assign n69 =  ( pe_start_ready ) == ( bv_1_1_n0 )  ;
assign n70 =  ( n68 ) & (n69 )  ;
assign n71 =  ( pe0_core_state ) == ( bv_3_0_n62 )  ;
assign n72 =  ( n70 ) & (n71 )  ;
assign __ILA_pe_core_decode_of_PE0_core_is_start__ = n72 ;
assign __ILA_pe_core_acc_decode__[8] = __ILA_pe_core_decode_of_PE0_core_is_start__ ;
assign n73 =  ( pe0_core_is_start ) == ( bv_1_1_n0 )  ;
assign n74 =  ( n54 ) & (n73 )  ;
assign bv_3_1_n75 = 3'h1 ;
assign n76 =  ( pe0_core_state ) == ( bv_3_1_n75 )  ;
assign n77 =  ( n74 ) & (n76 )  ;
assign __ILA_pe_core_decode_of_PE0_core_prep__ = n77 ;
assign __ILA_pe_core_acc_decode__[9] = __ILA_pe_core_decode_of_PE0_core_prep__ ;
assign n78 =  ( pe0_core_is_start ) == ( bv_1_1_n0 )  ;
assign n79 =  ( n54 ) & (n78 )  ;
assign bv_3_2_n80 = 3'h2 ;
assign n81 =  ( pe0_core_state ) == ( bv_3_2_n80 )  ;
assign n82 =  ( n79 ) & (n81 )  ;
assign __ILA_pe_core_decode_of_PE0_core_mac__ = n82 ;
assign __ILA_pe_core_acc_decode__[10] = __ILA_pe_core_decode_of_PE0_core_mac__ ;
assign n83 =  ( pe0_core_is_start ) == ( bv_1_1_n0 )  ;
assign n84 =  ( n54 ) & (n83 )  ;
assign bv_3_3_n85 = 3'h3 ;
assign n86 =  ( pe0_core_state ) == ( bv_3_3_n85 )  ;
assign n87 =  ( n84 ) & (n86 )  ;
assign __ILA_pe_core_decode_of_PE0_core_bias__ = n87 ;
assign __ILA_pe_core_acc_decode__[11] = __ILA_pe_core_decode_of_PE0_core_bias__ ;
assign n88 =  ( pe0_core_is_start ) == ( bv_1_1_n0 )  ;
assign n89 =  ( n54 ) & (n88 )  ;
assign bv_3_4_n90 = 3'h4 ;
assign n91 =  ( pe0_core_state ) == ( bv_3_4_n90 )  ;
assign n92 =  ( n89 ) & (n91 )  ;
assign n93 =  ( pe0_act_reg_port_valid ) == ( bv_1_0_n55 )  ;
assign n94 =  ( n92 ) & (n93 )  ;
assign __ILA_pe_core_decode_of_PE0_core_out__ = n94 ;
assign __ILA_pe_core_acc_decode__[12] = __ILA_pe_core_decode_of_PE0_core_out__ ;
assign n95 =  ( pe0_act_reg_port_valid ) == ( bv_1_1_n0 )  ;
assign n96 =  ( act_port_ready ) == ( bv_1_1_n0 )  ;
assign n97 =  ( n95 ) & (n96 )  ;
assign __ILA_pe_core_decode_of_PE0_core_out_sent__ = n97 ;
assign __ILA_pe_core_acc_decode__[13] = __ILA_pe_core_decode_of_PE0_core_out_sent__ ;
assign n98 = data_in_0[0:0] ;
assign n99 = data_in_1[2:0] ;
assign n100 = data_in_2[2:0] ;
assign n101 = data_in_3[2:0] ;
assign n102 =  { ( data_in_5 ) , ( data_in_4 ) }  ;
assign n103 = n102[7:0] ;
assign n104 =  { ( data_in_7 ) , ( data_in_6 ) }  ;
assign n105 =  { ( data_in_9 ) , ( data_in_8 ) }  ;
assign n106 =  { ( data_in_11 ) , ( data_in_10 ) }  ;
assign n107 = data_in_0[0:0] ;
assign n108 = data_in_1[2:0] ;
assign n109 = data_in_2[2:0] ;
assign n110 = data_in_3[2:0] ;
assign n111 =  { ( data_in_5 ) , ( data_in_4 ) }  ;
assign n112 = n111[7:0] ;
assign n113 =  { ( data_in_7 ) , ( data_in_6 ) }  ;
assign n114 =  { ( data_in_9 ) , ( data_in_8 ) }  ;
assign n115 =  { ( data_in_11 ) , ( data_in_10 ) }  ;
assign n116 = data_in_0[0:0] ;
assign n117 = data_in_1[0:0] ;
assign n118 =  { ( bv_3_0_n62 ) , ( pe0_core_manager_cntr ) }  ;
assign bv_4_1_n119 = 4'h1 ;
assign n120 =  ( pe0_rnn_layer_sizing_num_manager ) - ( bv_4_1_n119 )  ;
assign n121 =  ( n118 ) == ( n120 )  ;
assign bv_8_1_n122 = 8'h1 ;
assign n123 =  ( pe0_rnn_layer_sizing_num_output ) - ( bv_8_1_n122 )  ;
assign n124 =  ( pe0_core_output_counter ) == ( n123 )  ;
assign n125 =  ( n121 ) & (n124 )  ;
assign n126 =  ( n125 ) ? ( bv_1_0_n55 ) : ( pe0_rnn_layer_sizing_is_zero_first ) ;
assign n127 = data_in_2[0:0] ;
assign n128 = data_in_3[0:0] ;
assign n129 = data_in_4[3:0] ;
assign n130 = ~ ( n42 )  ;
assign n131 =  ( 1'b1 ) & (n130 )  ;
assign n132 =  ( 1'b1 ) & (n42 )  ;
assign bv_8_0_n133 = 8'h0 ;
assign n134 =  { ( bv_8_0_n133 ) , ( addr ) }  ;
assign bv_32_5242880_n135 = 32'h500000 ;
assign n136 =  ( n134 ) - ( bv_32_5242880_n135 )  ;
assign bv_32_15_n137 = 32'hf ;
assign n138 =  ( n136 ) + ( bv_32_15_n137 )  ;
assign bv_32_14_n139 = 32'he ;
assign n140 =  ( n136 ) + ( bv_32_14_n139 )  ;
assign bv_32_13_n141 = 32'hd ;
assign n142 =  ( n136 ) + ( bv_32_13_n141 )  ;
assign bv_32_12_n143 = 32'hc ;
assign n144 =  ( n136 ) + ( bv_32_12_n143 )  ;
assign bv_32_11_n145 = 32'hb ;
assign n146 =  ( n136 ) + ( bv_32_11_n145 )  ;
assign bv_32_10_n147 = 32'ha ;
assign n148 =  ( n136 ) + ( bv_32_10_n147 )  ;
assign bv_32_9_n149 = 32'h9 ;
assign n150 =  ( n136 ) + ( bv_32_9_n149 )  ;
assign bv_32_8_n151 = 32'h8 ;
assign n152 =  ( n136 ) + ( bv_32_8_n151 )  ;
assign bv_32_7_n153 = 32'h7 ;
assign n154 =  ( n136 ) + ( bv_32_7_n153 )  ;
assign bv_32_6_n155 = 32'h6 ;
assign n156 =  ( n136 ) + ( bv_32_6_n155 )  ;
assign bv_32_5_n157 = 32'h5 ;
assign n158 =  ( n136 ) + ( bv_32_5_n157 )  ;
assign bv_32_4_n159 = 32'h4 ;
assign n160 =  ( n136 ) + ( bv_32_4_n159 )  ;
assign bv_32_3_n161 = 32'h3 ;
assign n162 =  ( n136 ) + ( bv_32_3_n161 )  ;
assign bv_32_2_n163 = 32'h2 ;
assign n164 =  ( n136 ) + ( bv_32_2_n163 )  ;
assign bv_32_1_n165 = 32'h1 ;
assign n166 =  ( n136 ) + ( bv_32_1_n165 )  ;
assign bv_32_0_n167 = 32'h0 ;
assign n168 =  ( n136 ) + ( bv_32_0_n167 )  ;
assign pe0_core_weight_buffer_addr0 = n132 ? (n138) : (0) ;
assign pe0_core_weight_buffer_data0 = n132 ? (data_in_15) : ('d0) ;
assign pe0_core_weight_buffer_wen0 = (n132) ? ( 1'b1 ) : (1'b0) ;
assign pe0_core_weight_buffer_addr1 = n132 ? (n140) : (0) ;
assign pe0_core_weight_buffer_data1 = n132 ? (data_in_14) : ('d0) ;
assign pe0_core_weight_buffer_wen1 = (n132) ? ( 1'b1 ) : (1'b0) ;
assign pe0_core_weight_buffer_addr2 = n132 ? (n142) : (0) ;
assign pe0_core_weight_buffer_data2 = n132 ? (data_in_13) : ('d0) ;
assign pe0_core_weight_buffer_wen2 = (n132) ? ( 1'b1 ) : (1'b0) ;
assign pe0_core_weight_buffer_addr3 = n132 ? (n144) : (0) ;
assign pe0_core_weight_buffer_data3 = n132 ? (data_in_12) : ('d0) ;
assign pe0_core_weight_buffer_wen3 = (n132) ? ( 1'b1 ) : (1'b0) ;
assign pe0_core_weight_buffer_addr4 = n132 ? (n146) : (0) ;
assign pe0_core_weight_buffer_data4 = n132 ? (data_in_11) : ('d0) ;
assign pe0_core_weight_buffer_wen4 = (n132) ? ( 1'b1 ) : (1'b0) ;
assign pe0_core_weight_buffer_addr5 = n132 ? (n148) : (0) ;
assign pe0_core_weight_buffer_data5 = n132 ? (data_in_10) : ('d0) ;
assign pe0_core_weight_buffer_wen5 = (n132) ? ( 1'b1 ) : (1'b0) ;
assign pe0_core_weight_buffer_addr6 = n132 ? (n150) : (0) ;
assign pe0_core_weight_buffer_data6 = n132 ? (data_in_9) : ('d0) ;
assign pe0_core_weight_buffer_wen6 = (n132) ? ( 1'b1 ) : (1'b0) ;
assign pe0_core_weight_buffer_addr7 = n132 ? (n152) : (0) ;
assign pe0_core_weight_buffer_data7 = n132 ? (data_in_8) : ('d0) ;
assign pe0_core_weight_buffer_wen7 = (n132) ? ( 1'b1 ) : (1'b0) ;
assign pe0_core_weight_buffer_addr8 = n132 ? (n154) : (0) ;
assign pe0_core_weight_buffer_data8 = n132 ? (data_in_7) : ('d0) ;
assign pe0_core_weight_buffer_wen8 = (n132) ? ( 1'b1 ) : (1'b0) ;
assign pe0_core_weight_buffer_addr9 = n132 ? (n156) : (0) ;
assign pe0_core_weight_buffer_data9 = n132 ? (data_in_6) : ('d0) ;
assign pe0_core_weight_buffer_wen9 = (n132) ? ( 1'b1 ) : (1'b0) ;
assign pe0_core_weight_buffer_addr10 = n132 ? (n158) : (0) ;
assign pe0_core_weight_buffer_data10 = n132 ? (data_in_5) : ('d0) ;
assign pe0_core_weight_buffer_wen10 = (n132) ? ( 1'b1 ) : (1'b0) ;
assign pe0_core_weight_buffer_addr11 = n132 ? (n160) : (0) ;
assign pe0_core_weight_buffer_data11 = n132 ? (data_in_4) : ('d0) ;
assign pe0_core_weight_buffer_wen11 = (n132) ? ( 1'b1 ) : (1'b0) ;
assign pe0_core_weight_buffer_addr12 = n132 ? (n162) : (0) ;
assign pe0_core_weight_buffer_data12 = n132 ? (data_in_3) : ('d0) ;
assign pe0_core_weight_buffer_wen12 = (n132) ? ( 1'b1 ) : (1'b0) ;
assign pe0_core_weight_buffer_addr13 = n132 ? (n164) : (0) ;
assign pe0_core_weight_buffer_data13 = n132 ? (data_in_2) : ('d0) ;
assign pe0_core_weight_buffer_wen13 = (n132) ? ( 1'b1 ) : (1'b0) ;
assign pe0_core_weight_buffer_addr14 = n132 ? (n166) : (0) ;
assign pe0_core_weight_buffer_data14 = n132 ? (data_in_1) : ('d0) ;
assign pe0_core_weight_buffer_wen14 = (n132) ? ( 1'b1 ) : (1'b0) ;
assign pe0_core_weight_buffer_addr15 = n132 ? (n168) : (0) ;
assign pe0_core_weight_buffer_data15 = n132 ? (data_in_0) : ('d0) ;
assign pe0_core_weight_buffer_wen15 = (n132) ? ( 1'b1 ) : (1'b0) ;
assign n169 = ~ ( n64 )  ;
assign n170 =  ( 1'b1 ) & (n169 )  ;
assign n171 = ~ ( n53 )  ;
assign n172 =  ( n170 ) & (n171 )  ;
assign n173 =  ( n170 ) & (n53 )  ;
assign n174 =  { ( bv_8_0_n133 ) , ( addr ) }  ;
assign bv_32_6291456_n175 = 32'h600000 ;
assign n176 =  ( n174 ) - ( bv_32_6291456_n175 )  ;
assign n177 =  ( n176 ) + ( bv_32_15_n137 )  ;
assign n178 =  ( n176 ) + ( bv_32_14_n139 )  ;
assign n179 =  ( n176 ) + ( bv_32_13_n141 )  ;
assign n180 =  ( n176 ) + ( bv_32_12_n143 )  ;
assign n181 =  ( n176 ) + ( bv_32_11_n145 )  ;
assign n182 =  ( n176 ) + ( bv_32_10_n147 )  ;
assign n183 =  ( n176 ) + ( bv_32_9_n149 )  ;
assign n184 =  ( n176 ) + ( bv_32_8_n151 )  ;
assign n185 =  ( n176 ) + ( bv_32_7_n153 )  ;
assign n186 =  ( n176 ) + ( bv_32_6_n155 )  ;
assign n187 =  ( n176 ) + ( bv_32_5_n157 )  ;
assign n188 =  ( n176 ) + ( bv_32_4_n159 )  ;
assign n189 =  ( n176 ) + ( bv_32_3_n161 )  ;
assign n190 =  ( n176 ) + ( bv_32_2_n163 )  ;
assign n191 =  ( n176 ) + ( bv_32_1_n165 )  ;
assign n192 =  ( n176 ) + ( bv_32_0_n167 )  ;
assign n193 =  ( 1'b1 ) & (n64 )  ;
assign bv_16_0_n194 = 16'h0 ;
assign bv_2_0_n195 = 2'h0 ;
assign n196 =  ( input_port_index ) == ( bv_2_0_n195 )  ;
assign n197 =  ( n196 ) ? ( pe0_mem_mngr_first_base_input ) : ( pe0_mem_mngr_second_base_input ) ;
assign n198 =  { ( bv_8_0_n133 ) , ( input_port_addr ) }  ;
assign n199 =  ( n197 ) + ( n198 )  ;
assign n200 =  { ( bv_16_0_n194 ) , ( n199 ) }  ;
assign n201 =  ( n200 ) << ( bv_32_4_n159 )  ;
assign n202 =  ( n201 ) + ( bv_32_15_n137 )  ;
assign n203 = input_port_data[127:120] ;
assign n204 =  ( n201 ) + ( bv_32_14_n139 )  ;
assign n205 = input_port_data[119:112] ;
assign n206 =  ( n201 ) + ( bv_32_13_n141 )  ;
assign n207 = input_port_data[111:104] ;
assign n208 =  ( n201 ) + ( bv_32_12_n143 )  ;
assign n209 = input_port_data[103:96] ;
assign n210 =  ( n201 ) + ( bv_32_11_n145 )  ;
assign n211 = input_port_data[95:88] ;
assign n212 =  ( n201 ) + ( bv_32_10_n147 )  ;
assign n213 = input_port_data[87:80] ;
assign n214 =  ( n201 ) + ( bv_32_9_n149 )  ;
assign n215 = input_port_data[79:72] ;
assign n216 =  ( n201 ) + ( bv_32_8_n151 )  ;
assign n217 = input_port_data[71:64] ;
assign n218 =  ( n201 ) + ( bv_32_7_n153 )  ;
assign n219 = input_port_data[63:56] ;
assign n220 =  ( n201 ) + ( bv_32_6_n155 )  ;
assign n221 = input_port_data[55:48] ;
assign n222 =  ( n201 ) + ( bv_32_5_n157 )  ;
assign n223 = input_port_data[47:40] ;
assign n224 =  ( n201 ) + ( bv_32_4_n159 )  ;
assign n225 = input_port_data[39:32] ;
assign n226 =  ( n201 ) + ( bv_32_3_n161 )  ;
assign n227 = input_port_data[31:24] ;
assign n228 =  ( n201 ) + ( bv_32_2_n163 )  ;
assign n229 = input_port_data[23:16] ;
assign n230 =  ( n201 ) + ( bv_32_1_n165 )  ;
assign n231 = input_port_data[15:8] ;
assign n232 =  ( n201 ) + ( bv_32_0_n167 )  ;
assign n233 = input_port_data[7:0] ;
assign pe0_core_input_buffer_addr0 = n193 ? (n202) : (n173 ? (n177) : (0)) ;
assign pe0_core_input_buffer_data0 = n193 ? (n203) : (n173 ? (data_in_15) : ('d0)) ;
assign pe0_core_input_buffer_wen0 = (n193) ? ( 1'b1 ) : ((n173) ? ( 1'b1 ) : (1'b0)) ;
assign pe0_core_input_buffer_addr1 = n193 ? (n204) : (n173 ? (n178) : (0)) ;
assign pe0_core_input_buffer_data1 = n193 ? (n205) : (n173 ? (data_in_14) : ('d0)) ;
assign pe0_core_input_buffer_wen1 = (n193) ? ( 1'b1 ) : ((n173) ? ( 1'b1 ) : (1'b0)) ;
assign pe0_core_input_buffer_addr2 = n193 ? (n206) : (n173 ? (n179) : (0)) ;
assign pe0_core_input_buffer_data2 = n193 ? (n207) : (n173 ? (data_in_13) : ('d0)) ;
assign pe0_core_input_buffer_wen2 = (n193) ? ( 1'b1 ) : ((n173) ? ( 1'b1 ) : (1'b0)) ;
assign pe0_core_input_buffer_addr3 = n193 ? (n208) : (n173 ? (n180) : (0)) ;
assign pe0_core_input_buffer_data3 = n193 ? (n209) : (n173 ? (data_in_12) : ('d0)) ;
assign pe0_core_input_buffer_wen3 = (n193) ? ( 1'b1 ) : ((n173) ? ( 1'b1 ) : (1'b0)) ;
assign pe0_core_input_buffer_addr4 = n193 ? (n210) : (n173 ? (n181) : (0)) ;
assign pe0_core_input_buffer_data4 = n193 ? (n211) : (n173 ? (data_in_11) : ('d0)) ;
assign pe0_core_input_buffer_wen4 = (n193) ? ( 1'b1 ) : ((n173) ? ( 1'b1 ) : (1'b0)) ;
assign pe0_core_input_buffer_addr5 = n193 ? (n212) : (n173 ? (n182) : (0)) ;
assign pe0_core_input_buffer_data5 = n193 ? (n213) : (n173 ? (data_in_10) : ('d0)) ;
assign pe0_core_input_buffer_wen5 = (n193) ? ( 1'b1 ) : ((n173) ? ( 1'b1 ) : (1'b0)) ;
assign pe0_core_input_buffer_addr6 = n193 ? (n214) : (n173 ? (n183) : (0)) ;
assign pe0_core_input_buffer_data6 = n193 ? (n215) : (n173 ? (data_in_9) : ('d0)) ;
assign pe0_core_input_buffer_wen6 = (n193) ? ( 1'b1 ) : ((n173) ? ( 1'b1 ) : (1'b0)) ;
assign pe0_core_input_buffer_addr7 = n193 ? (n216) : (n173 ? (n184) : (0)) ;
assign pe0_core_input_buffer_data7 = n193 ? (n217) : (n173 ? (data_in_8) : ('d0)) ;
assign pe0_core_input_buffer_wen7 = (n193) ? ( 1'b1 ) : ((n173) ? ( 1'b1 ) : (1'b0)) ;
assign pe0_core_input_buffer_addr8 = n193 ? (n218) : (n173 ? (n185) : (0)) ;
assign pe0_core_input_buffer_data8 = n193 ? (n219) : (n173 ? (data_in_7) : ('d0)) ;
assign pe0_core_input_buffer_wen8 = (n193) ? ( 1'b1 ) : ((n173) ? ( 1'b1 ) : (1'b0)) ;
assign pe0_core_input_buffer_addr9 = n193 ? (n220) : (n173 ? (n186) : (0)) ;
assign pe0_core_input_buffer_data9 = n193 ? (n221) : (n173 ? (data_in_6) : ('d0)) ;
assign pe0_core_input_buffer_wen9 = (n193) ? ( 1'b1 ) : ((n173) ? ( 1'b1 ) : (1'b0)) ;
assign pe0_core_input_buffer_addr10 = n193 ? (n222) : (n173 ? (n187) : (0)) ;
assign pe0_core_input_buffer_data10 = n193 ? (n223) : (n173 ? (data_in_5) : ('d0)) ;
assign pe0_core_input_buffer_wen10 = (n193) ? ( 1'b1 ) : ((n173) ? ( 1'b1 ) : (1'b0)) ;
assign pe0_core_input_buffer_addr11 = n193 ? (n224) : (n173 ? (n188) : (0)) ;
assign pe0_core_input_buffer_data11 = n193 ? (n225) : (n173 ? (data_in_4) : ('d0)) ;
assign pe0_core_input_buffer_wen11 = (n193) ? ( 1'b1 ) : ((n173) ? ( 1'b1 ) : (1'b0)) ;
assign pe0_core_input_buffer_addr12 = n193 ? (n226) : (n173 ? (n189) : (0)) ;
assign pe0_core_input_buffer_data12 = n193 ? (n227) : (n173 ? (data_in_3) : ('d0)) ;
assign pe0_core_input_buffer_wen12 = (n193) ? ( 1'b1 ) : ((n173) ? ( 1'b1 ) : (1'b0)) ;
assign pe0_core_input_buffer_addr13 = n193 ? (n228) : (n173 ? (n190) : (0)) ;
assign pe0_core_input_buffer_data13 = n193 ? (n229) : (n173 ? (data_in_2) : ('d0)) ;
assign pe0_core_input_buffer_wen13 = (n193) ? ( 1'b1 ) : ((n173) ? ( 1'b1 ) : (1'b0)) ;
assign pe0_core_input_buffer_addr14 = n193 ? (n230) : (n173 ? (n191) : (0)) ;
assign pe0_core_input_buffer_data14 = n193 ? (n231) : (n173 ? (data_in_1) : ('d0)) ;
assign pe0_core_input_buffer_wen14 = (n193) ? ( 1'b1 ) : ((n173) ? ( 1'b1 ) : (1'b0)) ;
assign pe0_core_input_buffer_addr15 = n193 ? (n232) : (n173 ? (n192) : (0)) ;
assign pe0_core_input_buffer_data15 = n193 ? (n233) : (n173 ? (data_in_0) : ('d0)) ;
assign pe0_core_input_buffer_wen15 = (n193) ? ( 1'b1 ) : ((n173) ? ( 1'b1 ) : (1'b0)) ;
assign n234 =  ( pe0_rnn_layer_sizing_is_zero_first ) == ( bv_1_1_n0 )  ;
assign n235 =  ( pe0_core_manager_cntr ) == ( bv_1_0_n55 )  ;
assign n236 =  ( n235 ) ? ( pe0_mem_mngr_first_zero_active ) : ( pe0_mem_mngr_second_zero_active ) ;
assign n237 =  ( n236 ) == ( bv_1_1_n0 )  ;
assign n238 =  ( n234 ) & (n237 )  ;
assign n239 =  ( n238 ) ? ( bv_3_3_n85 ) : ( bv_3_2_n80 ) ;
assign n240 =  ( pe0_core_manager_cntr ) == ( bv_1_0_n55 )  ;
assign n241 =  ( n240 ) ? ( pe0_mem_mngr_first_num_input ) : ( pe0_mem_mngr_second_num_input ) ;
assign n242 =  ( n241 ) - ( bv_8_1_n122 )  ;
assign n243 =  ( pe0_core_input_counter ) == ( n242 )  ;
assign n244 =  ( pe0_core_input_counter ) > ( n242 )  ;
assign n245 =  ( n243 ) | ( n244 )  ;
assign n246 =  ( n245 ) ? ( bv_3_3_n85 ) : ( bv_3_2_n80 ) ;
assign n247 =  { ( bv_3_0_n62 ) , ( pe0_core_manager_cntr ) }  ;
assign bv_4_0_n248 = 4'h0 ;
assign n249 =  ( n247 ) == ( bv_4_0_n248 )  ;
assign n250 =  ( pe0_core_output_counter ) == ( bv_8_0_n133 )  ;
assign n251 =  ( n249 ) & (n250 )  ;
assign n252 =  ( n251 ) ? ( bv_3_0_n62 ) : ( bv_3_1_n75 ) ;
assign n253 =  ( n251 ) ? ( bv_3_0_n62 ) : ( bv_3_1_n75 ) ;
assign n254 =  ( pe0_core_manager_cntr ) + ( bv_1_1_n0 )  ;
assign n255 =  ( n121 ) ? ( bv_1_0_n55 ) : ( n254 ) ;
assign n256 =  ( pe0_core_input_counter ) + ( bv_8_1_n122 )  ;
assign n257 =  ( n245 ) ? ( bv_8_0_n133 ) : ( n256 ) ;
assign n258 =  ( n121 ) & (n124 )  ;
assign n259 = ~ ( n124 )  ;
assign n260 =  ( n121 ) & (n259 )  ;
assign n261 =  ( pe0_core_output_counter ) + ( bv_8_1_n122 )  ;
assign n262 =  ( n260 ) ? ( n261 ) : ( pe0_core_output_counter ) ;
assign n263 =  ( n258 ) ? ( bv_8_0_n133 ) : ( n262 ) ;
always @(posedge clk) begin
   if(rst) begin
        pe0_core_output_counter <= 0;
        pe0_core_manager_cntr <= 0;
   end
   else if(__ILA_pe_core_valid__) begin
       if ( __ILA_pe_core_decode_of_PE0_core_is_start__ && __ILA_pe_core_grant__[8] ) begin
           pe0_act_reg_port_valid <= bv_1_0_n55;
       end else if ( __ILA_pe_core_decode_of_PE0_core_out__ && __ILA_pe_core_grant__[12] ) begin
           pe0_act_reg_port_valid <= bv_1_1_n0;
       end else if ( __ILA_pe_core_decode_of_PE0_core_out_sent__ && __ILA_pe_core_grant__[13] ) begin
           pe0_act_reg_port_valid <= bv_1_0_n55;
       end
       if ( __ILA_pe_core_decode_of_PE0_CONFIG_CLUSTER_TABLE_FIRST__ && __ILA_pe_core_grant__[0] ) begin
           cluster_table_first_Entry_0 <= data_in_0;
       end
       if ( __ILA_pe_core_decode_of_PE0_CONFIG_CLUSTER_TABLE_FIRST__ && __ILA_pe_core_grant__[0] ) begin
           cluster_table_first_Entry_1 <= data_in_1;
       end
       if ( __ILA_pe_core_decode_of_PE0_CONFIG_CLUSTER_TABLE_FIRST__ && __ILA_pe_core_grant__[0] ) begin
           cluster_table_first_Entry_2 <= data_in_2;
       end
       if ( __ILA_pe_core_decode_of_PE0_CONFIG_CLUSTER_TABLE_FIRST__ && __ILA_pe_core_grant__[0] ) begin
           cluster_table_first_Entry_3 <= data_in_3;
       end
       if ( __ILA_pe_core_decode_of_PE0_CONFIG_CLUSTER_TABLE_FIRST__ && __ILA_pe_core_grant__[0] ) begin
           cluster_table_first_Entry_4 <= data_in_4;
       end
       if ( __ILA_pe_core_decode_of_PE0_CONFIG_CLUSTER_TABLE_FIRST__ && __ILA_pe_core_grant__[0] ) begin
           cluster_table_first_Entry_5 <= data_in_5;
       end
       if ( __ILA_pe_core_decode_of_PE0_CONFIG_CLUSTER_TABLE_FIRST__ && __ILA_pe_core_grant__[0] ) begin
           cluster_table_first_Entry_6 <= data_in_6;
       end
       if ( __ILA_pe_core_decode_of_PE0_CONFIG_CLUSTER_TABLE_FIRST__ && __ILA_pe_core_grant__[0] ) begin
           cluster_table_first_Entry_7 <= data_in_7;
       end
       if ( __ILA_pe_core_decode_of_PE0_CONFIG_CLUSTER_TABLE_FIRST__ && __ILA_pe_core_grant__[0] ) begin
           cluster_table_first_Entry_8 <= data_in_8;
       end
       if ( __ILA_pe_core_decode_of_PE0_CONFIG_CLUSTER_TABLE_FIRST__ && __ILA_pe_core_grant__[0] ) begin
           cluster_table_first_Entry_9 <= data_in_9;
       end
       if ( __ILA_pe_core_decode_of_PE0_CONFIG_CLUSTER_TABLE_FIRST__ && __ILA_pe_core_grant__[0] ) begin
           cluster_table_first_Entry_10 <= data_in_10;
       end
       if ( __ILA_pe_core_decode_of_PE0_CONFIG_CLUSTER_TABLE_FIRST__ && __ILA_pe_core_grant__[0] ) begin
           cluster_table_first_Entry_11 <= data_in_11;
       end
       if ( __ILA_pe_core_decode_of_PE0_CONFIG_CLUSTER_TABLE_FIRST__ && __ILA_pe_core_grant__[0] ) begin
           cluster_table_first_Entry_12 <= data_in_12;
       end
       if ( __ILA_pe_core_decode_of_PE0_CONFIG_CLUSTER_TABLE_FIRST__ && __ILA_pe_core_grant__[0] ) begin
           cluster_table_first_Entry_13 <= data_in_13;
       end
       if ( __ILA_pe_core_decode_of_PE0_CONFIG_CLUSTER_TABLE_FIRST__ && __ILA_pe_core_grant__[0] ) begin
           cluster_table_first_Entry_14 <= data_in_14;
       end
       if ( __ILA_pe_core_decode_of_PE0_CONFIG_CLUSTER_TABLE_FIRST__ && __ILA_pe_core_grant__[0] ) begin
           cluster_table_first_Entry_15 <= data_in_15;
       end
       if ( __ILA_pe_core_decode_of_PE0_CONFIG_CLUSTER_TABLE_SECOND__ && __ILA_pe_core_grant__[1] ) begin
           cluster_table_second_Entry_0 <= data_in_0;
       end
       if ( __ILA_pe_core_decode_of_PE0_CONFIG_CLUSTER_TABLE_SECOND__ && __ILA_pe_core_grant__[1] ) begin
           cluster_table_second_Entry_1 <= data_in_1;
       end
       if ( __ILA_pe_core_decode_of_PE0_CONFIG_CLUSTER_TABLE_SECOND__ && __ILA_pe_core_grant__[1] ) begin
           cluster_table_second_Entry_2 <= data_in_2;
       end
       if ( __ILA_pe_core_decode_of_PE0_CONFIG_CLUSTER_TABLE_SECOND__ && __ILA_pe_core_grant__[1] ) begin
           cluster_table_second_Entry_3 <= data_in_3;
       end
       if ( __ILA_pe_core_decode_of_PE0_CONFIG_CLUSTER_TABLE_SECOND__ && __ILA_pe_core_grant__[1] ) begin
           cluster_table_second_Entry_4 <= data_in_4;
       end
       if ( __ILA_pe_core_decode_of_PE0_CONFIG_CLUSTER_TABLE_SECOND__ && __ILA_pe_core_grant__[1] ) begin
           cluster_table_second_Entry_5 <= data_in_5;
       end
       if ( __ILA_pe_core_decode_of_PE0_CONFIG_CLUSTER_TABLE_SECOND__ && __ILA_pe_core_grant__[1] ) begin
           cluster_table_second_Entry_6 <= data_in_6;
       end
       if ( __ILA_pe_core_decode_of_PE0_CONFIG_CLUSTER_TABLE_SECOND__ && __ILA_pe_core_grant__[1] ) begin
           cluster_table_second_Entry_7 <= data_in_7;
       end
       if ( __ILA_pe_core_decode_of_PE0_CONFIG_CLUSTER_TABLE_SECOND__ && __ILA_pe_core_grant__[1] ) begin
           cluster_table_second_Entry_8 <= data_in_8;
       end
       if ( __ILA_pe_core_decode_of_PE0_CONFIG_CLUSTER_TABLE_SECOND__ && __ILA_pe_core_grant__[1] ) begin
           cluster_table_second_Entry_9 <= data_in_9;
       end
       if ( __ILA_pe_core_decode_of_PE0_CONFIG_CLUSTER_TABLE_SECOND__ && __ILA_pe_core_grant__[1] ) begin
           cluster_table_second_Entry_10 <= data_in_10;
       end
       if ( __ILA_pe_core_decode_of_PE0_CONFIG_CLUSTER_TABLE_SECOND__ && __ILA_pe_core_grant__[1] ) begin
           cluster_table_second_Entry_11 <= data_in_11;
       end
       if ( __ILA_pe_core_decode_of_PE0_CONFIG_CLUSTER_TABLE_SECOND__ && __ILA_pe_core_grant__[1] ) begin
           cluster_table_second_Entry_12 <= data_in_12;
       end
       if ( __ILA_pe_core_decode_of_PE0_CONFIG_CLUSTER_TABLE_SECOND__ && __ILA_pe_core_grant__[1] ) begin
           cluster_table_second_Entry_13 <= data_in_13;
       end
       if ( __ILA_pe_core_decode_of_PE0_CONFIG_CLUSTER_TABLE_SECOND__ && __ILA_pe_core_grant__[1] ) begin
           cluster_table_second_Entry_14 <= data_in_14;
       end
       if ( __ILA_pe_core_decode_of_PE0_CONFIG_CLUSTER_TABLE_SECOND__ && __ILA_pe_core_grant__[1] ) begin
           cluster_table_second_Entry_15 <= data_in_15;
       end
       if ( __ILA_pe_core_decode_of_PE0_CONFIG_MEM_MNGR_FIRST__ && __ILA_pe_core_grant__[2] ) begin
           pe0_mem_mngr_first_zero_active <= n98;
       end
       if ( __ILA_pe_core_decode_of_PE0_CONFIG_MEM_MNGR_FIRST__ && __ILA_pe_core_grant__[2] ) begin
           pe0_mem_mngr_first_adpfloat_bias_w <= n99;
       end
       if ( __ILA_pe_core_decode_of_PE0_CONFIG_MEM_MNGR_FIRST__ && __ILA_pe_core_grant__[2] ) begin
           pe0_mem_mngr_first_adpfloat_bias_b <= n100;
       end
       if ( __ILA_pe_core_decode_of_PE0_CONFIG_MEM_MNGR_FIRST__ && __ILA_pe_core_grant__[2] ) begin
           pe0_mem_mngr_first_adpfloat_bias_i <= n101;
       end
       if ( __ILA_pe_core_decode_of_PE0_CONFIG_MEM_MNGR_FIRST__ && __ILA_pe_core_grant__[2] ) begin
           pe0_mem_mngr_first_num_input <= n103;
       end
       if ( __ILA_pe_core_decode_of_PE0_CONFIG_MEM_MNGR_FIRST__ && __ILA_pe_core_grant__[2] ) begin
           pe0_mem_mngr_first_base_weight <= n104;
       end
       if ( __ILA_pe_core_decode_of_PE0_CONFIG_MEM_MNGR_FIRST__ && __ILA_pe_core_grant__[2] ) begin
           pe0_mem_mngr_first_base_bias <= n105;
       end
       if ( __ILA_pe_core_decode_of_PE0_CONFIG_MEM_MNGR_FIRST__ && __ILA_pe_core_grant__[2] ) begin
           pe0_mem_mngr_first_base_input <= n106;
       end
       if ( __ILA_pe_core_decode_of_PE0_CONFIG_MEM_MNGR_SECOND__ && __ILA_pe_core_grant__[3] ) begin
           pe0_mem_mngr_second_zero_active <= n107;
       end
       if ( __ILA_pe_core_decode_of_PE0_CONFIG_MEM_MNGR_SECOND__ && __ILA_pe_core_grant__[3] ) begin
           pe0_mem_mngr_second_adpfloat_bias_w <= n108;
       end
       if ( __ILA_pe_core_decode_of_PE0_CONFIG_MEM_MNGR_SECOND__ && __ILA_pe_core_grant__[3] ) begin
           pe0_mem_mngr_second_adpfloat_bias_b <= n109;
       end
       if ( __ILA_pe_core_decode_of_PE0_CONFIG_MEM_MNGR_SECOND__ && __ILA_pe_core_grant__[3] ) begin
           pe0_mem_mngr_second_adpfloat_bias_i <= n110;
       end
       if ( __ILA_pe_core_decode_of_PE0_CONFIG_MEM_MNGR_SECOND__ && __ILA_pe_core_grant__[3] ) begin
           pe0_mem_mngr_second_num_input <= n112;
       end
       if ( __ILA_pe_core_decode_of_PE0_CONFIG_MEM_MNGR_SECOND__ && __ILA_pe_core_grant__[3] ) begin
           pe0_mem_mngr_second_base_weight <= n113;
       end
       if ( __ILA_pe_core_decode_of_PE0_CONFIG_MEM_MNGR_SECOND__ && __ILA_pe_core_grant__[3] ) begin
           pe0_mem_mngr_second_base_bias <= n114;
       end
       if ( __ILA_pe_core_decode_of_PE0_CONFIG_MEM_MNGR_SECOND__ && __ILA_pe_core_grant__[3] ) begin
           pe0_mem_mngr_second_base_input <= n115;
       end
       if ( __ILA_pe_core_decode_of_PE0_CONFIG_RNN_LAYER_SIZING__ && __ILA_pe_core_grant__[4] ) begin
           pe0_rnn_layer_sizing_is_valid <= n116;
       end
       if ( __ILA_pe_core_decode_of_PE0_CONFIG_RNN_LAYER_SIZING__ && __ILA_pe_core_grant__[4] ) begin
           pe0_rnn_layer_sizing_is_zero_first <= n117;
       end else if ( __ILA_pe_core_decode_of_PE0_core_out__ && __ILA_pe_core_grant__[12] ) begin
           pe0_rnn_layer_sizing_is_zero_first <= n126;
       end
       if ( __ILA_pe_core_decode_of_PE0_CONFIG_RNN_LAYER_SIZING__ && __ILA_pe_core_grant__[4] ) begin
           pe0_rnn_layer_sizing_is_cluster <= n127;
       end
       if ( __ILA_pe_core_decode_of_PE0_CONFIG_RNN_LAYER_SIZING__ && __ILA_pe_core_grant__[4] ) begin
           pe0_rnn_layer_sizing_is_bias <= n128;
       end
       if ( __ILA_pe_core_decode_of_PE0_CONFIG_RNN_LAYER_SIZING__ && __ILA_pe_core_grant__[4] ) begin
           pe0_rnn_layer_sizing_num_manager <= n129;
       end
       if ( __ILA_pe_core_decode_of_PE0_CONFIG_RNN_LAYER_SIZING__ && __ILA_pe_core_grant__[4] ) begin
           pe0_rnn_layer_sizing_num_output <= data_in_5;
       end
       if ( __ILA_pe_core_decode_of_PE0_core_is_start__ && __ILA_pe_core_grant__[8] ) begin
           pe0_core_state <= bv_3_1_n75;
       end else if ( __ILA_pe_core_decode_of_PE0_core_prep__ && __ILA_pe_core_grant__[9] ) begin
           pe0_core_state <= n239;
       end else if ( __ILA_pe_core_decode_of_PE0_core_mac__ && __ILA_pe_core_grant__[10] ) begin
           pe0_core_state <= n246;
       end else if ( __ILA_pe_core_decode_of_PE0_core_bias__ && __ILA_pe_core_grant__[11] ) begin
           pe0_core_state <= bv_3_4_n90;
       end else if ( __ILA_pe_core_decode_of_PE0_core_out_sent__ && __ILA_pe_core_grant__[13] ) begin
           pe0_core_state <= n252;
       end
       if ( __ILA_pe_core_decode_of_PE0_core_is_start__ && __ILA_pe_core_grant__[8] ) begin
           pe0_core_is_start <= bv_1_1_n0;
       end else if ( __ILA_pe_core_decode_of_PE0_core_out_sent__ && __ILA_pe_core_grant__[13] ) begin
           pe0_core_is_start <= n253;
       end
       if ( __ILA_pe_core_decode_of_PE0_core_out__ && __ILA_pe_core_grant__[12] ) begin
           pe0_core_manager_cntr <= n255;
       end
       if ( __ILA_pe_core_decode_of_PE0_core_mac__ && __ILA_pe_core_grant__[10] ) begin
           pe0_core_input_counter <= n257;
       end
       if ( __ILA_pe_core_decode_of_PE0_core_out__ && __ILA_pe_core_grant__[12] ) begin
           pe0_core_output_counter <= n263;
       end
       if ( __ILA_pe_core_decode_of_PE0_core_prep__ && __ILA_pe_core_grant__[9] ) begin
           PE0_core_accum_vector_0 <= bv_32_0_n167;
       end
       if ( __ILA_pe_core_decode_of_PE0_core_prep__ && __ILA_pe_core_grant__[9] ) begin
           PE0_core_accum_vector_1 <= bv_32_0_n167;
       end
       if ( __ILA_pe_core_decode_of_PE0_core_prep__ && __ILA_pe_core_grant__[9] ) begin
           PE0_core_accum_vector_2 <= bv_32_0_n167;
       end
       if ( __ILA_pe_core_decode_of_PE0_core_prep__ && __ILA_pe_core_grant__[9] ) begin
           PE0_core_accum_vector_3 <= bv_32_0_n167;
       end
       if ( __ILA_pe_core_decode_of_PE0_core_prep__ && __ILA_pe_core_grant__[9] ) begin
           PE0_core_accum_vector_4 <= bv_32_0_n167;
       end
       if ( __ILA_pe_core_decode_of_PE0_core_prep__ && __ILA_pe_core_grant__[9] ) begin
           PE0_core_accum_vector_5 <= bv_32_0_n167;
       end
       if ( __ILA_pe_core_decode_of_PE0_core_prep__ && __ILA_pe_core_grant__[9] ) begin
           PE0_core_accum_vector_6 <= bv_32_0_n167;
       end
       if ( __ILA_pe_core_decode_of_PE0_core_prep__ && __ILA_pe_core_grant__[9] ) begin
           PE0_core_accum_vector_7 <= bv_32_0_n167;
       end
       if ( __ILA_pe_core_decode_of_PE0_core_prep__ && __ILA_pe_core_grant__[9] ) begin
           PE0_core_accum_vector_8 <= bv_32_0_n167;
       end
       if ( __ILA_pe_core_decode_of_PE0_core_prep__ && __ILA_pe_core_grant__[9] ) begin
           PE0_core_accum_vector_9 <= bv_32_0_n167;
       end
       if ( __ILA_pe_core_decode_of_PE0_core_prep__ && __ILA_pe_core_grant__[9] ) begin
           PE0_core_accum_vector_10 <= bv_32_0_n167;
       end
       if ( __ILA_pe_core_decode_of_PE0_core_prep__ && __ILA_pe_core_grant__[9] ) begin
           PE0_core_accum_vector_11 <= bv_32_0_n167;
       end
       if ( __ILA_pe_core_decode_of_PE0_core_prep__ && __ILA_pe_core_grant__[9] ) begin
           PE0_core_accum_vector_12 <= bv_32_0_n167;
       end
       if ( __ILA_pe_core_decode_of_PE0_core_prep__ && __ILA_pe_core_grant__[9] ) begin
           PE0_core_accum_vector_13 <= bv_32_0_n167;
       end
       if ( __ILA_pe_core_decode_of_PE0_core_prep__ && __ILA_pe_core_grant__[9] ) begin
           PE0_core_accum_vector_14 <= bv_32_0_n167;
       end
       if ( __ILA_pe_core_decode_of_PE0_core_prep__ && __ILA_pe_core_grant__[9] ) begin
           PE0_core_accum_vector_15 <= bv_32_0_n167;
       end
   end
end
endmodule
