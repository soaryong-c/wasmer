(wasi_test "poll_oneoff.wasm"
  (map_dirs "hamlet:test_fs/hamlet")
  (temp_dirs "temp")
  (assert_return (i64.const 0))
  (assert_stdout "__wasi_event_t { userdata: 1193046, error: 0, type_: 1, u: __wasi_event_u { __wasi_event_fd_readwrite_t { nbytes: 2259, flags: 0 } } }\n[__wasi_event_t { userdata: 1193046, error: 0, type_: 1, u: __wasi_event_u { __wasi_event_fd_readwrite_t { nbytes: 2259, flags: 0 } } }, __wasi_event_t { userdata: 1193046, error: 0, type_: 2, u: __wasi_event_u { __wasi_event_fd_readwrite_t { nbytes: 1234, flags: 0 } } }]\nStdin: OK\nStdout: OK\nStderr: OK\n")
)