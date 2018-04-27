(module
 (type $0 (func (param i32)))
 (type $1 (func (param i32 i32 i32 i32)))
 (type $2 (func (param i32 i32) (result i32)))
 (type $3 (func (result i32)))
 (type $4 (func (param i32 i32)))
 (type $5 (func (param i32 i32 i32)))
 (type $6 (func (param i32) (result i32)))
 (type $7 (func (param i32 i32 i32) (result i32)))
 (import "env" "memory" (memory $0 256 256))
 (import "env" "table" (table 2 2 anyfunc))
 (import "env" "tableBase" (global $gimport$2 i32))
 (import "env" "STACKTOP" (global $gimport$3 i32))
 (import "env" "abort" (func $fimport$4 (param i32)))
 (import "env" "___assert_fail" (func $fimport$5 (param i32 i32 i32 i32)))
 (import "env" "_calloc" (func $fimport$6 (param i32 i32) (result i32)))
 (import "env" "_free" (func $fimport$7 (param i32)))
 (global $global$0 (mut i32) (get_global $gimport$3))
 (elem (get_global $gimport$2) $17 $6)
 (data (i32.const 1024) "img->refcnt\00zbar/image.c\00zbar_image_free_data\00rc >= 0\00./zbar/refcnt.h\00_zbar_refcnt")
 (export "_scanImage" (func $15))
 (export "dynCall_vi" (func $16))
 (func $0 (; 4 ;) (type $3) (result i32)
  (local $var$0 i32)
  (local $var$1 i32)
  (set_local $var$0
   (get_global $global$0)
  )
  (set_global $global$0
   (i32.add
    (get_global $global$0)
    (i32.const 16)
   )
  )
  (i32.store
   (get_local $var$0)
   (call $fimport$6
    (i32.const 1)
    (i32.const 52)
   )
  )
  (call $1
   (i32.load
    (get_local $var$0)
   )
   (i32.const 1)
  )
  (i32.store offset=36
   (i32.load
    (get_local $var$0)
   )
   (i32.const -1)
  )
  (set_local $var$1
   (i32.load
    (get_local $var$0)
   )
  )
  (set_global $global$0
   (get_local $var$0)
  )
  (get_local $var$1)
 )
 (func $1 (; 5 ;) (type $4) (param $var$0 i32) (param $var$1 i32)
  (local $var$2 i32)
  (local $var$3 i32)
  (set_local $var$2
   (get_global $global$0)
  )
  (set_global $global$0
   (i32.add
    (get_global $global$0)
    (i32.const 16)
   )
  )
  (i32.store
   (tee_local $var$3
    (i32.add
     (get_local $var$2)
     (i32.const 4)
    )
   )
   (get_local $var$0)
  )
  (i32.store
   (get_local $var$2)
   (get_local $var$1)
  )
  (if
   (i32.eqz
    (i32.and
     (i32.eqz
      (call $9
       (i32.add
        (i32.load
         (get_local $var$3)
        )
        (i32.const 28)
       )
       (i32.load
        (get_local $var$2)
       )
      )
     )
     (i32.le_s
      (i32.load
       (get_local $var$2)
      )
      (i32.const 0)
     )
    )
   )
   (block
    (set_global $global$0
     (get_local $var$2)
    )
    (return)
   )
  )
  (if
   (i32.load offset=24
    (i32.load
     (get_local $var$3)
    )
   )
   (call_indirect (type $0)
    (i32.load
     (get_local $var$3)
    )
    (i32.and
     (i32.load offset=24
      (i32.load
       (get_local $var$3)
      )
     )
     (i32.const 1)
    )
   )
  )
  (if
   (i32.load offset=32
    (i32.load
     (get_local $var$3)
    )
   )
   (block
    (set_global $global$0
     (get_local $var$2)
    )
    (return)
   )
  )
  (call $2
   (i32.load
    (get_local $var$3)
   )
  )
  (set_global $global$0
   (get_local $var$2)
  )
 )
 (func $2 (; 6 ;) (type $0) (param $var$0 i32)
  (local $var$1 i32)
  (set_local $var$1
   (get_global $global$0)
  )
  (set_global $global$0
   (i32.add
    (get_global $global$0)
    (i32.const 16)
   )
  )
  (i32.store
   (get_local $var$1)
   (get_local $var$0)
  )
  (if
   (i32.eqz
    (i32.load offset=48
     (i32.load
      (get_local $var$1)
     )
    )
   )
   (block
    (call $fimport$7
     (i32.load
      (get_local $var$1)
     )
    )
    (set_global $global$0
     (get_local $var$1)
    )
    (return)
   )
  )
  (call $11
   (i32.load offset=48
    (i32.load
     (get_local $var$1)
    )
   )
   (i32.const -1)
  )
  (i32.store offset=48
   (i32.load
    (get_local $var$1)
   )
   (i32.const 0)
  )
  (call $fimport$7
   (i32.load
    (get_local $var$1)
   )
  )
  (set_global $global$0
   (get_local $var$1)
  )
 )
 (func $3 (; 7 ;) (type $0) (param $var$0 i32)
  (local $var$1 i32)
  (set_local $var$1
   (get_global $global$0)
  )
  (set_global $global$0
   (i32.add
    (get_global $global$0)
    (i32.const 16)
   )
  )
  (i32.store
   (get_local $var$1)
   (get_local $var$0)
  )
  (call $1
   (i32.load
    (get_local $var$1)
   )
   (i32.const -1)
  )
  (set_global $global$0
   (get_local $var$1)
  )
 )
 (func $4 (; 8 ;) (type $4) (param $var$0 i32) (param $var$1 i32)
  (local $var$2 i32)
  (local $var$3 i32)
  (set_local $var$2
   (get_global $global$0)
  )
  (set_global $global$0
   (i32.add
    (get_global $global$0)
    (i32.const 16)
   )
  )
  (i32.store
   (tee_local $var$3
    (i32.add
     (get_local $var$2)
     (i32.const 4)
    )
   )
   (get_local $var$0)
  )
  (i32.store
   (get_local $var$2)
   (get_local $var$1)
  )
  (i32.store
   (i32.load
    (get_local $var$3)
   )
   (i32.load
    (get_local $var$2)
   )
  )
  (set_global $global$0
   (get_local $var$2)
  )
 )
 (func $5 (; 9 ;) (type $5) (param $var$0 i32) (param $var$1 i32) (param $var$2 i32)
  (local $var$3 i32)
  (local $var$4 i32)
  (set_local $var$3
   (get_global $global$0)
  )
  (set_global $global$0
   (i32.add
    (get_global $global$0)
    (i32.const 16)
   )
  )
  (i32.store
   (tee_local $var$4
    (i32.add
     (get_local $var$3)
     (i32.const 8)
    )
   )
   (get_local $var$0)
  )
  (i32.store
   (tee_local $var$0
    (i32.add
     (get_local $var$3)
     (i32.const 4)
    )
   )
   (get_local $var$1)
  )
  (i32.store
   (get_local $var$3)
   (get_local $var$2)
  )
  (i32.store offset=4
   (i32.load
    (get_local $var$4)
   )
   (i32.load
    (get_local $var$0)
   )
  )
  (i32.store offset=8
   (i32.load
    (get_local $var$4)
   )
   (i32.load
    (get_local $var$3)
   )
  )
  (set_global $global$0
   (get_local $var$3)
  )
 )
 (func $6 (; 10 ;) (type $0) (param $var$0 i32)
  (local $var$1 i32)
  (local $var$2 i32)
  (local $var$3 i32)
  (local $var$4 i32)
  (set_local $var$2
   (get_global $global$0)
  )
  (set_global $global$0
   (i32.add
    (get_global $global$0)
    (i32.const 16)
   )
  )
  (i32.store
   (tee_local $var$1
    (i32.add
     (get_local $var$2)
     (i32.const 8)
    )
   )
   (get_local $var$0)
  )
  (if
   (i32.eqz
    (i32.load
     (get_local $var$1)
    )
   )
   (block
    (set_global $global$0
     (get_local $var$2)
    )
    (return)
   )
  )
  (set_local $var$4
   (i32.add
    (get_local $var$2)
    (i32.const 4)
   )
  )
  (set_local $var$0
   (i32.load
    (get_local $var$1)
   )
  )
  (if
   (i32.load offset=32
    (i32.load
     (get_local $var$1)
    )
   )
   (if
    (i32.load offset=28
     (get_local $var$0)
    )
    (block
     (i32.store
      (get_local $var$4)
      (call $0)
     )
     (i64.store align=4
      (tee_local $var$0
       (i32.load
        (get_local $var$4)
       )
      )
      (i64.load align=4
       (tee_local $var$3
        (i32.load
         (get_local $var$1)
        )
       )
      )
     )
     (i64.store offset=8 align=4
      (get_local $var$0)
      (i64.load offset=8 align=4
       (get_local $var$3)
      )
     )
     (i64.store offset=16 align=4
      (get_local $var$0)
      (i64.load offset=16 align=4
       (get_local $var$3)
      )
     )
     (i64.store offset=24 align=4
      (get_local $var$0)
      (i64.load offset=24 align=4
       (get_local $var$3)
      )
     )
     (i64.store offset=32 align=4
      (get_local $var$0)
      (i64.load offset=32 align=4
       (get_local $var$3)
      )
     )
     (i64.store offset=40 align=4
      (get_local $var$0)
      (i64.load offset=40 align=4
       (get_local $var$3)
      )
     )
     (i32.store offset=48
      (get_local $var$0)
      (i32.load offset=48
       (get_local $var$3)
      )
     )
     (call_indirect (type $0)
      (i32.load
       (get_local $var$4)
      )
      (i32.and
       (i32.load offset=24
        (i32.load
         (get_local $var$4)
        )
       )
       (i32.const 1)
      )
     )
     (i32.store offset=24
      (i32.load
       (get_local $var$1)
      )
      (i32.const 0)
     )
     (i32.store offset=32
      (i32.load
       (get_local $var$1)
      )
      (i32.const 0)
     )
     (i32.store offset=36
      (i32.load
       (get_local $var$1)
      )
      (i32.const -1)
     )
    )
    (call $fimport$5
     (i32.const 1024)
     (i32.const 1036)
     (i32.const 113)
     (i32.const 1049)
    )
   )
   (if
    (i32.load offset=24
     (get_local $var$0)
    )
    (if
     (i32.load offset=12
      (i32.load
       (get_local $var$1)
      )
     )
     (block
      (set_local $var$0
       (i32.load
        (get_local $var$1)
       )
      )
      (if
       (i32.ne
        (i32.load offset=24
         (i32.load
          (get_local $var$1)
         )
        )
        (i32.const 1)
       )
       (block
        (i32.store
         (get_local $var$2)
         (i32.load offset=24
          (get_local $var$0)
         )
        )
        (i32.store offset=24
         (i32.load
          (get_local $var$1)
         )
         (i32.const 1)
        )
        (call_indirect (type $0)
         (i32.load
          (get_local $var$1)
         )
         (i32.and
          (i32.load
           (get_local $var$2)
          )
          (i32.const 1)
         )
        )
       )
       (call $fimport$7
        (i32.load offset=12
         (get_local $var$0)
        )
       )
      )
     )
    )
   )
  )
  (i32.store offset=12
   (i32.load
    (get_local $var$1)
   )
   (i32.const 0)
  )
  (set_global $global$0
   (get_local $var$2)
  )
 )
 (func $7 (; 11 ;) (type $1) (param $var$0 i32) (param $var$1 i32) (param $var$2 i32) (param $var$3 i32)
  (local $var$4 i32)
  (local $var$5 i32)
  (set_local $var$4
   (get_global $global$0)
  )
  (set_global $global$0
   (i32.add
    (get_global $global$0)
    (i32.const 16)
   )
  )
  (i32.store
   (tee_local $var$5
    (i32.add
     (get_local $var$4)
     (i32.const 12)
    )
   )
   (get_local $var$0)
  )
  (i32.store
   (tee_local $var$0
    (i32.add
     (get_local $var$4)
     (i32.const 8)
    )
   )
   (get_local $var$1)
  )
  (i32.store
   (tee_local $var$1
    (i32.add
     (get_local $var$4)
     (i32.const 4)
    )
   )
   (get_local $var$2)
  )
  (i32.store
   (get_local $var$4)
   (get_local $var$3)
  )
  (call $6
   (i32.load
    (get_local $var$5)
   )
  )
  (i32.store offset=12
   (i32.load
    (get_local $var$5)
   )
   (i32.load
    (get_local $var$0)
   )
  )
  (i32.store offset=16
   (i32.load
    (get_local $var$5)
   )
   (i32.load
    (get_local $var$1)
   )
  )
  (i32.store offset=24
   (i32.load
    (get_local $var$5)
   )
   (i32.load
    (get_local $var$4)
   )
  )
  (set_global $global$0
   (get_local $var$4)
  )
 )
 (func $8 (; 12 ;) (type $6) (param $var$0 i32) (result i32)
  (local $var$1 i32)
  (set_local $var$1
   (get_global $global$0)
  )
  (set_global $global$0
   (i32.add
    (get_global $global$0)
    (i32.const 16)
   )
  )
  (i32.store
   (get_local $var$1)
   (get_local $var$0)
  )
  (if
   (i32.eqz
    (i32.load offset=48
     (i32.load
      (get_local $var$1)
     )
    )
   )
   (block
    (set_global $global$0
     (get_local $var$1)
    )
    (return
     (i32.const 0)
    )
   )
  )
  (set_local $var$0
   (i32.load offset=8
    (i32.load offset=48
     (i32.load
      (get_local $var$1)
     )
    )
   )
  )
  (set_global $global$0
   (get_local $var$1)
  )
  (get_local $var$0)
 )
 (func $9 (; 13 ;) (type $2) (param $var$0 i32) (param $var$1 i32) (result i32)
  (local $var$2 i32)
  (local $var$3 i32)
  (set_local $var$2
   (get_global $global$0)
  )
  (set_global $global$0
   (i32.add
    (get_global $global$0)
    (i32.const 16)
   )
  )
  (i32.store
   (tee_local $var$3
    (i32.add
     (get_local $var$2)
     (i32.const 8)
    )
   )
   (get_local $var$0)
  )
  (i32.store
   (tee_local $var$0
    (i32.add
     (get_local $var$2)
     (i32.const 4)
    )
   )
   (get_local $var$1)
  )
  (set_local $var$0
   (i32.add
    (i32.load
     (tee_local $var$1
      (i32.load
       (get_local $var$3)
      )
     )
    )
    (i32.load
     (get_local $var$0)
    )
   )
  )
  (i32.store
   (get_local $var$1)
   (get_local $var$0)
  )
  (i32.store
   (get_local $var$2)
   (get_local $var$0)
  )
  (if
   (i32.ge_s
    (i32.load
     (get_local $var$2)
    )
    (i32.const 0)
   )
   (block
    (set_local $var$0
     (i32.load
      (get_local $var$2)
     )
    )
    (set_global $global$0
     (get_local $var$2)
    )
    (return
     (get_local $var$0)
    )
   )
   (call $fimport$5
    (i32.const 1070)
    (i32.const 1078)
    (i32.const 75)
    (i32.const 1094)
   )
  )
  (i32.const 0)
 )
 (func $10 (; 14 ;) (type $0) (param $var$0 i32)
  (local $var$1 i32)
  (block $label$1
   (set_local $var$1
    (get_global $global$0)
   )
   (set_global $global$0
    (i32.add
     (get_global $global$0)
     (i32.const 16)
    )
   )
   (i32.store
    (get_local $var$1)
    (get_local $var$0)
   )
   (if
    (i32.load offset=36
     (i32.load
      (get_local $var$1)
     )
    )
    (block
     (call $11
      (i32.load offset=36
       (i32.load
        (get_local $var$1)
       )
      )
      (i32.const -1)
     )
     (i32.store offset=36
      (i32.load
       (get_local $var$1)
      )
      (i32.const 0)
     )
    )
   )
   (if
    (i32.load offset=24
     (i32.load
      (get_local $var$1)
     )
    )
    (call $fimport$7
     (i32.load offset=24
      (i32.load
       (get_local $var$1)
      )
     )
    )
   )
   (br_if $label$1
    (i32.eqz
     (i32.load offset=4
      (i32.load
       (get_local $var$1)
      )
     )
    )
   )
   (br_if $label$1
    (i32.eqz
     (i32.load offset=12
      (i32.load
       (get_local $var$1)
      )
     )
    )
   )
   (call $fimport$7
    (i32.load offset=12
     (i32.load
      (get_local $var$1)
     )
    )
   )
   (call $fimport$7
    (i32.load
     (get_local $var$1)
    )
   )
   (set_global $global$0
    (get_local $var$1)
   )
   (return)
  )
  (call $fimport$7
   (i32.load
    (get_local $var$1)
   )
  )
  (set_global $global$0
   (get_local $var$1)
  )
 )
 (func $11 (; 15 ;) (type $4) (param $var$0 i32) (param $var$1 i32)
  (local $var$2 i32)
  (local $var$3 i32)
  (set_local $var$2
   (get_global $global$0)
  )
  (set_global $global$0
   (i32.add
    (get_global $global$0)
    (i32.const 16)
   )
  )
  (i32.store
   (tee_local $var$3
    (i32.add
     (get_local $var$2)
     (i32.const 8)
    )
   )
   (get_local $var$0)
  )
  (i32.store
   (tee_local $var$0
    (i32.add
     (get_local $var$2)
     (i32.const 4)
    )
   )
   (get_local $var$1)
  )
  (i32.store
   (get_local $var$2)
   (i32.load
    (get_local $var$3)
   )
  )
  (if
   (i32.eqz
    (i32.and
     (i32.eqz
      (call $9
       (i32.load
        (get_local $var$2)
       )
       (i32.load
        (get_local $var$0)
       )
      )
     )
     (i32.le_s
      (i32.load
       (get_local $var$0)
      )
      (i32.const 0)
     )
    )
   )
   (block
    (set_global $global$0
     (get_local $var$2)
    )
    (return)
   )
  )
  (call $12
   (i32.load
    (get_local $var$2)
   )
  )
  (set_global $global$0
   (get_local $var$2)
  )
 )
 (func $12 (; 16 ;) (type $0) (param $var$0 i32)
  (local $var$1 i32)
  (local $var$2 i32)
  (set_local $var$1
   (get_global $global$0)
  )
  (set_global $global$0
   (i32.add
    (get_global $global$0)
    (i32.const 16)
   )
  )
  (i32.store
   (tee_local $var$2
    (i32.add
     (get_local $var$1)
     (i32.const 8)
    )
   )
   (get_local $var$0)
  )
  (i32.store
   (tee_local $var$0
    (i32.add
     (get_local $var$1)
     (i32.const 4)
    )
   )
   (i32.load offset=8
    (i32.load
     (get_local $var$2)
    )
   )
  )
  (loop $label$1
   (if
    (i32.load
     (get_local $var$0)
    )
    (block
     (i32.store
      (get_local $var$1)
      (i32.load offset=32
       (i32.load
        (get_local $var$0)
       )
      )
     )
     (i32.store offset=32
      (i32.load
       (get_local $var$0)
      )
      (i32.const 0)
     )
     (call $13
      (i32.load
       (get_local $var$0)
      )
      (i32.const -1)
     )
     (i32.store
      (get_local $var$0)
      (i32.load
       (get_local $var$1)
      )
     )
     (br $label$1)
    )
   )
  )
  (i32.store offset=8
   (i32.load
    (get_local $var$2)
   )
   (i32.const 0)
  )
  (call $fimport$7
   (i32.load
    (get_local $var$2)
   )
  )
  (set_global $global$0
   (get_local $var$1)
  )
 )
 (func $13 (; 17 ;) (type $4) (param $var$0 i32) (param $var$1 i32)
  (local $var$2 i32)
  (local $var$3 i32)
  (set_local $var$2
   (get_global $global$0)
  )
  (set_global $global$0
   (i32.add
    (get_global $global$0)
    (i32.const 16)
   )
  )
  (i32.store
   (tee_local $var$3
    (i32.add
     (get_local $var$2)
     (i32.const 4)
    )
   )
   (get_local $var$0)
  )
  (i32.store
   (get_local $var$2)
   (get_local $var$1)
  )
  (if
   (i32.eqz
    (i32.and
     (i32.eqz
      (call $9
       (i32.add
        (i32.load
         (get_local $var$3)
        )
        (i32.const 28)
       )
       (i32.load
        (get_local $var$2)
       )
      )
     )
     (i32.le_s
      (i32.load
       (get_local $var$2)
      )
      (i32.const 0)
     )
    )
   )
   (block
    (set_global $global$0
     (get_local $var$2)
    )
    (return)
   )
  )
  (call $10
   (i32.load
    (get_local $var$3)
   )
  )
  (set_global $global$0
   (get_local $var$2)
  )
 )
 (func $14 (; 18 ;) (type $6) (param $var$0 i32) (result i32)
  (local $var$1 i32)
  (set_local $var$1
   (get_global $global$0)
  )
  (set_global $global$0
   (i32.add
    (get_global $global$0)
    (i32.const 16)
   )
  )
  (i32.store
   (get_local $var$1)
   (get_local $var$0)
  )
  (set_local $var$0
   (i32.load offset=12
    (i32.load
     (get_local $var$1)
    )
   )
  )
  (set_global $global$0
   (get_local $var$1)
  )
  (get_local $var$0)
 )
 (func $15 (; 19 ;) (type $7) (param $var$0 i32) (param $var$1 i32) (param $var$2 i32) (result i32)
  (local $var$3 i32)
  (call $5
   (tee_local $var$3
    (call $0)
   )
   (get_local $var$1)
   (get_local $var$2)
  )
  (call $4
   (get_local $var$3)
   (i32.const 808466521)
  )
  (call $7
   (get_local $var$3)
   (get_local $var$0)
   (i32.mul
    (i32.shl
     (get_local $var$1)
     (i32.const 2)
    )
    (get_local $var$2)
   )
   (i32.const 1)
  )
  (set_local $var$0
   (call $14
    (call $8
     (get_local $var$3)
    )
   )
  )
  (call $3
   (get_local $var$3)
  )
  (get_local $var$0)
 )
 (func $16 (; 20 ;) (type $4) (param $var$0 i32) (param $var$1 i32)
  (call_indirect (type $0)
   (get_local $var$1)
   (i32.and
    (get_local $var$0)
    (i32.const 1)
   )
  )
 )
 (func $17 (; 21 ;) (type $0) (param $var$0 i32)
  (call $fimport$4
   (i32.const 0)
  )
 )
)

