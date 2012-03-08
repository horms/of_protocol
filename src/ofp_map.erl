%%%-----------------------------------------------------------------------------
%%% @copyright (C) 2012, Erlang Solutions Ltd.
%%% @author Krzysztof Rutka <krzysztof.rutka@erlang-solutions.com>
%%% @doc Module for mapping between atoms and bits.
%%% @end
%%%-----------------------------------------------------------------------------
-module(ofp_map).

%% Mapping functions
-export([type/1, error_type/1, hello_failed/1, bad_request/1, bad_action/1,
         bad_instruction/1, bad_match/1, flow_mod_failed/1, group_mod_failed/1,
         port_mod_failed/1, table_mod_failed/1, queue_op_failed/1,
         switch_config_failed/1, role_request_failed/1, capability/1,
         port_config/1]).

-include("of_protocol.hrl").

%%%-----------------------------------------------------------------------------
%%% Mapping functions
%%%-----------------------------------------------------------------------------

type(hello) -> ?OFPT_HELLO;
type(?OFPT_HELLO) -> hello;
type(error) -> ?OFPT_ERROR;
type(?OFPT_ERROR) -> error;
type(echo_request) -> ?OFPT_ECHO_REQUEST;
type(?OFPT_ECHO_REQUEST) -> echo_request;
type(echo_reply) -> ?OFPT_ECHO_REPLY;
type(?OFPT_ECHO_REPLY) -> echo_reply;
type(experimenter) -> ?OFPT_EXPERIMENTER;
type(?OFPT_EXPERIMENTER) -> experimenter;
type(features_request) -> ?OFPT_FEATURES_REQUEST;
type(?OFPT_FEATURES_REQUEST) -> features_request;
type(features_reply) -> ?OFPT_FEATURES_REPLY;
type(?OFPT_FEATURES_REPLY) -> features_reply;
%% TODO: Add more
type(_) -> {error, undefined}.

error_type(hello_failed) -> ?OFPET_HELLO_FAILED;
error_type(?OFPET_HELLO_FAILED) -> hello_failed;
error_type(bad_request) -> ?OFPET_BAD_REQUEST;
error_type(?OFPET_BAD_REQUEST) -> bad_request;
error_type(bad_action) -> ?OFPET_BAD_ACTION;
error_type(?OFPET_BAD_ACTION) -> bad_action;
error_type(bad_instruction) -> ?OFPET_BAD_INSTRUCTION;
error_type(?OFPET_BAD_INSTRUCTION) -> bad_instruction;
error_type(bad_match) -> ?OFPET_BAD_MATCH;
error_type(?OFPET_BAD_MATCH) -> bad_match;
error_type(flow_mod_failed) -> ?OFPET_FLOW_MOD_FAILED;
error_type(?OFPET_FLOW_MOD_FAILED) -> flow_mod_failed;
error_type(group_mod_failed) -> ?OFPET_GROUP_MOD_FAILED;
error_type(?OFPET_GROUP_MOD_FAILED) -> group_mod_failed;
error_type(port_mod_failed) -> ?OFPET_PORT_MOD_FAILED;
error_type(?OFPET_PORT_MOD_FAILED) -> port_mod_failed;
error_type(table_mod_failed) -> ?OFPET_TABLE_MOD_FAILED;
error_type(?OFPET_TABLE_MOD_FAILED) -> table_mod_failed;
error_type(queue_op_failed) -> ?OFPET_QUEUE_OP_FAILED;
error_type(?OFPET_QUEUE_OP_FAILED) -> queue_op_failed;
error_type(switch_config_failed) -> ?OFPET_SWITCH_CONFIG_FAILED;
error_type(?OFPET_SWITCH_CONFIG_FAILED) -> switch_config_failed;
error_type(role_request_failed) -> ?OFPET_ROLE_REQUEST_FAILED;
error_type(?OFPET_ROLE_REQUEST_FAILED) -> role_request_failed;
error_type(experimenter) -> ?OFPET_EXPERIMENTER;
error_type(?OFPET_EXPERIMENTER) -> experimenter;
error_type(_) -> {error, undefined}.

hello_failed(incompatible) -> ?OFPHFC_INCOMPATIBLE;
hello_failed(?OFPHFC_INCOMPATIBLE) -> incompatible;
hello_failed(eperm) -> ?OFPHFC_EPERM;
hello_failed(?OFPHFC_EPERM) -> eperm;
hello_failed(_) -> {error, undefined}.

bad_request(bad_version) -> ?OFPBRC_BAD_VERSION;
bad_request(?OFPBRC_BAD_VERSION) -> bad_version;
bad_request(bad_type) -> ?OFPBRC_BAD_TYPE;
bad_request(?OFPBRC_BAD_TYPE) -> bad_type;
bad_request(bad_stat) -> ?OFPBRC_BAD_STAT;
bad_request(?OFPBRC_BAD_STAT) -> bad_stat;
bad_request(bad_experimenter) -> ?OFPBRC_BAD_EXPERIMENTER;
bad_request(?OFPBRC_BAD_EXPERIMENTER) -> bad_experimenter;
bad_request(bad_exp_type) -> ?OFPBRC_BAD_EXP_TYPE;
bad_request(?OFPBRC_BAD_EXP_TYPE) -> bad_exp_type;
bad_request(eperm) -> ?OFPBRC_EPERM;
bad_request(?OFPBRC_EPERM) -> eperm;
bad_request(bad_len) -> ?OFPBRC_BAD_LEN;
bad_request(?OFPBRC_BAD_LEN) -> bad_len;
bad_request(buffer_empty) -> ?OFPBRC_BUFFER_EMPTY;
bad_request(?OFPBRC_BUFFER_EMPTY) -> buffer_empty;
bad_request(buffer_unknown) -> ?OFPBRC_BUFFER_UNKNOWN;
bad_request(?OFPBRC_BUFFER_UNKNOWN) -> buffer_unknown;
bad_request(bad_table_id) -> ?OFPBRC_BAD_TABLE_ID;
bad_request(?OFPBRC_BAD_TABLE_ID) -> bad_table_id;
bad_request(is_slave) -> ?OFPBRC_IS_SLAVE;
bad_request(?OFPBRC_IS_SLAVE) -> is_slave;
bad_request(bad_port) -> ?OFPBRC_BAD_PORT;
bad_request(?OFPBRC_BAD_PORT) -> bad_port;
bad_request(bad_packet) -> ?OFPBRC_BAD_PACKET;
bad_request(?OFPBRC_BAD_PACKET) -> bad_packet;
bad_request(_) -> {error, undefined}.

bad_action(bad_type) -> ?OFPBAC_BAD_TYPE;
bad_action(?OFPBAC_BAD_TYPE) -> bad_type;
bad_action(bad_len) -> ?OFPBAC_BAD_LEN;
bad_action(?OFPBAC_BAD_LEN) -> bad_len;
bad_action(bad_experimenter) -> ?OFPBAC_BAD_EXPERIMENTER;
bad_action(?OFPBAC_BAD_EXPERIMENTER) -> bad_experimenter;
bad_action(bad_exp_type) -> ?OFPBAC_BAD_EXP_TYPE;
bad_action(?OFPBAC_BAD_EXP_TYPE) -> bad_exp_type;
bad_action(bad_out_port) -> ?OFPBAC_BAD_OUT_PORT;
bad_action(?OFPBAC_BAD_OUT_PORT) -> bad_out_port;
bad_action(bad_argument) -> ?OFPBAC_BAD_ARGUMENT;
bad_action(?OFPBAC_BAD_ARGUMENT) -> bad_argument;
bad_action(eperm) -> ?OFPBAC_EPERM;
bad_action(?OFPBAC_EPERM) -> eperm;
bad_action(too_many) -> ?OFPBAC_TOO_MANY;
bad_action(?OFPBAC_TOO_MANY) -> too_many;
bad_action(bad_queue) -> ?OFPBAC_BAD_QUEUE;
bad_action(?OFPBAC_BAD_QUEUE) -> bad_queue;
bad_action(bad_out_group) -> ?OFPBAC_BAD_OUT_GROUP;
bad_action(?OFPBAC_BAD_OUT_GROUP) -> bad_out_group;
bad_action(match_inconsistent) -> ?OFPBAC_MATCH_INCONSISTENT;
bad_action(?OFPBAC_MATCH_INCONSISTENT) -> match_inconsistent;
bad_action(unsupported_order) -> ?OFPBAC_UNSUPPORTED_ORDER;
bad_action(?OFPBAC_UNSUPPORTED_ORDER) -> unsupported_order;
bad_action(bad_tag) -> ?OFPBAC_BAD_TAG;
bad_action(?OFPBAC_BAD_TAG) -> bad_tag;
bad_action(bad_set_type) -> ?OFPBAC_BAD_SET_TYPE;
bad_action(?OFPBAC_BAD_SET_TYPE) -> bad_set_type;
bad_action(bad_set_len) -> ?OFPBAC_BAD_SET_LEN;
bad_action(?OFPBAC_BAD_SET_LEN) -> bad_set_len;
bad_action(bad_set_argument) -> ?OFPBAC_BAD_SET_ARGUMENT;
bad_action(?OFPBAC_BAD_SET_ARGUMENT) -> bad_set_argument;
bad_action(_) -> {error, undefined}.

bad_instruction(unknown_inst) -> ?OFPBIC_UNKNOWN_INST;
bad_instruction(?OFPBIC_UNKNOWN_INST) -> unknown_inst;
bad_instruction(unsup_inst) -> ?OFPBIC_UNSUP_INST;
bad_instruction(?OFPBIC_UNSUP_INST) -> unsup_inst;
bad_instruction(bad_table_id) -> ?OFPBIC_BAD_TABLE_ID;
bad_instruction(?OFPBIC_BAD_TABLE_ID) -> bad_table_id;
bad_instruction(unsup_metadata) -> ?OFPBIC_UNSUP_METADATA;
bad_instruction(?OFPBIC_UNSUP_METADATA) -> unsup_metadata;
bad_instruction(unsup_metadata_mask) -> ?OFPBIC_UNSUP_METADATA_MASK;
bad_instruction(?OFPBIC_UNSUP_METADATA_MASK) -> unsup_metadata_mask;
bad_instruction(bad_experimenter) -> ?OFPBIC_BAD_EXPERIMENTER;
bad_instruction(?OFPBIC_BAD_EXPERIMENTER) -> bad_experimenter;
bad_instruction(bad_exp_type) -> ?OFPBIC_BAD_EXP_TYPE;
bad_instruction(?OFPBIC_BAD_EXP_TYPE) -> bad_exp_type;
bad_instruction(bad_len) -> ?OFPBIC_BAD_LEN;
bad_instruction(?OFPBIC_BAD_LEN) -> bad_len;
bad_instruction(eperm) -> ?OFPBIC_EPERM;
bad_instruction(?OFPBIC_EPERM) -> eperm;
bad_instruction(_) -> {error, undefined}.

bad_match(bad_type) -> ?OFPBMC_BAD_TYPE;
bad_match(?OFPBMC_BAD_TYPE) -> bad_type;
bad_match(bad_len) -> ?OFPBMC_BAD_LEN;
bad_match(?OFPBMC_BAD_LEN) -> bad_len;
bad_match(bad_tag) -> ?OFPBMC_BAD_TAG;
bad_match(?OFPBMC_BAD_TAG) -> bad_tag;
bad_match(bad_dl_addr_mask) -> ?OFPBMC_BAD_DL_ADDR_MASK;
bad_match(?OFPBMC_BAD_DL_ADDR_MASK) -> bad_dl_addr_mask;
bad_match(bad_nw_addr_mask) -> ?OFPBMC_BAD_NW_ADDR_MASK;
bad_match(?OFPBMC_BAD_NW_ADDR_MASK) -> bad_nw_addr_mask;
bad_match(bad_wildcards) -> ?OFPBMC_BAD_WILDCARDS;
bad_match(?OFPBMC_BAD_WILDCARDS) -> bad_wildcards;
bad_match(bad_field) -> ?OFPBMC_BAD_FIELD;
bad_match(?OFPBMC_BAD_FIELD) -> bad_field;
bad_match(bad_value) -> ?OFPBMC_BAD_VALUE;
bad_match(?OFPBMC_BAD_VALUE) -> bad_value;
bad_match(bad_mask) -> ?OFPBMC_BAD_MASK;
bad_match(?OFPBMC_BAD_MASK) -> bad_mask;
bad_match(bad_prereq) -> ?OFPBMC_BAD_PREREQ;
bad_match(?OFPBMC_BAD_PREREQ) -> bad_prereq;
bad_match(dup_field) -> ?OFPBMC_DUP_FIELD;
bad_match(?OFPBMC_DUP_FIELD) -> dup_field;
bad_match(eperm) -> ?OFPBMC_EPERM;
bad_match(?OFPBMC_EPERM) -> eperm;
bad_match(_) -> {error, undefined}.

flow_mod_failed(unknown) -> ?OFPFMFC_UNKNOWN;
flow_mod_failed(?OFPFMFC_UNKNOWN) -> unknown;
flow_mod_failed(table_full) -> ?OFPFMFC_TABLE_FULL;
flow_mod_failed(?OFPFMFC_TABLE_FULL) -> table_full;
flow_mod_failed(bad_table_id) -> ?OFPFMFC_BAD_TABLE_ID;
flow_mod_failed(?OFPFMFC_BAD_TABLE_ID) -> bad_table_id;
flow_mod_failed(overlap) -> ?OFPFMFC_OVERLAP;
flow_mod_failed(?OFPFMFC_OVERLAP) -> overlap;
flow_mod_failed(eperm) -> ?OFPFMFC_EPERM;
flow_mod_failed(?OFPFMFC_EPERM) -> eperm;
flow_mod_failed(bad_timeout) -> ?OFPFMFC_BAD_TIMEOUT;
flow_mod_failed(?OFPFMFC_BAD_TIMEOUT) -> bad_timeout;
flow_mod_failed(bad_command) -> ?OFPFMFC_BAD_COMMAND;
flow_mod_failed(?OFPFMFC_BAD_COMMAND) -> bad_command;
flow_mod_failed(bad_flags) -> ?OFPFMFC_BAD_FLAGS;
flow_mod_failed(?OFPFMFC_BAD_FLAGS) -> bad_flags;
flow_mod_failed(_) -> {error, undefined}.

group_mod_failed(group_exists) -> ?OFPGMFC_GROUP_EXISTS;
group_mod_failed(?OFPGMFC_GROUP_EXISTS) -> group_exists;
group_mod_failed(invalid_group) -> ?OFPGMFC_INVALID_GROUP;
group_mod_failed(?OFPGMFC_INVALID_GROUP) -> invalid_group;
group_mod_failed(weight_unsupported) -> ?OFPGMFC_WEIGHT_UNSUPPORTED;
group_mod_failed(?OFPGMFC_WEIGHT_UNSUPPORTED) -> weight_unsupported;
group_mod_failed(out_of_groups) -> ?OFPGMFC_OUT_OF_GROUPS;
group_mod_failed(?OFPGMFC_OUT_OF_GROUPS) -> out_of_groups;
group_mod_failed(out_of_buckets) -> ?OFPGMFC_OUT_OF_BUCKETS;
group_mod_failed(?OFPGMFC_OUT_OF_BUCKETS) -> out_of_buckets;
group_mod_failed(chaining_unsupported) -> ?OFPGMFC_CHAINING_UNSUPPORTED;
group_mod_failed(?OFPGMFC_CHAINING_UNSUPPORTED) -> chaining_unsupported;
group_mod_failed(watch_unsupported) -> ?OFPGMFC_WATCH_UNSUPPORTED;
group_mod_failed(?OFPGMFC_WATCH_UNSUPPORTED) -> watch_unsupported;
group_mod_failed(loop) -> ?OFPGMFC_LOOP;
group_mod_failed(?OFPGMFC_LOOP) -> loop;
group_mod_failed(unknown_group) -> ?OFPGMFC_UNKNOWN_GROUP;
group_mod_failed(?OFPGMFC_UNKNOWN_GROUP) -> unknown_group;
group_mod_failed(chained_group) -> ?OFPGMFC_CHAINED_GROUP;
group_mod_failed(?OFPGMFC_CHAINED_GROUP) -> chained_group;
group_mod_failed(bad_type) -> ?OFPGMFC_BAD_TYPE;
group_mod_failed(?OFPGMFC_BAD_TYPE) -> bad_type;
group_mod_failed(bad_command) -> ?OFPGMFC_BAD_COMMAND;
group_mod_failed(?OFPGMFC_BAD_COMMAND) -> bad_command;
group_mod_failed(bad_bucket) -> ?OFPGMFC_BAD_BUCKET;
group_mod_failed(?OFPGMFC_BAD_BUCKET) -> bad_bucket;
group_mod_failed(bad_watch) -> ?OFPGMFC_BAD_WATCH;
group_mod_failed(?OFPGMFC_BAD_WATCH) -> bad_watch;
group_mod_failed(eperm) -> ?OFPGMFC_EPERM;
group_mod_failed(?OFPGMFC_EPERM) -> eperm;
group_mod_failed(_) -> {error, undefined}.

port_mod_failed(bad_port) -> ?OFPPMFC_BAD_PORT;
port_mod_failed(?OFPPMFC_BAD_PORT) -> bad_port;
port_mod_failed(bad_hw_addr) -> ?OFPPMFC_BAD_HW_ADDR;
port_mod_failed(?OFPPMFC_BAD_HW_ADDR) -> bad_hw_addr;
port_mod_failed(bad_config) -> ?OFPPMFC_BAD_CONFIG;
port_mod_failed(?OFPPMFC_BAD_CONFIG) -> bad_config;
port_mod_failed(bad_advertise) -> ?OFPPMFC_BAD_ADVERTISE;
port_mod_failed(?OFPPMFC_BAD_ADVERTISE) -> bad_advertise;
port_mod_failed(eperm) -> ?OFPPMFC_EPERM;
port_mod_failed(?OFPPMFC_EPERM) -> eperm;
port_mod_failed(_) -> {error, undefined}.

table_mod_failed(bad_table) -> ?OFPTMFC_BAD_TABLE;
table_mod_failed(?OFPTMFC_BAD_TABLE) -> bad_table;
table_mod_failed(bad_config) -> ?OFPTMFC_BAD_CONFIG;
table_mod_failed(?OFPTMFC_BAD_CONFIG) -> bad_config;
table_mod_failed(eperm) -> ?OFPTMFC_EPERM;
table_mod_failed(?OFPTMFC_EPERM) -> eperm;
table_mod_failed(_) -> {error, undefined}.

queue_op_failed(bad_port) -> ?OFPQOFC_BAD_PORT;
queue_op_failed(?OFPQOFC_BAD_PORT) -> bad_port;
queue_op_failed(bad_queue) -> ?OFPQOFC_BAD_QUEUE;
queue_op_failed(?OFPQOFC_BAD_QUEUE) -> bad_queue;
queue_op_failed(eperm) -> ?OFPQOFC_EPERM;
queue_op_failed(?OFPQOFC_EPERM) -> eperm;
queue_op_failed(_) -> {error, undefined}.

switch_config_failed(bad_flags) -> ?OFPSCFC_BAD_FLAGS;
switch_config_failed(?OFPSCFC_BAD_FLAGS) -> bad_flags;
switch_config_failed(bad_len) -> ?OFPSCFC_BAD_LEN;
switch_config_failed(?OFPSCFC_BAD_LEN) -> bad_len;
switch_config_failed(eperm) -> ?OFPSCFC_EPERM;
switch_config_failed(?OFPSCFC_EPERM) -> eperm;
switch_config_failed(_) -> {error, undefined}.

role_request_failed(stale) -> ?OFPRRFC_STALE;
role_request_failed(?OFPRRFC_STALE) -> stale;
role_request_failed(unsup) -> ?OFPRRFC_UNSUP;
role_request_failed(?OFPRRFC_UNSUP) -> unsup;
role_request_failed(bad_role) -> ?OFPRRFC_BAD_ROLE;
role_request_failed(?OFPRRFC_BAD_ROLE) -> bad_role;
role_request_failed(_) -> {error, undefined}.

capability(flow_stats) -> ?OFPC_FLOW_STATS;
capability(?OFPC_FLOW_STATS) -> flow_stats;
capability(table_stats) -> ?OFPC_TABLE_STATS;
capability(?OFPC_TABLE_STATS) -> table_stats;
capability(port_stats) -> ?OFPC_PORT_STATS;
capability(?OFPC_PORT_STATS) -> port_stats;
capability(group_stats) -> ?OFPC_GROUP_STATS;
capability(?OFPC_GROUP_STATS) -> group_stats;
capability(ip_reasm) -> ?OFPC_IP_REASM;
capability(?OFPC_IP_REASM) -> ip_reasm;
capability(queue_stats) -> ?OFPC_QUEUE_STATS;
capability(?OFPC_QUEUE_STATS) -> queue_stats;
capability(port_blocked) -> ?OFPC_PORT_BLOCKED;
capability(?OFPC_PORT_BLOCKED) -> port_blocked;
capability(_) -> {error, undefined}.

port_config(port_down) -> ?OFPPC_PORT_DOWN;
port_config(?OFPPC_PORT_DOWN) -> port_down;
port_config(no_recv) -> ?OFPPC_NO_RECV;
port_config(?OFPPC_NO_RECV) -> no_recv;
port_config(no_fwd) -> ?OFPPC_NO_FWD;
port_config(?OFPPC_NO_FWD) -> no_fwd;
port_config(no_packet_in) -> ?OFPPC_NO_PACKET_IN;
port_config(?OFPPC_NO_PACKET_IN) -> no_packet_in;
port_config(_) -> {error, undefined}.