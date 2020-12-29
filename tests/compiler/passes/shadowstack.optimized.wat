(module
 (type $none_=>_none (func))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_f64_f64_f64_f64_f64_=>_none (func (param i32 i32 f64 f64 f64 f64 f64)))
 (import "env" "trace" (func $~lib/builtins/trace (param i32 i32 f64 f64 f64 f64 f64)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 1036) "<")
 (data (i32.const 1048) "\01\00\00\00 \00\00\00f\00o\00o\00(\001\00,\00 \002\00,\00 \00t\00r\00u\00e\00)\00:")
 (data (i32.const 1100) "\1c")
 (data (i32.const 1112) "\01\00\00\00\06\00\00\00@\00-\004")
 (data (i32.const 1132) "\1c")
 (data (i32.const 1144) "\01\00\00\00\06\00\00\00@\00-\008")
 (data (i32.const 1164) "\1c")
 (data (i32.const 1176) "\01\00\00\00\08\00\00\00@\00-\001\002")
 (data (i32.const 1196) "<")
 (data (i32.const 1208) "\01\00\00\00*\00\00\00p\00a\00s\00s\00e\00s\00/\00s\00h\00a\00d\00o\00w\00s\00t\00a\00c\00k\00.\00t\00s")
 (data (i32.const 1260) "<")
 (data (i32.const 1272) "\01\00\00\00\"\00\00\00f\00o\00o\00(\001\00,\00 \002\00,\00 \00f\00a\00l\00s\00e\00)\00:")
 (global $passes/shadowstack/stackStart (mut i32) (i32.const 0))
 (global $~started (mut i32) (i32.const 0))
 (global $~lib/rt/__stack_ptr (mut i32) (i32.const 17708))
 (export "_start" (func $~start))
 (export "memory" (memory $0))
 (func $~start
  global.get $~started
  if
   return
  end
  i32.const 1
  global.set $~started
  call $start:passes/shadowstack
 )
 (func $~stack_check
  global.get $~lib/rt/__stack_ptr
  i32.const 1324
  i32.lt_s
  if
   i32.const 17728
   i32.const 17776
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $start:passes/shadowstack
  global.get $~lib/rt/__stack_ptr
  i32.const 8
  i32.sub
  global.set $~lib/rt/__stack_ptr
  call $~stack_check
  global.get $~lib/rt/__stack_ptr
  i64.const 0
  i64.store
  global.get $~lib/rt/__stack_ptr
  global.set $passes/shadowstack/stackStart
  global.get $~lib/rt/__stack_ptr
  i32.const 1
  i32.store
  global.get $~lib/rt/__stack_ptr
  i32.const 2
  i32.store offset=4
  i32.const 1
  call $passes/shadowstack/foo
  global.get $~lib/rt/__stack_ptr
  i32.const 1056
  i32.store
  i32.const 1056
  i32.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  global.get $~lib/rt/__stack_ptr
  i32.const 1120
  i32.store
  i32.const 1120
  i32.const 1
  global.get $~lib/rt/__stack_ptr
  i32.const 4
  i32.sub
  i32.load
  f64.convert_i32_u
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  global.get $~lib/rt/__stack_ptr
  i32.const 1152
  i32.store
  i32.const 1152
  i32.const 1
  global.get $~lib/rt/__stack_ptr
  i32.const 8
  i32.sub
  i32.load
  f64.convert_i32_u
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  global.get $~lib/rt/__stack_ptr
  i32.const 1184
  i32.store
  i32.const 1184
  i32.const 1
  global.get $~lib/rt/__stack_ptr
  i32.const 12
  i32.sub
  i32.load
  f64.convert_i32_u
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  global.get $~lib/rt/__stack_ptr
  global.get $passes/shadowstack/stackStart
  i32.ne
  if
   i32.const 0
   i32.const 1216
   i32.const 21
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/__stack_ptr
  i32.const 1
  i32.store
  global.get $~lib/rt/__stack_ptr
  i32.const 2
  i32.store offset=4
  i32.const 0
  call $passes/shadowstack/foo
  global.get $~lib/rt/__stack_ptr
  i32.const 1280
  i32.store
  i32.const 1280
  i32.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  global.get $~lib/rt/__stack_ptr
  i32.const 1120
  i32.store
  i32.const 1120
  i32.const 1
  global.get $~lib/rt/__stack_ptr
  i32.const 4
  i32.sub
  i32.load
  f64.convert_i32_u
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  global.get $~lib/rt/__stack_ptr
  i32.const 1152
  i32.store
  i32.const 1152
  i32.const 1
  global.get $~lib/rt/__stack_ptr
  i32.const 8
  i32.sub
  i32.load
  f64.convert_i32_u
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  global.get $~lib/rt/__stack_ptr
  i32.const 1184
  i32.store
  i32.const 1184
  i32.const 1
  global.get $~lib/rt/__stack_ptr
  i32.const 12
  i32.sub
  i32.load
  f64.convert_i32_u
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  global.get $~lib/rt/__stack_ptr
  global.get $passes/shadowstack/stackStart
  i32.ne
  if
   i32.const 0
   i32.const 1216
   i32.const 28
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/__stack_ptr
  i32.const 8
  i32.add
  global.set $~lib/rt/__stack_ptr
  call $~stack_check
 )
 (func $passes/shadowstack/foo (param $0 i32)
  global.get $~lib/rt/__stack_ptr
  i32.const 12
  i32.sub
  global.set $~lib/rt/__stack_ptr
  call $~stack_check
  global.get $~lib/rt/__stack_ptr
  i64.const 0
  i64.store
  global.get $~lib/rt/__stack_ptr
  i32.const 0
  i32.store offset=8
  global.get $~lib/rt/__stack_ptr
  i32.const 3
  i32.store
  global.get $~lib/rt/__stack_ptr
  i32.const 4
  i32.store offset=4
  local.get $0
  if
   global.get $~lib/rt/__stack_ptr
   i32.const 5
   i32.store offset=8
  else
   global.get $~lib/rt/__stack_ptr
   i32.const 6
   i32.store offset=8
  end
  global.get $~lib/rt/__stack_ptr
  i32.const 12
  i32.add
  global.set $~lib/rt/__stack_ptr
  call $~stack_check
 )
)
