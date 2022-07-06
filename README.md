# bootstrap-proc-macro-issue
issue with loading proc-macro during rust bootstrapping 

Example for stage1 bootstrapping error after https://github.com/rust-lang/rust/commit/0a7f2c3a025c8bab1e10ccec6208a4c19b057b26.
To reproduce, `./run-in-docker.sh`.

```
...
Copying stage0 rustc from stage0 (x86_64-unknown-linux-gnu -> x86_64-unknown-linux-gnu / x86_64-unknown-linux-gnu)
Assembling stage1 compiler (x86_64-unknown-linux-gnu)
Building stage1 std artifacts (x86_64-unknown-linux-gnu -> x86_64-unknown-linux-gnu)
   Compiling compiler_builtins v0.1.73
   Compiling core v0.0.0 (/example/rust/library/core)
   Compiling libc v0.2.126
   Compiling cc v1.0.69
   Compiling memchr v2.4.1
   Compiling std v0.0.0 (/example/rust/library/std)
   Compiling unwind v0.0.0 (/example/rust/library/unwind)
   Compiling rustc-std-workspace-core v1.99.0 (/example/rust/library/rustc-std-workspace-core)
   Compiling alloc v0.0.0 (/example/rust/library/alloc)
   Compiling cfg-if v0.1.10
   Compiling adler v0.2.3
   Compiling rustc-demangle v0.1.21
   Compiling rustc-std-workspace-alloc v1.99.0 (/example/rust/library/rustc-std-workspace-alloc)
   Compiling panic_unwind v0.0.0 (/example/rust/library/panic_unwind)
   Compiling panic_abort v0.0.0 (/example/rust/library/panic_abort)
   Compiling gimli v0.25.0
   Compiling std_detect v0.1.5 (/example/rust/library/stdarch/crates/std_detect)
   Compiling hashbrown v0.12.0
   Compiling miniz_oxide v0.4.0
   Compiling object v0.26.2
   Compiling addr2line v0.16.0
    Finished release [optimized] target(s) in 31.36s
Copying stage1 std from stage1 (x86_64-unknown-linux-gnu -> x86_64-unknown-linux-gnu / x86_64-unknown-linux-gnu)
Building stage1 std artifacts (x86_64-unknown-linux-gnu -> x86_64-unknown-linux-gnu)
   Compiling rustc-std-workspace-std v1.99.0 (/example/rust/library/rustc-std-workspace-std)
   Compiling proc_macro v0.0.0 (/example/rust/library/proc_macro)
   Compiling unicode-width v0.1.8
   Compiling getopts v0.2.21
   Compiling test v0.0.0 (/example/rust/library/test)
    Finished release [optimized] target(s) in 6.03s
Building stage1 compiler artifacts (x86_64-unknown-linux-gnu -> x86_64-unknown-linux-gnu)
   Compiling proc-macro2 v1.0.37
   Compiling unicode-xid v0.2.2
   Compiling syn v1.0.91
   Compiling libc v0.2.126
   Compiling version_check v0.9.3
   Compiling cfg-if v1.0.0
   Compiling cfg-if v0.1.10
   Compiling autocfg v1.1.0
   Compiling getrandom v0.2.0
   Compiling once_cell v1.12.0
   Compiling proc-macro-hack v0.5.19
   Compiling tinystr v0.3.4
   Compiling smallvec v1.8.1
   Compiling lazy_static v1.4.0
   Compiling log v0.4.14
   Compiling cc v1.0.69
   Compiling parking_lot_core v0.8.5
   Compiling scopeguard v1.1.0
   Compiling pin-project-lite v0.2.8
   Compiling rustc-hash v1.1.0
   Compiling typenum v1.12.0
   Compiling bitflags v1.2.1
   Compiling ppv-lite86 v0.2.8
   Compiling self_cell v0.10.2
   Compiling stable_deref_trait v1.2.0
   Compiling annotate-snippets v0.8.0
   Compiling arrayvec v0.7.0
   Compiling remove_dir_all v0.5.3
   Compiling rustc_graphviz v0.0.0 (/example/rust/compiler/rustc_graphviz)
   Compiling cpufeatures v0.2.1
   Compiling serde_derive v1.0.125
   Compiling unicode-width v0.1.8
   Compiling serde v1.0.125
   Compiling scoped-tls v1.0.0
   Compiling unic-common v0.9.0
   Compiling unic-char-range v0.9.0
   Compiling ryu v1.0.5
   Compiling serde_json v1.0.59
   Compiling itoa v0.4.6
   Compiling termcolor v1.1.2
   Compiling rustc_fs_util v0.0.0 (/example/rust/compiler/rustc_fs_util)
   Compiling either v1.6.0
   Compiling datafrog v2.0.1
   Compiling memchr v2.4.1
   Compiling regex-syntax v0.6.25
   Compiling tinyvec v0.3.4
   Compiling crc32fast v1.2.0
   Compiling ansi_term v0.12.1
   Compiling snap v1.0.1
   Compiling adler v0.2.3
   Compiling unicode-script v0.5.3
   Compiling fixedbitset v0.2.0
   Compiling fallible-iterator v0.2.0
   Compiling rustc-demangle v0.1.21
   Compiling punycode v0.4.1
   Compiling pathdiff v0.2.1
   Compiling rustc_error_codes v0.0.0 (/example/rust/compiler/rustc_error_codes)
   Compiling rustc-main v0.0.0 (/example/rust/compiler/rustc)
   Compiling instant v0.1.12
   Compiling odht v0.3.1
   Compiling libloading v0.7.1
   Compiling tracing-core v0.1.21
   Compiling sharded-slab v0.1.1
   Compiling unic-langid-impl v0.9.0
   Compiling thread_local v1.1.4
   Compiling unic-ucd-version v0.9.0
   Compiling miniz_oxide v0.4.0
   Compiling rustc_arena v0.0.0 (/example/rust/compiler/rustc_arena)
   Compiling getopts v0.2.21
   Compiling ahash v0.7.4
   Compiling generic-array v0.14.4
   Compiling type-map v0.4.0
   Compiling itertools v0.10.1
   Compiling unic-char-property v0.9.0
   Compiling indexmap v1.8.2
   Compiling lock_api v0.4.7
error[E0463]: can't find crate for `proc_macro`
   --> /root/.cargo/registry/src/github.com-1ecc6299db9ec823/proc-macro-hack-0.5.19/src/lib.rs:150:1
    |
150 | extern crate proc_macro;
    | ^^^^^^^^^^^^^^^^^^^^^^^^ can't find crate

error[E0463]: can't find crate for `proc_macro`
   --> /root/.cargo/registry/src/github.com-1ecc6299db9ec823/proc-macro2-1.0.37/src/lib.rs:119:1
    |
119 | extern crate proc_macro;
    | ^^^^^^^^^^^^^^^^^^^^^^^^ can't find crate

   Compiling unic-emoji-char v0.9.0
error[E0463]: can't find crate for `proc_macro`

error[E0635]: unknown feature `proc_macro_span`
  --> /root/.cargo/registry/src/github.com-1ecc6299db9ec823/proc-macro2-1.0.37/src/lib.rs:90:59
   |
90 | #![cfg_attr(any(proc_macro_span, super_unstable), feature(proc_macro_span))]
   |                                                           ^^^^^^^^^^^^^^^

   Compiling rustc_lexer v0.1.0 (/example/rust/compiler/rustc_lexer)
   Compiling unicode-normalization v0.1.13
   Compiling rustc_apfloat v0.0.0 (/example/rust/compiler/rustc_apfloat)
   Compiling ena v0.14.0
   Compiling polonius-engine v0.13.0
   Compiling tracing-log v0.1.2
Some errors have detailed explanations: E0463, E0635.
For more information about an error, try `rustc --explain E0463`.
error: could not compile `proc-macro2` due to 2 previous errors
warning: build failed, waiting for other jobs to finish...
For more information about this error, try `rustc --explain E0463`.
error: could not compile `proc-macro-hack` due to 2 previous errors
Build completed unsuccessfully in 0:04:28
The command '/bin/sh -c (cd rust && python3 x.py build library/std compiler/rustc src/tools/cargo)' returned a non-zero code: 1
```
