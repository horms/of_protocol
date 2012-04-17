%%%-----------------------------------------------------------------------------
%%% @copyright (C) 2012, Erlang Solutions Ltd.
%%% @doc OpenFlow Protocol behaviour.
%%% @end
%%%-----------------------------------------------------------------------------
-module(gen_protocol).

%% @doc Encode OpenFlow Protocol message from Erlang representation to binary.
-callback encode(Message :: of_protocol:ofp_message()) ->
    {ok, Binary :: binary()} |
    {error, Reason :: any()}.

%% @doc Decode OpenFlow Protocol message from binary to Erlang representation.
-callback decode(Binary :: binary()) ->
    {ok, Message :: of_protocol:ofp_message()} |
    {error, Reason :: any()}.