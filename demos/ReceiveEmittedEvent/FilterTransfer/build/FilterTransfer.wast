(module
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$jii (func (param i32 i32) (result i64)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$viii (func (param i32 i32 i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$iiji (func (param i32 i64 i32) (result i32)))
 (type $FUNCSIG$vji (func (param i64 i32)))
 (import "env" "abort" (func $~lib/env/abort))
 (import "env" "ultrainio_assert" (func $~lib/env/ultrainio_assert (param i32 i32)))
 (import "env" "ts_log_print_s" (func $~lib/ultrain-ts-lib/src/log/env.ts_log_print_s (param i32)))
 (import "env" "ts_log_print_i" (func $~lib/ultrain-ts-lib/src/log/env.ts_log_print_i (param i64 i32)))
 (import "env" "ts_log_done" (func $~lib/ultrain-ts-lib/src/log/env.ts_log_done))
 (memory $0 1)
 (data (i32.const 8) "\01\00\00\00 \00")
 (data (i32.const 16) "\01\00\00\00!\00")
 (data (i32.const 24) "\01\00\00\00\"\00")
 (data (i32.const 32) "\01\00\00\00#\00")
 (data (i32.const 40) "\01\00\00\00$\00")
 (data (i32.const 48) "\01\00\00\00%\00")
 (data (i32.const 56) "\01\00\00\00&\00")
 (data (i32.const 64) "\01\00\00\00\'\00")
 (data (i32.const 72) "\01\00\00\00(\00")
 (data (i32.const 80) "\01\00\00\00)\00")
 (data (i32.const 88) "\01\00\00\00*\00")
 (data (i32.const 96) "\01\00\00\00+\00")
 (data (i32.const 104) "\01\00\00\00,\00")
 (data (i32.const 112) "\01\00\00\00-\00")
 (data (i32.const 120) "\01\00\00\00.\00")
 (data (i32.const 128) "\01\00\00\00/\00")
 (data (i32.const 136) "\01\00\00\000\00")
 (data (i32.const 144) "\01\00\00\001\00")
 (data (i32.const 152) "\01\00\00\002\00")
 (data (i32.const 160) "\01\00\00\003\00")
 (data (i32.const 168) "\01\00\00\004\00")
 (data (i32.const 176) "\01\00\00\005\00")
 (data (i32.const 184) "\01\00\00\006\00")
 (data (i32.const 192) "\01\00\00\007\00")
 (data (i32.const 200) "\01\00\00\008\00")
 (data (i32.const 208) "\01\00\00\009\00")
 (data (i32.const 216) "\01\00\00\00:\00")
 (data (i32.const 224) "\01\00\00\00;\00")
 (data (i32.const 232) "\01\00\00\00<\00")
 (data (i32.const 240) "\01\00\00\00=\00")
 (data (i32.const 248) "\01\00\00\00>\00")
 (data (i32.const 256) "\01\00\00\00?\00")
 (data (i32.const 264) "\01\00\00\00@\00")
 (data (i32.const 272) "\01\00\00\00A\00")
 (data (i32.const 280) "\01\00\00\00B\00")
 (data (i32.const 288) "\01\00\00\00C\00")
 (data (i32.const 296) "\01\00\00\00D\00")
 (data (i32.const 304) "\01\00\00\00E\00")
 (data (i32.const 312) "\01\00\00\00F\00")
 (data (i32.const 320) "\01\00\00\00G\00")
 (data (i32.const 328) "\01\00\00\00H\00")
 (data (i32.const 336) "\01\00\00\00I\00")
 (data (i32.const 344) "\01\00\00\00J\00")
 (data (i32.const 352) "\01\00\00\00K\00")
 (data (i32.const 360) "\01\00\00\00L\00")
 (data (i32.const 368) "\01\00\00\00M\00")
 (data (i32.const 376) "\01\00\00\00N\00")
 (data (i32.const 384) "\01\00\00\00O\00")
 (data (i32.const 392) "\01\00\00\00P\00")
 (data (i32.const 400) "\01\00\00\00Q\00")
 (data (i32.const 408) "\01\00\00\00R\00")
 (data (i32.const 416) "\01\00\00\00T\00")
 (data (i32.const 424) "\01\00\00\00U\00")
 (data (i32.const 432) "\01\00\00\00V\00")
 (data (i32.const 440) "\01\00\00\00W\00")
 (data (i32.const 448) "\01\00\00\00X\00")
 (data (i32.const 456) "\01\00\00\00Y\00")
 (data (i32.const 464) "\01\00\00\00Z\00")
 (data (i32.const 472) "\01\00\00\00[\00")
 (data (i32.const 480) "\01\00\00\00\\\00")
 (data (i32.const 488) "\01\00\00\00]\00")
 (data (i32.const 496) "\01\00\00\00^\00")
 (data (i32.const 504) "\01\00\00\00_\00")
 (data (i32.const 512) "\01\00\00\00`\00")
 (data (i32.const 520) "\01\00\00\00a\00")
 (data (i32.const 528) "\01\00\00\00b\00")
 (data (i32.const 536) "\01\00\00\00c\00")
 (data (i32.const 544) "\01\00\00\00d\00")
 (data (i32.const 552) "\01\00\00\00e\00")
 (data (i32.const 560) "\01\00\00\00f\00")
 (data (i32.const 568) "\01\00\00\00g\00")
 (data (i32.const 576) "\01\00\00\00h\00")
 (data (i32.const 584) "\01\00\00\00i\00")
 (data (i32.const 592) "\01\00\00\00j\00")
 (data (i32.const 600) "\01\00\00\00k\00")
 (data (i32.const 608) "\01\00\00\00l\00")
 (data (i32.const 616) "\01\00\00\00m\00")
 (data (i32.const 624) "\01\00\00\00n\00")
 (data (i32.const 632) "\01\00\00\00o\00")
 (data (i32.const 640) "\01\00\00\00p\00")
 (data (i32.const 648) "\01\00\00\00q\00")
 (data (i32.const 656) "\01\00\00\00r\00")
 (data (i32.const 664) "\01\00\00\00s\00")
 (data (i32.const 672) "\01\00\00\00t\00")
 (data (i32.const 680) "\01\00\00\00u\00")
 (data (i32.const 688) "\01\00\00\00v\00")
 (data (i32.const 696) "\01\00\00\00w\00")
 (data (i32.const 704) "\01\00\00\00x\00")
 (data (i32.const 712) "\01\00\00\00y\00")
 (data (i32.const 720) "\01\00\00\00z\00")
 (data (i32.const 728) "\01\00\00\00{\00")
 (data (i32.const 736) "\01\00\00\00|\00")
 (data (i32.const 744) "\01\00\00\00}\00")
 (data (i32.const 752) "\01\00\00\00~\00")
 (data (i32.const 760) "|\01\00\00\00\00\00\00\08\00\00\00\10\00\00\00\18\00\00\00 \00\00\00(\00\00\000\00\00\008\00\00\00@\00\00\00H\00\00\00P\00\00\00X\00\00\00`\00\00\00h\00\00\00p\00\00\00x\00\00\00\80\00\00\00\88\00\00\00\90\00\00\00\98\00\00\00\a0\00\00\00\a8\00\00\00\b0\00\00\00\b8\00\00\00\c0\00\00\00\c8\00\00\00\d0\00\00\00\d8\00\00\00\e0\00\00\00\e8\00\00\00\f0\00\00\00\f8\00\00\00\00\01\00\00\08\01\00\00\10\01\00\00\18\01\00\00 \01\00\00(\01\00\000\01\00\008\01\00\00@\01\00\00H\01\00\00P\01\00\00X\01\00\00`\01\00\00h\01\00\00p\01\00\00x\01\00\00\80\01\00\00\88\01\00\00\90\01\00\00\98\01\00\00\98\01\00\00\a0\01\00\00\a8\01\00\00\b0\01\00\00\b8\01\00\00\c0\01\00\00\c8\01\00\00\d0\01\00\00\d8\01\00\00\e0\01\00\00\e8\01\00\00\f0\01\00\00\f8\01\00\00\00\02\00\00\08\02\00\00\10\02\00\00\18\02\00\00 \02\00\00(\02\00\000\02\00\008\02\00\00@\02\00\00H\02\00\00P\02\00\00X\02\00\00`\02\00\00h\02\00\00p\02\00\00x\02\00\00\80\02\00\00\88\02\00\00\90\02\00\00\98\02\00\00\a0\02\00\00\a8\02\00\00\b0\02\00\00\b8\02\00\00\c0\02\00\00\c8\02\00\00\d0\02\00\00\d8\02\00\00\e0\02\00\00\e8\02\00\00\f0\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1272) "\f8\02\00\00_\00\00\00")
 (data (i32.const 1280) "\04\00\00\00U\00G\00A\00S\00")
 (data (i32.const 1296) "+\00\00\00l\00e\00n\00g\00t\00h\00 \00o\00f\00 \00_\00s\00y\00m\00b\00o\00l\00 \00n\00a\00m\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00l\00e\00s\00s\00 \00t\00h\00a\00n\00 \007\00.\00")
 (data (i32.const 1392) "|\01\00\00\00\00\00\00\08\00\00\00\10\00\00\00\18\00\00\00 \00\00\00(\00\00\000\00\00\008\00\00\00@\00\00\00H\00\00\00P\00\00\00X\00\00\00`\00\00\00h\00\00\00p\00\00\00x\00\00\00\80\00\00\00\88\00\00\00\90\00\00\00\98\00\00\00\a0\00\00\00\a8\00\00\00\b0\00\00\00\b8\00\00\00\c0\00\00\00\c8\00\00\00\d0\00\00\00\d8\00\00\00\e0\00\00\00\e8\00\00\00\f0\00\00\00\f8\00\00\00\00\01\00\00\08\01\00\00\10\01\00\00\18\01\00\00 \01\00\00(\01\00\000\01\00\008\01\00\00@\01\00\00H\01\00\00P\01\00\00X\01\00\00`\01\00\00h\01\00\00p\01\00\00x\01\00\00\80\01\00\00\88\01\00\00\90\01\00\00\98\01\00\00\98\01\00\00\a0\01\00\00\a8\01\00\00\b0\01\00\00\b8\01\00\00\c0\01\00\00\c8\01\00\00\d0\01\00\00\d8\01\00\00\e0\01\00\00\e8\01\00\00\f0\01\00\00\f8\01\00\00\00\02\00\00\08\02\00\00\10\02\00\00\18\02\00\00 \02\00\00(\02\00\000\02\00\008\02\00\00@\02\00\00H\02\00\00P\02\00\00X\02\00\00`\02\00\00h\02\00\00p\02\00\00x\02\00\00\80\02\00\00\88\02\00\00\90\02\00\00\98\02\00\00\a0\02\00\00\a8\02\00\00\b0\02\00\00\b8\02\00\00\c0\02\00\00\c8\02\00\00\d0\02\00\00\d8\02\00\00\e0\02\00\00\e8\02\00\00\f0\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1904) "p\05\00\00_\00\00\00")
 (data (i32.const 1912) "\0d\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 1944) "\1c\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (data (i32.const 2008) "\0e\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s\00")
 (data (i32.const 2040) "0\00\00\00s\00t\00r\00i\00n\00g\00_\00t\00o\00_\00_\00s\00y\00m\00b\00o\00l\00 \00f\00a\00i\00l\00e\00d\00 \00f\00o\00r\00 \00n\00o\00t\00 \00s\00u\00p\00o\00o\00r\00t\00 \00c\00o\00d\00e\00 \00:\00 \00")
 (data (i32.const 2144) "\00\00\00\00\00\00\00\00")
 (data (i32.const 2152) "`\08\00\00\00\00\00\00")
 (data (i32.const 2160) "\00\00\00\00\00\00\00\00")
 (data (i32.const 2168) "p\08\00\00\00\00\00\00")
 (data (i32.const 2176) "\00\00\00\00\00\00\00\00")
 (data (i32.const 2184) "\80\08\00\00\00\00\00\00")
 (data (i32.const 2192) "\00\00\00\00\00\00\00\00")
 (data (i32.const 2200) "\90\08\00\00\00\00\00\00")
 (data (i32.const 2208) "\00\00\00\00\00\00\00\00")
 (data (i32.const 2216) "\a0\08\00\00\00\00\00\00")
 (data (i32.const 2224) "\00\00\00\00\00\00\00\00")
 (data (i32.const 2232) "\b0\08\00\00\00\00\00\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $~lib/ultrain-ts-lib/src/utils/PrintableChar i32 (i32.const 1272))
 (global $~lib/ultrain-ts-lib/src/log/Log (mut i32) (i32.const 0))
 (global $~lib/ultrain-ts-lib/src/asset/CHAR_A i32 (i32.const 65))
 (global $~lib/ultrain-ts-lib/src/asset/CHAR_Z i32 (i32.const 90))
 (global $~lib/utf8util/ASCIICHAR i32 (i32.const 1904))
 (global $~lib/ultrain-ts-lib/src/asset/SYS (mut i64) (i64.const 0))
 (global $~lib/ultrain-ts-lib/src/asset/SYS_NAME (mut i64) (i64.const 0))
 (global $~lib/ultrain-ts-lib/src/asset/MAX_AMOUNT i64 (i64.const 4611686018427387903))
 (global $~lib/ultrain-ts-lib/src/events/TYPE_STRING i32 (i32.const 1))
 (global $~lib/ultrain-ts-lib/src/events/TYPE_BOOL i32 (i32.const 2))
 (global $~lib/ultrain-ts-lib/src/events/TYPE_U64 i32 (i32.const 4))
 (global $~lib/ultrain-ts-lib/src/events/TYPE_STRING_ARRAY i32 (i32.const 8))
 (global $~lib/ultrain-ts-lib/src/events/TYPE_BOOL_ARRAY i32 (i32.const 16))
 (global $~lib/ultrain-ts-lib/src/events/TYPE_U64_ARRAY i32 (i32.const 17))
 (global $~lib/ultrain-ts-lib/src/events/EventObject (mut i32) (i32.const 0))
 (global $~lib/memory/HEAP_BASE i32 (i32.const 2240))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $start:~lib/allocator/arena (; 5 ;) (type $FUNCSIG$v)
  global.get $~lib/memory/HEAP_BASE
  i32.const 7
  i32.add
  i32.const 7
  i32.const -1
  i32.xor
  i32.and
  global.set $~lib/allocator/arena/startOffset
  global.get $~lib/allocator/arena/startOffset
  global.set $~lib/allocator/arena/offset
 )
 (func $start:~lib/ultrain-ts-lib/lib/name_ex (; 6 ;) (type $FUNCSIG$v)
  call $start:~lib/allocator/arena
 )
 (func $~lib/allocator/arena/__memory_allocate (; 7 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.const 1073741824
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/allocator/arena/offset
  local.set $1
  local.get $1
  local.get $0
  local.tee $2
  i32.const 1
  local.tee $3
  local.get $2
  local.get $3
  i32.gt_u
  select
  i32.add
  i32.const 7
  i32.add
  i32.const 7
  i32.const -1
  i32.xor
  i32.and
  local.set $4
  current_memory
  local.set $5
  local.get $4
  local.get $5
  i32.const 16
  i32.shl
  i32.gt_u
  if
   local.get $4
   local.get $1
   i32.sub
   i32.const 65535
   i32.add
   i32.const 65535
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.shr_u
   local.set $2
   local.get $5
   local.tee $3
   local.get $2
   local.tee $6
   local.get $3
   local.get $6
   i32.gt_s
   select
   local.set $3
   local.get $3
   grow_memory
   i32.const 0
   i32.lt_s
   if
    local.get $2
    grow_memory
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $4
  global.set $~lib/allocator/arena/offset
  local.get $1
 )
 (func $~lib/memory/memory.allocate (; 8 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/allocator/arena/__memory_allocate
  return
 )
 (func $~lib/ultrain-ts-lib/src/log/Logger#constructor (; 9 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   call $~lib/memory/memory.allocate
   local.set $0
  end
  local.get $0
 )
 (func $start:~lib/ultrain-ts-lib/src/log (; 10 ;) (type $FUNCSIG$v)
  i32.const 0
  call $~lib/ultrain-ts-lib/src/log/Logger#constructor
  global.set $~lib/ultrain-ts-lib/src/log/Log
 )
 (func $~lib/internal/arraybuffer/computeSize (; 11 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 1
  i32.const 32
  local.get $0
  i32.const 8
  i32.add
  i32.const 1
  i32.sub
  i32.clz
  i32.sub
  i32.shl
 )
 (func $~lib/internal/arraybuffer/allocateUnsafe (; 12 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 1073741816
  i32.le_u
  i32.eqz
  if
   call $~lib/env/abort
   unreachable
  end
  block $~lib/memory/memory.allocate|inlined.0 (result i32)
   local.get $0
   call $~lib/internal/arraybuffer/computeSize
   local.set $2
   local.get $2
   call $~lib/allocator/arena/__memory_allocate
   br $~lib/memory/memory.allocate|inlined.0
  end
  local.set $1
  local.get $1
  local.get $0
  i32.store
  local.get $1
 )
 (func $~lib/internal/memory/memset (; 13 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  local.get $2
  i32.eqz
  if
   return
  end
  local.get $0
  local.get $1
  i32.store8
  local.get $0
  local.get $2
  i32.add
  i32.const 1
  i32.sub
  local.get $1
  i32.store8
  local.get $2
  i32.const 2
  i32.le_u
  if
   return
  end
  local.get $0
  i32.const 1
  i32.add
  local.get $1
  i32.store8
  local.get $0
  i32.const 2
  i32.add
  local.get $1
  i32.store8
  local.get $0
  local.get $2
  i32.add
  i32.const 2
  i32.sub
  local.get $1
  i32.store8
  local.get $0
  local.get $2
  i32.add
  i32.const 3
  i32.sub
  local.get $1
  i32.store8
  local.get $2
  i32.const 6
  i32.le_u
  if
   return
  end
  local.get $0
  i32.const 3
  i32.add
  local.get $1
  i32.store8
  local.get $0
  local.get $2
  i32.add
  i32.const 4
  i32.sub
  local.get $1
  i32.store8
  local.get $2
  i32.const 8
  i32.le_u
  if
   return
  end
  i32.const 0
  local.get $0
  i32.sub
  i32.const 3
  i32.and
  local.set $3
  local.get $0
  local.get $3
  i32.add
  local.set $0
  local.get $2
  local.get $3
  i32.sub
  local.set $2
  local.get $2
  i32.const -4
  i32.and
  local.set $2
  i32.const -1
  i32.const 255
  i32.div_u
  local.get $1
  i32.const 255
  i32.and
  i32.mul
  local.set $4
  local.get $0
  local.get $4
  i32.store
  local.get $0
  local.get $2
  i32.add
  i32.const 4
  i32.sub
  local.get $4
  i32.store
  local.get $2
  i32.const 8
  i32.le_u
  if
   return
  end
  local.get $0
  i32.const 4
  i32.add
  local.get $4
  i32.store
  local.get $0
  i32.const 8
  i32.add
  local.get $4
  i32.store
  local.get $0
  local.get $2
  i32.add
  i32.const 12
  i32.sub
  local.get $4
  i32.store
  local.get $0
  local.get $2
  i32.add
  i32.const 8
  i32.sub
  local.get $4
  i32.store
  local.get $2
  i32.const 24
  i32.le_u
  if
   return
  end
  local.get $0
  i32.const 12
  i32.add
  local.get $4
  i32.store
  local.get $0
  i32.const 16
  i32.add
  local.get $4
  i32.store
  local.get $0
  i32.const 20
  i32.add
  local.get $4
  i32.store
  local.get $0
  i32.const 24
  i32.add
  local.get $4
  i32.store
  local.get $0
  local.get $2
  i32.add
  i32.const 28
  i32.sub
  local.get $4
  i32.store
  local.get $0
  local.get $2
  i32.add
  i32.const 24
  i32.sub
  local.get $4
  i32.store
  local.get $0
  local.get $2
  i32.add
  i32.const 20
  i32.sub
  local.get $4
  i32.store
  local.get $0
  local.get $2
  i32.add
  i32.const 16
  i32.sub
  local.get $4
  i32.store
  i32.const 24
  local.get $0
  i32.const 4
  i32.and
  i32.add
  local.set $3
  local.get $0
  local.get $3
  i32.add
  local.set $0
  local.get $2
  local.get $3
  i32.sub
  local.set $2
  local.get $4
  i64.extend_i32_u
  local.get $4
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  local.set $5
  block $break|0
   loop $continue|0
    local.get $2
    i32.const 32
    i32.ge_u
    if
     block
      local.get $0
      local.get $5
      i64.store
      local.get $0
      i32.const 8
      i32.add
      local.get $5
      i64.store
      local.get $0
      i32.const 16
      i32.add
      local.get $5
      i64.store
      local.get $0
      i32.const 24
      i32.add
      local.get $5
      i64.store
      local.get $2
      i32.const 32
      i32.sub
      local.set $2
      local.get $0
      i32.const 32
      i32.add
      local.set $0
     end
     br $continue|0
    end
   end
  end
 )
 (func $~lib/array/Array<u8>#constructor (; 14 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.const 1073741816
  i32.gt_u
  if
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  i32.const 0
  i32.shl
  local.set $2
  local.get $2
  call $~lib/internal/arraybuffer/allocateUnsafe
  local.set $3
  block (result i32)
   local.get $0
   i32.eqz
   if
    i32.const 8
    call $~lib/memory/memory.allocate
    local.set $0
   end
   local.get $0
   i32.const 0
   i32.store
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
  end
  local.get $3
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  block $~lib/memory/memory.fill|inlined.0
   local.get $3
   i32.const 8
   i32.add
   local.set $4
   i32.const 0
   local.set $5
   local.get $2
   local.set $6
   local.get $4
   local.get $5
   local.get $6
   call $~lib/internal/memory/memset
  end
  local.get $0
 )
 (func $~lib/string/String#charCodeAt (; 15 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.const 0
  i32.ne
  i32.eqz
  if
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32.load
  i32.ge_u
  if
   i32.const -1
   return
  end
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  i32.load16_u offset=4
 )
 (func $~lib/internal/memory/memcpy (; 16 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $break|0
   loop $continue|0
    local.get $2
    if (result i32)
     local.get $1
     i32.const 3
     i32.and
    else     
     local.get $2
    end
    if
     block
      block (result i32)
       local.get $0
       local.tee $5
       i32.const 1
       i32.add
       local.set $0
       local.get $5
      end
      block (result i32)
       local.get $1
       local.tee $5
       i32.const 1
       i32.add
       local.set $1
       local.get $5
      end
      i32.load8_u
      i32.store8
      local.get $2
      i32.const 1
      i32.sub
      local.set $2
     end
     br $continue|0
    end
   end
  end
  local.get $0
  i32.const 3
  i32.and
  i32.const 0
  i32.eq
  if
   block $break|1
    loop $continue|1
     local.get $2
     i32.const 16
     i32.ge_u
     if
      block
       local.get $0
       local.get $1
       i32.load
       i32.store
       local.get $0
       i32.const 4
       i32.add
       local.get $1
       i32.const 4
       i32.add
       i32.load
       i32.store
       local.get $0
       i32.const 8
       i32.add
       local.get $1
       i32.const 8
       i32.add
       i32.load
       i32.store
       local.get $0
       i32.const 12
       i32.add
       local.get $1
       i32.const 12
       i32.add
       i32.load
       i32.store
       local.get $1
       i32.const 16
       i32.add
       local.set $1
       local.get $0
       i32.const 16
       i32.add
       local.set $0
       local.get $2
       i32.const 16
       i32.sub
       local.set $2
      end
      br $continue|1
     end
    end
   end
   local.get $2
   i32.const 8
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $0
    i32.const 4
    i32.add
    local.get $1
    i32.const 4
    i32.add
    i32.load
    i32.store
    local.get $0
    i32.const 8
    i32.add
    local.set $0
    local.get $1
    i32.const 8
    i32.add
    local.set $1
   end
   local.get $2
   i32.const 4
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $0
    i32.const 4
    i32.add
    local.set $0
    local.get $1
    i32.const 4
    i32.add
    local.set $1
   end
   local.get $2
   i32.const 2
   i32.and
   if
    local.get $0
    local.get $1
    i32.load16_u
    i32.store16
    local.get $0
    i32.const 2
    i32.add
    local.set $0
    local.get $1
    i32.const 2
    i32.add
    local.set $1
   end
   local.get $2
   i32.const 1
   i32.and
   if
    block (result i32)
     local.get $0
     local.tee $5
     i32.const 1
     i32.add
     local.set $0
     local.get $5
    end
    block (result i32)
     local.get $1
     local.tee $5
     i32.const 1
     i32.add
     local.set $1
     local.get $5
    end
    i32.load8_u
    i32.store8
   end
   return
  end
  local.get $2
  i32.const 32
  i32.ge_u
  if
   block $break|2
    block $case2|2
     block $case1|2
      block $case0|2
       local.get $0
       i32.const 3
       i32.and
       local.set $5
       local.get $5
       i32.const 1
       i32.eq
       br_if $case0|2
       local.get $5
       i32.const 2
       i32.eq
       br_if $case1|2
       local.get $5
       i32.const 3
       i32.eq
       br_if $case2|2
       br $break|2
      end
      block
       local.get $1
       i32.load
       local.set $3
       block (result i32)
        local.get $0
        local.tee $5
        i32.const 1
        i32.add
        local.set $0
        local.get $5
       end
       block (result i32)
        local.get $1
        local.tee $5
        i32.const 1
        i32.add
        local.set $1
        local.get $5
       end
       i32.load8_u
       i32.store8
       block (result i32)
        local.get $0
        local.tee $5
        i32.const 1
        i32.add
        local.set $0
        local.get $5
       end
       block (result i32)
        local.get $1
        local.tee $5
        i32.const 1
        i32.add
        local.set $1
        local.get $5
       end
       i32.load8_u
       i32.store8
       block (result i32)
        local.get $0
        local.tee $5
        i32.const 1
        i32.add
        local.set $0
        local.get $5
       end
       block (result i32)
        local.get $1
        local.tee $5
        i32.const 1
        i32.add
        local.set $1
        local.get $5
       end
       i32.load8_u
       i32.store8
       local.get $2
       i32.const 3
       i32.sub
       local.set $2
       block $break|3
        loop $continue|3
         local.get $2
         i32.const 17
         i32.ge_u
         if
          block
           local.get $1
           i32.const 1
           i32.add
           i32.load
           local.set $4
           local.get $0
           local.get $3
           i32.const 24
           i32.shr_u
           local.get $4
           i32.const 8
           i32.shl
           i32.or
           i32.store
           local.get $1
           i32.const 5
           i32.add
           i32.load
           local.set $3
           local.get $0
           i32.const 4
           i32.add
           local.get $4
           i32.const 24
           i32.shr_u
           local.get $3
           i32.const 8
           i32.shl
           i32.or
           i32.store
           local.get $1
           i32.const 9
           i32.add
           i32.load
           local.set $4
           local.get $0
           i32.const 8
           i32.add
           local.get $3
           i32.const 24
           i32.shr_u
           local.get $4
           i32.const 8
           i32.shl
           i32.or
           i32.store
           local.get $1
           i32.const 13
           i32.add
           i32.load
           local.set $3
           local.get $0
           i32.const 12
           i32.add
           local.get $4
           i32.const 24
           i32.shr_u
           local.get $3
           i32.const 8
           i32.shl
           i32.or
           i32.store
           local.get $1
           i32.const 16
           i32.add
           local.set $1
           local.get $0
           i32.const 16
           i32.add
           local.set $0
           local.get $2
           i32.const 16
           i32.sub
           local.set $2
          end
          br $continue|3
         end
        end
       end
       br $break|2
       unreachable
      end
      unreachable
     end
     block
      local.get $1
      i32.load
      local.set $3
      block (result i32)
       local.get $0
       local.tee $5
       i32.const 1
       i32.add
       local.set $0
       local.get $5
      end
      block (result i32)
       local.get $1
       local.tee $5
       i32.const 1
       i32.add
       local.set $1
       local.get $5
      end
      i32.load8_u
      i32.store8
      block (result i32)
       local.get $0
       local.tee $5
       i32.const 1
       i32.add
       local.set $0
       local.get $5
      end
      block (result i32)
       local.get $1
       local.tee $5
       i32.const 1
       i32.add
       local.set $1
       local.get $5
      end
      i32.load8_u
      i32.store8
      local.get $2
      i32.const 2
      i32.sub
      local.set $2
      block $break|4
       loop $continue|4
        local.get $2
        i32.const 18
        i32.ge_u
        if
         block
          local.get $1
          i32.const 2
          i32.add
          i32.load
          local.set $4
          local.get $0
          local.get $3
          i32.const 16
          i32.shr_u
          local.get $4
          i32.const 16
          i32.shl
          i32.or
          i32.store
          local.get $1
          i32.const 6
          i32.add
          i32.load
          local.set $3
          local.get $0
          i32.const 4
          i32.add
          local.get $4
          i32.const 16
          i32.shr_u
          local.get $3
          i32.const 16
          i32.shl
          i32.or
          i32.store
          local.get $1
          i32.const 10
          i32.add
          i32.load
          local.set $4
          local.get $0
          i32.const 8
          i32.add
          local.get $3
          i32.const 16
          i32.shr_u
          local.get $4
          i32.const 16
          i32.shl
          i32.or
          i32.store
          local.get $1
          i32.const 14
          i32.add
          i32.load
          local.set $3
          local.get $0
          i32.const 12
          i32.add
          local.get $4
          i32.const 16
          i32.shr_u
          local.get $3
          i32.const 16
          i32.shl
          i32.or
          i32.store
          local.get $1
          i32.const 16
          i32.add
          local.set $1
          local.get $0
          i32.const 16
          i32.add
          local.set $0
          local.get $2
          i32.const 16
          i32.sub
          local.set $2
         end
         br $continue|4
        end
       end
      end
      br $break|2
      unreachable
     end
     unreachable
    end
    block
     local.get $1
     i32.load
     local.set $3
     block (result i32)
      local.get $0
      local.tee $5
      i32.const 1
      i32.add
      local.set $0
      local.get $5
     end
     block (result i32)
      local.get $1
      local.tee $5
      i32.const 1
      i32.add
      local.set $1
      local.get $5
     end
     i32.load8_u
     i32.store8
     local.get $2
     i32.const 1
     i32.sub
     local.set $2
     block $break|5
      loop $continue|5
       local.get $2
       i32.const 19
       i32.ge_u
       if
        block
         local.get $1
         i32.const 3
         i32.add
         i32.load
         local.set $4
         local.get $0
         local.get $3
         i32.const 8
         i32.shr_u
         local.get $4
         i32.const 24
         i32.shl
         i32.or
         i32.store
         local.get $1
         i32.const 7
         i32.add
         i32.load
         local.set $3
         local.get $0
         i32.const 4
         i32.add
         local.get $4
         i32.const 8
         i32.shr_u
         local.get $3
         i32.const 24
         i32.shl
         i32.or
         i32.store
         local.get $1
         i32.const 11
         i32.add
         i32.load
         local.set $4
         local.get $0
         i32.const 8
         i32.add
         local.get $3
         i32.const 8
         i32.shr_u
         local.get $4
         i32.const 24
         i32.shl
         i32.or
         i32.store
         local.get $1
         i32.const 15
         i32.add
         i32.load
         local.set $3
         local.get $0
         i32.const 12
         i32.add
         local.get $4
         i32.const 8
         i32.shr_u
         local.get $3
         i32.const 24
         i32.shl
         i32.or
         i32.store
         local.get $1
         i32.const 16
         i32.add
         local.set $1
         local.get $0
         i32.const 16
         i32.add
         local.set $0
         local.get $2
         i32.const 16
         i32.sub
         local.set $2
        end
        br $continue|5
       end
      end
     end
     br $break|2
     unreachable
    end
    unreachable
   end
  end
  local.get $2
  i32.const 16
  i32.and
  if
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 8
  i32.and
  if
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 4
  i32.and
  if
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 2
  i32.and
  if
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 1
  i32.and
  if
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
  end
 )
 (func $~lib/internal/memory/memmove (; 17 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $0
  local.get $1
  i32.eq
  if
   return
  end
  local.get $1
  local.get $2
  i32.add
  local.get $0
  i32.le_u
  local.tee $3
  if (result i32)
   local.get $3
  else   
   local.get $0
   local.get $2
   i32.add
   local.get $1
   i32.le_u
  end
  if
   local.get $0
   local.get $1
   local.get $2
   call $~lib/internal/memory/memcpy
   return
  end
  local.get $0
  local.get $1
  i32.lt_u
  if
   local.get $1
   i32.const 7
   i32.and
   local.get $0
   i32.const 7
   i32.and
   i32.eq
   if
    block $break|0
     loop $continue|0
      local.get $0
      i32.const 7
      i32.and
      if
       block
        local.get $2
        i32.eqz
        if
         return
        end
        local.get $2
        i32.const 1
        i32.sub
        local.set $2
        block (result i32)
         local.get $0
         local.tee $3
         i32.const 1
         i32.add
         local.set $0
         local.get $3
        end
        block (result i32)
         local.get $1
         local.tee $3
         i32.const 1
         i32.add
         local.set $1
         local.get $3
        end
        i32.load8_u
        i32.store8
       end
       br $continue|0
      end
     end
    end
    block $break|1
     loop $continue|1
      local.get $2
      i32.const 8
      i32.ge_u
      if
       block
        local.get $0
        local.get $1
        i64.load
        i64.store
        local.get $2
        i32.const 8
        i32.sub
        local.set $2
        local.get $0
        i32.const 8
        i32.add
        local.set $0
        local.get $1
        i32.const 8
        i32.add
        local.set $1
       end
       br $continue|1
      end
     end
    end
   end
   block $break|2
    loop $continue|2
     local.get $2
     if
      block
       block (result i32)
        local.get $0
        local.tee $3
        i32.const 1
        i32.add
        local.set $0
        local.get $3
       end
       block (result i32)
        local.get $1
        local.tee $3
        i32.const 1
        i32.add
        local.set $1
        local.get $3
       end
       i32.load8_u
       i32.store8
       local.get $2
       i32.const 1
       i32.sub
       local.set $2
      end
      br $continue|2
     end
    end
   end
  else   
   local.get $1
   i32.const 7
   i32.and
   local.get $0
   i32.const 7
   i32.and
   i32.eq
   if
    block $break|3
     loop $continue|3
      local.get $0
      local.get $2
      i32.add
      i32.const 7
      i32.and
      if
       block
        local.get $2
        i32.eqz
        if
         return
        end
        local.get $0
        local.get $2
        i32.const 1
        i32.sub
        local.tee $2
        i32.add
        local.get $1
        local.get $2
        i32.add
        i32.load8_u
        i32.store8
       end
       br $continue|3
      end
     end
    end
    block $break|4
     loop $continue|4
      local.get $2
      i32.const 8
      i32.ge_u
      if
       block
        local.get $2
        i32.const 8
        i32.sub
        local.set $2
        local.get $0
        local.get $2
        i32.add
        local.get $1
        local.get $2
        i32.add
        i64.load
        i64.store
       end
       br $continue|4
      end
     end
    end
   end
   block $break|5
    loop $continue|5
     local.get $2
     if
      local.get $0
      local.get $2
      i32.const 1
      i32.sub
      local.tee $2
      i32.add
      local.get $1
      local.get $2
      i32.add
      i32.load8_u
      i32.store8
      br $continue|5
     end
    end
   end
  end
 )
 (func $~lib/allocator/arena/__memory_free (; 18 ;) (type $FUNCSIG$vi) (param $0 i32)
  nop
 )
 (func $~lib/internal/arraybuffer/reallocateUnsafe (; 19 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load
  local.set $2
  local.get $1
  local.get $2
  i32.gt_s
  if
   local.get $1
   i32.const 1073741816
   i32.le_s
   i32.eqz
   if
    call $~lib/env/abort
    unreachable
   end
   local.get $1
   local.get $2
   call $~lib/internal/arraybuffer/computeSize
   i32.const 8
   i32.sub
   i32.le_s
   if
    local.get $0
    local.get $1
    i32.store
   else    
    local.get $1
    call $~lib/internal/arraybuffer/allocateUnsafe
    local.set $3
    block $~lib/memory/memory.copy|inlined.0
     local.get $3
     i32.const 8
     i32.add
     local.set $4
     local.get $0
     i32.const 8
     i32.add
     local.set $5
     local.get $2
     local.set $6
     local.get $4
     local.get $5
     local.get $6
     call $~lib/internal/memory/memmove
    end
    block $~lib/memory/memory.free|inlined.0
     local.get $0
     local.set $6
     local.get $6
     call $~lib/allocator/arena/__memory_free
     br $~lib/memory/memory.free|inlined.0
    end
    local.get $3
    local.set $0
   end
   block $~lib/memory/memory.fill|inlined.1
    local.get $0
    i32.const 8
    i32.add
    local.get $2
    i32.add
    local.set $3
    i32.const 0
    local.set $6
    local.get $1
    local.get $2
    i32.sub
    local.set $5
    local.get $3
    local.get $6
    local.get $5
    call $~lib/internal/memory/memset
   end
  else   
   local.get $1
   local.get $2
   i32.lt_s
   if
    local.get $1
    i32.const 0
    i32.ge_s
    i32.eqz
    if
     call $~lib/env/abort
     unreachable
    end
    local.get $0
    local.get $1
    i32.store
   end
  end
  local.get $0
 )
 (func $~lib/array/Array<u8>#push (; 20 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $0
  i32.load
  local.set $3
  local.get $3
  i32.load
  i32.const 0
  i32.shr_u
  local.set $4
  local.get $2
  i32.const 1
  i32.add
  local.set $5
  local.get $2
  local.get $4
  i32.ge_u
  if
   local.get $2
   i32.const 1073741816
   i32.ge_u
   if
    call $~lib/env/abort
    unreachable
   end
   local.get $3
   local.get $5
   i32.const 0
   i32.shl
   call $~lib/internal/arraybuffer/reallocateUnsafe
   local.set $3
   local.get $0
   local.get $3
   i32.store
  end
  local.get $0
  local.get $5
  i32.store offset=4
  block $~lib/internal/arraybuffer/STORE<u8,u8>|inlined.0
   local.get $3
   local.set $6
   local.get $2
   local.set $7
   local.get $1
   local.set $8
   i32.const 0
   local.set $9
   local.get $6
   local.get $7
   i32.const 0
   i32.shl
   i32.add
   local.get $9
   i32.add
   local.get $8
   i32.store8 offset=8
  end
  local.get $5
 )
 (func $~lib/utf8util/toUTF8Array (; 21 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 0
  i32.const 0
  call $~lib/array/Array<u8>#constructor
  local.set $1
  block $break|0
   i32.const 0
   local.set $2
   loop $repeat|0
    local.get $2
    local.get $0
    i32.load
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     local.get $0
     local.get $2
     call $~lib/string/String#charCodeAt
     local.set $3
     local.get $3
     i32.const 128
     i32.lt_s
     if
      local.get $1
      local.get $3
      call $~lib/array/Array<u8>#push
      drop
     else      
      local.get $3
      i32.const 2048
      i32.lt_s
      if
       local.get $1
       i32.const 192
       local.get $3
       i32.const 6
       i32.shr_s
       i32.or
       call $~lib/array/Array<u8>#push
       drop
       local.get $1
       i32.const 128
       local.get $3
       i32.const 63
       i32.and
       i32.or
       call $~lib/array/Array<u8>#push
       drop
      else       
       local.get $3
       i32.const 55296
       i32.lt_s
       local.tee $4
       if (result i32)
        local.get $4
       else        
        local.get $3
        i32.const 57344
        i32.ge_s
       end
       if
        local.get $1
        i32.const 224
        local.get $3
        i32.const 12
        i32.shr_s
        i32.or
        call $~lib/array/Array<u8>#push
        drop
        local.get $1
        i32.const 128
        local.get $3
        i32.const 6
        i32.shr_s
        i32.const 63
        i32.and
        i32.or
        call $~lib/array/Array<u8>#push
        drop
        local.get $1
        i32.const 128
        local.get $3
        i32.const 63
        i32.and
        i32.or
        call $~lib/array/Array<u8>#push
        drop
       else        
        local.get $2
        i32.const 1
        i32.add
        local.set $2
        i32.const 65536
        local.get $3
        i32.const 1023
        i32.and
        i32.const 10
        i32.shl
        local.get $0
        local.get $2
        call $~lib/string/String#charCodeAt
        i32.const 1023
        i32.and
        i32.or
        i32.add
        local.set $3
        local.get $1
        i32.const 240
        local.get $3
        i32.const 18
        i32.shr_s
        i32.or
        call $~lib/array/Array<u8>#push
        drop
        local.get $1
        i32.const 128
        local.get $3
        i32.const 12
        i32.shr_s
        i32.const 63
        i32.and
        i32.or
        call $~lib/array/Array<u8>#push
        drop
        local.get $1
        i32.const 128
        local.get $3
        i32.const 6
        i32.shr_s
        i32.const 63
        i32.and
        i32.or
        call $~lib/array/Array<u8>#push
        drop
        local.get $1
        i32.const 128
        local.get $3
        i32.const 63
        i32.and
        i32.or
        call $~lib/array/Array<u8>#push
        drop
       end
      end
     end
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $1
  i32.const 0
  call $~lib/array/Array<u8>#push
  drop
  local.get $1
 )
 (func $~lib/utf8util/string2cstr (; 22 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/utf8util/toUTF8Array
  local.set $1
  local.get $1
  i32.load
  local.set $2
  local.get $2
  i32.const 8
  i32.add
 )
 (func $~lib/env/ultrain_assert (; 23 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  i32.const 0
  i32.ne
  i32.const 0
  i32.eq
  if
   i32.const 0
   local.get $1
   call $~lib/utf8util/string2cstr
   call $~lib/env/ultrainio_assert
  end
 )
 (func $~lib/ultrain-ts-lib/src/utils/toUTF8Array (; 24 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 0
  i32.const 0
  call $~lib/array/Array<u8>#constructor
  local.set $1
  block $break|0
   i32.const 0
   local.set $2
   loop $repeat|0
    local.get $2
    local.get $0
    i32.load
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     local.get $0
     local.get $2
     call $~lib/string/String#charCodeAt
     local.set $3
     local.get $3
     i32.const 128
     i32.lt_s
     if
      local.get $1
      local.get $3
      call $~lib/array/Array<u8>#push
      drop
     else      
      local.get $3
      i32.const 2048
      i32.lt_s
      if
       local.get $1
       i32.const 192
       local.get $3
       i32.const 6
       i32.shr_s
       i32.or
       call $~lib/array/Array<u8>#push
       drop
       local.get $1
       i32.const 128
       local.get $3
       i32.const 63
       i32.and
       i32.or
       call $~lib/array/Array<u8>#push
       drop
      else       
       local.get $3
       i32.const 55296
       i32.lt_s
       local.tee $4
       if (result i32)
        local.get $4
       else        
        local.get $3
        i32.const 57344
        i32.ge_s
       end
       if
        local.get $1
        i32.const 224
        local.get $3
        i32.const 12
        i32.shr_s
        i32.or
        call $~lib/array/Array<u8>#push
        drop
        local.get $1
        i32.const 128
        local.get $3
        i32.const 6
        i32.shr_s
        i32.const 63
        i32.and
        i32.or
        call $~lib/array/Array<u8>#push
        drop
        local.get $1
        i32.const 128
        local.get $3
        i32.const 63
        i32.and
        i32.or
        call $~lib/array/Array<u8>#push
        drop
       else        
        local.get $2
        i32.const 1
        i32.add
        local.set $2
        i32.const 65536
        local.get $3
        i32.const 1023
        i32.and
        i32.const 10
        i32.shl
        local.get $0
        local.get $2
        call $~lib/string/String#charCodeAt
        i32.const 1023
        i32.and
        i32.or
        i32.add
        local.set $3
        local.get $1
        i32.const 240
        local.get $3
        i32.const 18
        i32.shr_s
        i32.or
        call $~lib/array/Array<u8>#push
        drop
        local.get $1
        i32.const 128
        local.get $3
        i32.const 12
        i32.shr_s
        i32.const 63
        i32.and
        i32.or
        call $~lib/array/Array<u8>#push
        drop
        local.get $1
        i32.const 128
        local.get $3
        i32.const 6
        i32.shr_s
        i32.const 63
        i32.and
        i32.or
        call $~lib/array/Array<u8>#push
        drop
        local.get $1
        i32.const 128
        local.get $3
        i32.const 63
        i32.and
        i32.or
        call $~lib/array/Array<u8>#push
        drop
       end
      end
     end
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $1
  i32.const 0
  call $~lib/array/Array<u8>#push
  drop
  local.get $1
 )
 (func $~lib/ultrain-ts-lib/src/utils/string2cstr (; 25 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/ultrain-ts-lib/src/utils/toUTF8Array
  local.set $1
  local.get $1
  i32.load
  local.set $2
  local.get $2
  i32.const 8
  i32.add
 )
 (func $~lib/ultrain-ts-lib/src/log/Logger#s (; 26 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  call $~lib/ultrain-ts-lib/src/utils/string2cstr
  call $~lib/ultrain-ts-lib/src/log/env.ts_log_print_s
  local.get $0
 )
 (func $~lib/ultrain-ts-lib/src/log/Logger#i (; 27 ;) (type $FUNCSIG$iiji) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  local.get $1
  local.get $2
  call $~lib/ultrain-ts-lib/src/log/env.ts_log_print_i
  local.get $0
 )
 (func $~lib/ultrain-ts-lib/src/log/Logger#flush (; 28 ;) (type $FUNCSIG$vi) (param $0 i32)
  call $~lib/ultrain-ts-lib/src/log/env.ts_log_done
 )
 (func $~lib/ultrain-ts-lib/src/asset/StringToSymbol (; 29 ;) (type $FUNCSIG$jii) (param $0 i32) (param $1 i32) (result i64)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.load
  local.set $2
  local.get $2
  i32.const 255
  i32.and
  i32.const 7
  i32.le_u
  i32.const 1296
  call $~lib/env/ultrain_assert
  i64.const 0
  local.set $3
  block $break|0
   i32.const 0
   local.set $4
   loop $repeat|0
    local.get $4
    local.get $2
    i32.const 255
    i32.and
    i32.lt_u
    i32.eqz
    br_if $break|0
    block
     local.get $1
     local.get $4
     i32.const 255
     i32.and
     call $~lib/string/String#charCodeAt
     i32.const 255
     i32.and
     local.set $5
     local.get $5
     global.get $~lib/ultrain-ts-lib/src/asset/CHAR_A
     i32.lt_u
     local.tee $6
     if (result i32)
      local.get $6
     else      
      local.get $5
      global.get $~lib/ultrain-ts-lib/src/asset/CHAR_Z
      i32.gt_u
     end
     if
      global.get $~lib/ultrain-ts-lib/src/log/Log
      i32.const 2040
      call $~lib/ultrain-ts-lib/src/log/Logger#s
      local.get $5
      i64.extend_i32_u
      i32.const 16
      call $~lib/ultrain-ts-lib/src/log/Logger#i
      call $~lib/ultrain-ts-lib/src/log/Logger#flush
     else      
      local.get $3
      local.get $5
      i64.extend_i32_u
      i64.const 8
      local.get $4
      i32.const 1
      i32.add
      i32.const 255
      i32.and
      i64.extend_i32_u
      i64.mul
      i64.shl
      i64.or
      local.set $3
     end
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $3
  local.get $0
  i32.const 255
  i32.and
  i64.extend_i32_u
  i64.or
  local.set $3
  local.get $3
 )
 (func $start:~lib/ultrain-ts-lib/src/asset (; 30 ;) (type $FUNCSIG$v)
  call $start:~lib/ultrain-ts-lib/src/log
  i32.const 4
  i32.const 1280
  call $~lib/ultrain-ts-lib/src/asset/StringToSymbol
  global.set $~lib/ultrain-ts-lib/src/asset/SYS
  global.get $~lib/ultrain-ts-lib/src/asset/SYS
  i64.const 8
  i64.shr_u
  global.set $~lib/ultrain-ts-lib/src/asset/SYS_NAME
 )
 (func $start:~lib/ultrain-ts-lib/src/account (; 31 ;) (type $FUNCSIG$v)
  call $start:~lib/ultrain-ts-lib/src/asset
 )
 (func $start:~lib/ultrain-ts-lib/src/contract (; 32 ;) (type $FUNCSIG$v)
  call $start:~lib/ultrain-ts-lib/lib/name_ex
  call $start:~lib/ultrain-ts-lib/src/account
 )
 (func $~lib/ultrain-ts-lib/lib/map/Map<String,String>#constructor (; 33 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 8
   call $~lib/memory/memory.allocate
   local.set $0
  end
  local.get $0
  i32.const 2152
  i32.store
  local.get $0
  i32.const 2168
  i32.store offset=4
  local.get $0
 )
 (func $~lib/ultrain-ts-lib/lib/map/Map<String,u64>#constructor (; 34 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 8
   call $~lib/memory/memory.allocate
   local.set $0
  end
  local.get $0
  i32.const 2184
  i32.store
  local.get $0
  i32.const 2200
  i32.store offset=4
  local.get $0
 )
 (func $~lib/ultrain-ts-lib/lib/map/Map<String,u8>#constructor (; 35 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 8
   call $~lib/memory/memory.allocate
   local.set $0
  end
  local.get $0
  i32.const 2216
  i32.store
  local.get $0
  i32.const 2232
  i32.store offset=4
  local.get $0
 )
 (func $~lib/array/Array<String>#constructor (; 36 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.const 268435454
  i32.gt_u
  if
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  i32.const 2
  i32.shl
  local.set $2
  local.get $2
  call $~lib/internal/arraybuffer/allocateUnsafe
  local.set $3
  block (result i32)
   local.get $0
   i32.eqz
   if
    i32.const 8
    call $~lib/memory/memory.allocate
    local.set $0
   end
   local.get $0
   i32.const 0
   i32.store
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
  end
  local.get $3
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  block $~lib/memory/memory.fill|inlined.2
   local.get $3
   i32.const 8
   i32.add
   local.set $4
   i32.const 0
   local.set $5
   local.get $2
   local.set $6
   local.get $4
   local.get $5
   local.get $6
   call $~lib/internal/memory/memset
  end
  local.get $0
 )
 (func $~lib/array/Array<Array<String>>#constructor (; 37 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.const 268435454
  i32.gt_u
  if
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  i32.const 2
  i32.shl
  local.set $2
  local.get $2
  call $~lib/internal/arraybuffer/allocateUnsafe
  local.set $3
  block (result i32)
   local.get $0
   i32.eqz
   if
    i32.const 8
    call $~lib/memory/memory.allocate
    local.set $0
   end
   local.get $0
   i32.const 0
   i32.store
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
  end
  local.get $3
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  block $~lib/memory/memory.fill|inlined.3
   local.get $3
   i32.const 8
   i32.add
   local.set $4
   i32.const 0
   local.set $5
   local.get $2
   local.set $6
   local.get $4
   local.get $5
   local.get $6
   call $~lib/internal/memory/memset
  end
  local.get $0
 )
 (func $~lib/ultrain-ts-lib/lib/arraymap/ArrayMap<String,String>#constructor (; 38 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  block (result i32)
   local.get $0
   i32.eqz
   if
    i32.const 8
    call $~lib/memory/memory.allocate
    local.set $0
   end
   local.get $0
   i32.const 0
   i32.store
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
  end
  i32.const 0
  local.get $1
  call $~lib/array/Array<String>#constructor
  i32.store
  local.get $0
  i32.const 0
  local.get $1
  call $~lib/array/Array<Array<String>>#constructor
  i32.store offset=4
  local.get $0
 )
 (func $~lib/array/Array<Array<u64>>#constructor (; 39 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.const 268435454
  i32.gt_u
  if
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  i32.const 2
  i32.shl
  local.set $2
  local.get $2
  call $~lib/internal/arraybuffer/allocateUnsafe
  local.set $3
  block (result i32)
   local.get $0
   i32.eqz
   if
    i32.const 8
    call $~lib/memory/memory.allocate
    local.set $0
   end
   local.get $0
   i32.const 0
   i32.store
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
  end
  local.get $3
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  block $~lib/memory/memory.fill|inlined.4
   local.get $3
   i32.const 8
   i32.add
   local.set $4
   i32.const 0
   local.set $5
   local.get $2
   local.set $6
   local.get $4
   local.get $5
   local.get $6
   call $~lib/internal/memory/memset
  end
  local.get $0
 )
 (func $~lib/ultrain-ts-lib/lib/arraymap/ArrayMap<String,u64>#constructor (; 40 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  block (result i32)
   local.get $0
   i32.eqz
   if
    i32.const 8
    call $~lib/memory/memory.allocate
    local.set $0
   end
   local.get $0
   i32.const 0
   i32.store
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
  end
  i32.const 0
  local.get $1
  call $~lib/array/Array<String>#constructor
  i32.store
  local.get $0
  i32.const 0
  local.get $1
  call $~lib/array/Array<Array<u64>>#constructor
  i32.store offset=4
  local.get $0
 )
 (func $~lib/array/Array<Array<u8>>#constructor (; 41 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.const 268435454
  i32.gt_u
  if
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  i32.const 2
  i32.shl
  local.set $2
  local.get $2
  call $~lib/internal/arraybuffer/allocateUnsafe
  local.set $3
  block (result i32)
   local.get $0
   i32.eqz
   if
    i32.const 8
    call $~lib/memory/memory.allocate
    local.set $0
   end
   local.get $0
   i32.const 0
   i32.store
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
  end
  local.get $3
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  block $~lib/memory/memory.fill|inlined.5
   local.get $3
   i32.const 8
   i32.add
   local.set $4
   i32.const 0
   local.set $5
   local.get $2
   local.set $6
   local.get $4
   local.get $5
   local.get $6
   call $~lib/internal/memory/memset
  end
  local.get $0
 )
 (func $~lib/ultrain-ts-lib/lib/arraymap/ArrayMap<String,u8>#constructor (; 42 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  block (result i32)
   local.get $0
   i32.eqz
   if
    i32.const 8
    call $~lib/memory/memory.allocate
    local.set $0
   end
   local.get $0
   i32.const 0
   i32.store
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
  end
  i32.const 0
  local.get $1
  call $~lib/array/Array<String>#constructor
  i32.store
  local.get $0
  i32.const 0
  local.get $1
  call $~lib/array/Array<Array<u8>>#constructor
  i32.store offset=4
  local.get $0
 )
 (func $~lib/ultrain-ts-lib/src/events/_EventObject#constructor (; 43 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   call $~lib/memory/memory.allocate
   local.set $0
  end
  local.get $0
  i32.const 0
  call $~lib/ultrain-ts-lib/lib/map/Map<String,String>#constructor
  i32.store
  local.get $0
  i32.const 0
  call $~lib/ultrain-ts-lib/lib/map/Map<String,u64>#constructor
  i32.store offset=4
  local.get $0
  i32.const 0
  call $~lib/ultrain-ts-lib/lib/map/Map<String,u8>#constructor
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.const 0
  call $~lib/ultrain-ts-lib/lib/arraymap/ArrayMap<String,String>#constructor
  i32.store offset=12
  local.get $0
  i32.const 0
  i32.const 0
  call $~lib/ultrain-ts-lib/lib/arraymap/ArrayMap<String,u64>#constructor
  i32.store offset=16
  local.get $0
  i32.const 0
  i32.const 0
  call $~lib/ultrain-ts-lib/lib/arraymap/ArrayMap<String,u8>#constructor
  i32.store offset=20
  local.get $0
 )
 (func $start:~lib/ultrain-ts-lib/src/events (; 44 ;) (type $FUNCSIG$v)
  i32.const 0
  call $~lib/ultrain-ts-lib/src/events/_EventObject#constructor
  global.set $~lib/ultrain-ts-lib/src/events/EventObject
 )
 (func $start:contract/FilterTransfer (; 45 ;) (type $FUNCSIG$v)
  call $start:~lib/ultrain-ts-lib/src/contract
  call $start:~lib/ultrain-ts-lib/src/events
 )
 (func $start (; 46 ;) (type $FUNCSIG$v)
  call $start:contract/FilterTransfer
 )
 (func $null (; 47 ;) (type $FUNCSIG$v)
 )
)
