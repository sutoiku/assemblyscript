(module
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_f64_f64_f64_f64_f64_=>_none (func (param i32 i32 f64 f64 f64 f64 f64)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (import "env" "trace" (func $~lib/builtins/trace (param i32 i32 f64 f64 f64 f64 f64)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 12) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00 \00\00\00f\00o\00o\00(\001\00,\00 \002\00,\00 \00t\00r\00u\00e\00)\00:\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 76) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\06\00\00\00@\00-\004\00\00\00\00\00\00\00")
 (data (i32.const 108) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\06\00\00\00@\00-\008\00\00\00\00\00\00\00")
 (data (i32.const 140) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\08\00\00\00@\00-\001\002\00\00\00\00\00")
 (data (i32.const 172) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00*\00\00\00p\00a\00s\00s\00e\00s\00/\00s\00h\00a\00d\00o\00w\00s\00t\00a\00c\00k\00.\00t\00s\00\00\00")
 (data (i32.const 236) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\"\00\00\00f\00o\00o\00(\001\00,\00 \002\00,\00 \00f\00a\00l\00s\00e\00)\00:\00\00\00\00\00\00\00\00\00\00\00")
 (table $0 1 funcref)
 (global $passes/shadowstack/stackStart (mut i32) (i32.const 0))
 (global $~started (mut i32) (i32.const 0))
 (global $~lib/rt/__stack_base i32 (i32.const 300))
 (global $~lib/rt/__stack_size i32 (i32.const 16384))
 (global $~lib/rt/__stack_ptr (mut i32) (i32.const 16684))
 (export "_start" (func $~start))
 (export "memory" (memory $0))
 (func $~lib/rt/__stack (param $0 i32) (result i32)
  local.get $0
 )
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
  global.get $~lib/rt/__stack_base
  i32.lt_s
  if
   i32.const 16704
   i32.const 16752
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $start:passes/shadowstack
  (local $0 i32)
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
  i32.const 1
  local.set $0
  global.get $~lib/rt/__stack_ptr
  local.get $0
  i32.store
  local.get $0
  i32.const 2
  local.set $0
  global.get $~lib/rt/__stack_ptr
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 1
  call $passes/shadowstack/foo
  drop
  i32.const 32
  local.set $0
  global.get $~lib/rt/__stack_ptr
  local.get $0
  i32.store
  local.get $0
  i32.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  i32.const 96
  local.set $0
  global.get $~lib/rt/__stack_ptr
  local.get $0
  i32.store
  local.get $0
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
  i32.const 128
  local.set $0
  global.get $~lib/rt/__stack_ptr
  local.get $0
  i32.store
  local.get $0
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
  i32.const 160
  local.set $0
  global.get $~lib/rt/__stack_ptr
  local.get $0
  i32.store
  local.get $0
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
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 21
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  local.set $0
  global.get $~lib/rt/__stack_ptr
  local.get $0
  i32.store
  local.get $0
  i32.const 2
  local.set $0
  global.get $~lib/rt/__stack_ptr
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  call $passes/shadowstack/foo
  drop
  i32.const 256
  local.set $0
  global.get $~lib/rt/__stack_ptr
  local.get $0
  i32.store
  local.get $0
  i32.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  i32.const 96
  local.set $0
  global.get $~lib/rt/__stack_ptr
  local.get $0
  i32.store
  local.get $0
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
  i32.const 128
  local.set $0
  global.get $~lib/rt/__stack_ptr
  local.get $0
  i32.store
  local.get $0
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
  i32.const 160
  local.set $0
  global.get $~lib/rt/__stack_ptr
  local.get $0
  i32.store
  local.get $0
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
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
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
 (func $passes/shadowstack/foo (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
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
  local.tee $3
  i32.store
  global.get $~lib/rt/__stack_ptr
  i32.const 4
  local.tee $4
  i32.store offset=4
  local.get $2
  if
   global.get $~lib/rt/__stack_ptr
   i32.const 5
   local.tee $5
   i32.store offset=8
  else
   global.get $~lib/rt/__stack_ptr
   i32.const 6
   local.tee $5
   i32.store offset=8
  end
  local.get $1
  local.set $6
  global.get $~lib/rt/__stack_ptr
  i32.const 12
  i32.add
  global.set $~lib/rt/__stack_ptr
  call $~stack_check
  local.get $6
 )
)
