(module
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32 i32 i32)))
 (global $index/CHECKERBOARD_SIZE i32 (i32.const 20))
 (global $index/CHECKERBOARD_BUFFER_POINTER i32 (i32.const 0))
 (global $index/CHECKERBOARD_BUFFER_SIZE i32 (i32.const 1600))
 (global $~lib/memory/__data_end i32 (i32.const 8))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 16392))
 (global $~lib/memory/__heap_base i32 (i32.const 16392))
 (memory $0 0)
 (table $0 1 funcref)
 (elem $0 (i32.const 1))
 (export "CHECKERBOARD_BUFFER_POINTER" (global $index/CHECKERBOARD_BUFFER_POINTER))
 (export "CHECKERBOARD_BUFFER_SIZE" (global $index/CHECKERBOARD_BUFFER_SIZE))
 (export "generateCheckerBoard" (func $index/generateCheckerBoard))
 (export "memory" (memory $0))
 (start $~start)
 (func $start:index
  i32.const 1
  memory.grow
  drop
 )
 (func $index/generateCheckerBoard (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  i32.const 0
  local.set $6
  loop $for-loop|0
   local.get $6
   global.get $index/CHECKERBOARD_SIZE
   i32.lt_s
   local.set $7
   local.get $7
   if
    i32.const 0
    local.set $8
    loop $for-loop|1
     local.get $8
     global.get $index/CHECKERBOARD_SIZE
     i32.lt_s
     local.set $9
     local.get $9
     if
      i32.const 1
      local.set $10
      local.get $8
      i32.const 2
      i32.rem_s
      i32.const 0
      i32.eq
      if
       i32.const 0
       local.set $10
      end
      local.get $6
      i32.const 2
      i32.rem_s
      i32.const 0
      i32.eq
      if
       local.get $10
       i32.eqz
       local.set $10
      end
      local.get $0
      local.set $11
      local.get $1
      local.set $12
      local.get $2
      local.set $13
      local.get $10
      i32.eqz
      if
       local.get $3
       local.set $11
       local.get $4
       local.set $12
       local.get $5
       local.set $13
      end
      local.get $8
      global.get $index/CHECKERBOARD_SIZE
      i32.mul
      local.get $6
      i32.add
      local.set $14
      local.get $14
      i32.const 4
      i32.mul
      local.set $15
      global.get $index/CHECKERBOARD_BUFFER_POINTER
      local.get $15
      i32.add
      i32.const 0
      i32.add
      local.get $11
      i32.store8
      global.get $index/CHECKERBOARD_BUFFER_POINTER
      local.get $15
      i32.add
      i32.const 1
      i32.add
      local.get $12
      i32.store8
      global.get $index/CHECKERBOARD_BUFFER_POINTER
      local.get $15
      i32.add
      i32.const 2
      i32.add
      local.get $13
      i32.store8
      global.get $index/CHECKERBOARD_BUFFER_POINTER
      local.get $15
      i32.add
      i32.const 3
      i32.add
      i32.const 255
      i32.store8
      local.get $8
      i32.const 1
      i32.add
      local.set $8
      br $for-loop|1
     end
    end
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $for-loop|0
   end
  end
 )
 (func $~start
  call $start:index
 )
)
