(module
  (type $t0 (func (param i32 i32 i32 i32) (result i32)))
  (type $t1 (func (param i32 i32)))
  (type $t2 (func (param i32)))
  (type $t3 (func (param i32) (result i32)))
  (type $t4 (func (param i32 i32) (result i32)))
  (type $t5 (func (param i32 i32 i32 i32)))
  (type $t6 (func (result i32)))
  (type $t7 (func (param i32 i32 i32 i32 i32) (result i32)))
  (type $t8 (func))
  (import "arduino" "getPinLED" (func $arduino.getPinLED (type $t6)))
  (import "arduino" "pinMode" (func $arduino.pinMode (type $t1)))
  (import "u8g2" "oledPrint" (func $u8g2.oledPrint (type $t5)))
  (import "arduino" "digitalWrite" (func $arduino.digitalWrite (type $t1)))
  (import "arduino" "delay" (func $arduino.delay (type $t2)))
  (func $f5 (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (result i32)
    (local $l4 i32)
    loop $L0
      local.get $l4
      local.tee $p3
      local.get $p2
      i32.ne
      if $I1
        local.get $p3
        i32.const 1
        i32.add
        local.set $l4
        local.get $p0
        local.get $p3
        i32.add
        i32.load8_u
        local.get $p1
        local.get $p3
        i32.add
        i32.load8_u
        i32.eq
        br_if $L0
      end
    end
    local.get $p2
    local.get $p3
    i32.le_u)
  (func $f6 (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (result i32)
    local.get $p2
    i32.const -2128831035
    i32.mul
    local.set $p2
    loop $L0
      local.get $p1
      if $I1
        local.get $p1
        i32.const 1
        i32.sub
        local.set $p1
        local.get $p2
        local.get $p0
        i32.load8_u
        i32.xor
        i32.const 16777619
        i32.mul
        local.set $p2
        local.get $p0
        i32.const 1
        i32.add
        local.set $p0
        br $L0
      end
    end
    local.get $p2)
  (func $f7 (type $t3) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32)
    i32.const 2120
    i32.const 2120
    i64.load
    i64.const 1
    i64.add
    i64.store
    i32.const 2064
    i32.const 2064
    i32.load
    local.tee $l1
    local.get $p0
    i32.const 15
    i32.add
    i32.const -16
    i32.and
    local.tee $l2
    i32.add
    local.tee $p0
    i32.store
    i32.const 2112
    i32.const 2112
    i64.load
    local.get $l2
    i64.extend_i32_u
    i64.add
    i64.store
    i32.const 2104
    i32.load
    local.set $l3
    block $B0
      loop $L1
        local.get $p0
        local.get $l3
        i32.lt_u
        br_if $B0
        memory.size
        memory.grow
        i32.const -1
        i32.ne
        if $I2
          i32.const 2104
          memory.size
          i32.const 16
          i32.shl
          local.tee $l3
          i32.store
          i32.const 2064
          i32.load
          local.set $p0
          br $L1
        end
      end
      unreachable
    end
    local.get $l1
    i32.const 0
    local.get $l2
    memory.fill
    local.get $l1)
  (func $f8 (type $t3) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l1
    global.set $g0
    block $B0
      local.get $p0
      i32.const 0
      i32.lt_s
      br_if $B0
      local.get $p0
      call $f7
      local.set $l2
      local.get $p0
      i32.eqz
      br_if $B0
      local.get $l1
      local.get $p0
      i32.store offset=8
      local.get $l1
      local.get $p0
      i32.store offset=4
      local.get $l1
      local.get $l2
      i32.store
      local.get $l1
      local.get $l2
      i32.store offset=12
      local.get $l1
      i32.const 12
      i32.add
      local.get $l1
      call $f9
      local.get $l1
      i32.const 16
      i32.add
      global.set $g0
      local.get $l2
      return
    end
    unreachable)
  (func $f9 (type $t1) (param $p0 i32) (param $p1 i32)
    i32.const 2068
    local.get $p0
    local.get $p1
    local.get $p0
    i32.const 2080
    i32.load8_u
    i32.const 2072
    i32.load
    local.get $p0
    call $f6
    call $f10)
  (func $f10 (type $t5) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32) (local $l13 i32) (local $l14 i32) (local $l15 i32) (local $l16 i32) (local $l17 i32) (local $l18 i32) (local $l19 i32)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l5
    global.set $g0
    block $B0
      block $B1
        local.get $p0
        i32.eqz
        br_if $B1
        block $B2
          local.get $p0
          i32.load8_u offset=14
          local.tee $l4
          i32.const 29
          i32.gt_u
          br_if $B2
          local.get $p0
          i32.load offset=8
          i32.const 6
          local.get $l4
          i32.shl
          i32.le_u
          br_if $B2
          i32.const 2060
          i32.const 2060
          i32.load
          local.tee $p3
          i32.const 7
          i32.shl
          local.get $p3
          i32.xor
          local.tee $p3
          i32.const 1
          i32.shr_u
          local.get $p3
          i32.xor
          local.tee $p3
          i32.const 9
          i32.shl
          local.get $p3
          i32.xor
          local.tee $p3
          i32.store
          local.get $l5
          i64.const 0
          i64.store offset=8
          local.get $l5
          local.get $p0
          i64.load offset=24 align=4
          i64.store offset=24
          local.get $l5
          local.get $p0
          i64.load offset=16 align=4
          i64.store offset=16
          local.get $l5
          local.get $p0
          i32.load16_u offset=12
          i32.store16 offset=12
          local.get $l5
          i32.const 0
          i32.store offset=8
          local.get $l5
          local.get $p3
          i32.store offset=4
          local.get $l5
          local.get $l4
          i32.const 1
          i32.add
          local.tee $p3
          i32.store8 offset=14
          local.get $l5
          local.get $p0
          i32.load8_u offset=13
          local.get $p0
          i32.load8_u offset=12
          i32.add
          i32.const 3
          i32.shl
          i32.const 12
          i32.add
          local.get $p3
          i32.shl
          call $f7
          i32.store
          local.get $p0
          i32.load8_u offset=12
          call $f7
          local.set $l6
          local.get $p0
          i32.load8_u offset=13
          call $f7
          local.set $l11
          i32.const 0
          local.set $l4
          i32.const 0
          local.set $p3
          loop $L3
            local.get $l7
            i32.eqz
            if $I4
              i32.const 1
              local.get $p0
              i32.load8_u offset=14
              local.tee $l7
              i32.shl
              i32.const 0
              local.get $l7
              i32.const 31
              i32.le_u
              select
              local.tee $l8
              i32.const 24
              i32.shr_u
              local.set $l18
              local.get $l8
              i32.const 16
              i32.shr_u
              local.set $l17
              local.get $l8
              i32.const 8
              i32.shr_u
              local.set $l14
              local.get $p0
              i32.load
              local.set $l7
            end
            local.get $l8
            i32.const 255
            i32.and
            local.get $l18
            i32.const 24
            i32.shl
            local.get $l17
            i32.const 255
            i32.and
            i32.const 16
            i32.shl
            i32.or
            local.get $l14
            i32.const 255
            i32.and
            i32.const 8
            i32.shl
            i32.or
            i32.or
            local.set $l19
            block $B5
              loop $L6
                local.get $p3
                i32.const 255
                i32.and
                i32.const 8
                i32.ge_u
                if $I7
                  local.get $l4
                  i32.eqz
                  br_if $B1
                  local.get $l4
                  i32.load offset=8
                  local.set $l4
                  i32.const 0
                  local.set $p3
                end
                local.get $l4
                i32.eqz
                if $I8
                  local.get $l10
                  i32.const 255
                  i32.and
                  local.get $l15
                  i32.const 255
                  i32.and
                  i32.const 16
                  i32.shl
                  local.get $l12
                  i32.const 24
                  i32.shl
                  i32.or
                  local.get $l16
                  i32.const 255
                  i32.and
                  i32.const 8
                  i32.shl
                  i32.or
                  i32.or
                  local.tee $l4
                  local.get $l19
                  i32.ge_u
                  br_if $B5
                  local.get $l7
                  i32.eqz
                  br_if $B1
                  local.get $l4
                  i32.const 1
                  i32.add
                  local.tee $l10
                  i32.const 24
                  i32.shr_u
                  local.set $l12
                  local.get $l10
                  i32.const 16
                  i32.shr_u
                  local.set $l15
                  local.get $l10
                  i32.const 8
                  i32.shr_u
                  local.set $l16
                  local.get $l7
                  local.get $p0
                  i32.load8_u offset=13
                  local.get $p0
                  i32.load8_u offset=12
                  i32.add
                  i32.const 3
                  i32.shl
                  i32.const 12
                  i32.add
                  local.get $l4
                  i32.mul
                  i32.add
                  local.set $l4
                end
                local.get $l4
                local.get $p3
                i32.const 255
                i32.and
                local.tee $l13
                i32.add
                i32.load8_u
                i32.eqz
                if $I9
                  local.get $p3
                  i32.const 1
                  i32.add
                  local.set $p3
                  br $L6
                end
                local.get $l6
                local.get $p0
                i32.load8_u offset=12
                local.tee $l9
                local.get $l13
                i32.mul
                local.get $l4
                i32.add
                i32.const 12
                i32.add
                local.get $l9
                memory.copy
                block $B10
                  local.get $p0
                  i32.load
                  local.get $l7
                  i32.eq
                  if $I11
                    local.get $l11
                    local.get $l13
                    local.get $p0
                    i32.load8_u offset=13
                    local.tee $l13
                    i32.mul
                    local.get $l9
                    i32.const 3
                    i32.shl
                    i32.add
                    local.get $l4
                    i32.add
                    i32.const 12
                    i32.add
                    local.get $l13
                    memory.copy
                    local.get $p3
                    i32.const 1
                    i32.add
                    local.set $p3
                    br $B10
                  end
                  local.get $p0
                  i32.load offset=28
                  local.tee $l13
                  i32.eqz
                  br_if $B1
                  local.get $p3
                  i32.const 1
                  i32.add
                  local.set $p3
                  local.get $l6
                  local.get $l9
                  local.get $p0
                  i32.load offset=4
                  local.get $p0
                  i32.load offset=24
                  local.get $l13
                  call_indirect $T0 (type $t0)
                  local.set $l9
                  local.get $p0
                  local.get $l6
                  local.get $l11
                  local.get $p0
                  i32.load8_u offset=13
                  local.get $l9
                  call $f11
                  i32.const 1
                  i32.and
                  i32.eqz
                  br_if $L6
                end
              end
              local.get $l5
              i32.load offset=28
              local.tee $l9
              i32.eqz
              br_if $B1
              local.get $l5
              local.get $l6
              local.get $l11
              local.get $l6
              local.get $l5
              i32.load8_u offset=12
              local.get $l5
              i32.load offset=4
              local.get $l5
              i32.load offset=24
              local.get $l9
              call_indirect $T0 (type $t0)
              call $f10
              br $L3
            end
          end
          local.get $p0
          local.get $l5
          i32.load
          i32.store
          local.get $p0
          local.get $l5
          i64.load offset=4 align=4
          i64.store offset=4 align=4
          local.get $p0
          local.get $l5
          i32.load8_u offset=12
          i32.store8 offset=12
          local.get $p0
          local.get $l5
          i32.load16_u offset=13 align=1
          i32.store16 offset=13 align=1
          local.get $p0
          local.get $l5
          i64.load offset=16
          i64.store offset=16 align=4
          local.get $p0
          local.get $l5
          i64.load offset=24
          i64.store offset=24 align=4
          local.get $p0
          i32.load offset=28
          local.tee $p3
          i32.eqz
          br_if $B1
          local.get $p1
          local.get $p0
          i32.load8_u offset=12
          local.get $p0
          i32.load offset=4
          local.get $p0
          i32.load offset=24
          local.get $p3
          call_indirect $T0 (type $t0)
          local.set $p3
          local.get $p0
          i32.load8_u offset=14
          local.set $l4
        end
        local.get $p0
        i32.load
        local.get $p0
        i32.load8_u offset=13
        local.get $p0
        i32.load8_u offset=12
        i32.add
        i32.const 3
        i32.shl
        i32.const 12
        i32.add
        i32.const -1
        i32.const -1
        local.get $l4
        i32.const 255
        i32.and
        local.tee $l6
        i32.shl
        i32.const -1
        i32.xor
        local.get $l6
        i32.const 31
        i32.gt_u
        select
        local.get $p3
        i32.and
        i32.mul
        i32.add
        local.set $l4
        local.get $p3
        i32.const 24
        i32.shr_u
        local.tee $p3
        i32.const 1
        local.get $p3
        select
        local.set $l10
        i32.const 0
        local.set $l6
        i32.const 0
        local.set $l8
        i32.const 0
        local.set $l12
        i32.const 0
        local.set $l7
        loop $L12
          local.get $l4
          local.tee $p3
          if $I13
            i32.const 0
            local.set $l4
            loop $L14
              local.get $l4
              i32.const 8
              i32.ne
              if $I15
                local.get $l4
                local.get $p0
                i32.load8_u offset=12
                local.tee $l6
                i32.mul
                local.get $p3
                i32.add
                i32.const 12
                i32.add
                local.set $l11
                local.get $l4
                local.get $p0
                i32.load8_u offset=13
                i32.mul
                local.get $l6
                i32.const 3
                i32.shl
                i32.add
                local.get $p3
                i32.add
                i32.const 12
                i32.add
                local.set $l9
                block $B16
                  local.get $p3
                  local.get $l4
                  i32.add
                  local.tee $l14
                  i32.load8_u
                  local.tee $l15
                  local.get $l10
                  i32.ne
                  br_if $B16
                  local.get $p0
                  i32.load offset=20
                  local.tee $l16
                  i32.eqz
                  br_if $B1
                  local.get $p1
                  local.get $l11
                  local.get $l6
                  local.get $p0
                  i32.load offset=16
                  local.get $l16
                  call_indirect $T0 (type $t0)
                  i32.const 1
                  i32.and
                  i32.eqz
                  br_if $B16
                  local.get $l9
                  local.get $p2
                  local.get $p0
                  i32.load8_u offset=13
                  memory.copy
                  br $B0
                end
                local.get $l7
                local.get $l14
                local.get $l8
                local.get $l15
                i32.or
                local.tee $l6
                select
                local.set $l7
                local.get $l8
                local.get $l11
                local.get $l6
                select
                local.set $l8
                local.get $l12
                local.get $l9
                local.get $l6
                select
                local.set $l12
                local.get $l4
                i32.const 1
                i32.add
                local.set $l4
                br $L14
              end
            end
            local.get $p3
            i32.load offset=8
            local.set $l4
            local.get $p3
            local.set $l6
            br $L12
          end
        end
        local.get $l8
        i32.eqz
        if $I17
          local.get $l6
          i32.eqz
          br_if $B1
          local.get $p0
          i32.load8_u offset=13
          local.get $p0
          i32.load8_u offset=12
          i32.add
          i32.const 3
          i32.shl
          i32.const 12
          i32.add
          call $f7
          local.set $p3
          local.get $p0
          local.get $p0
          i32.load offset=8
          i32.const 1
          i32.add
          i32.store offset=8
          local.get $p3
          i32.const 12
          i32.add
          local.get $p1
          local.get $p0
          i32.load8_u offset=12
          local.tee $p1
          memory.copy
          local.get $p3
          local.get $p1
          i32.const 3
          i32.shl
          i32.add
          i32.const 12
          i32.add
          local.get $p2
          local.get $p0
          i32.load8_u offset=13
          memory.copy
          local.get $p3
          local.get $l10
          i32.store8
          local.get $l6
          local.get $p3
          i32.store offset=8
          br $B0
        end
        local.get $p0
        local.get $p0
        i32.load offset=8
        i32.const 1
        i32.add
        i32.store offset=8
        local.get $l8
        local.get $p1
        local.get $p0
        i32.load8_u offset=12
        memory.copy
        local.get $l12
        local.get $p2
        local.get $p0
        i32.load8_u offset=13
        memory.copy
        local.get $l7
        i32.eqz
        br_if $B1
        local.get $l7
        local.get $l10
        i32.store8
        br $B0
      end
      unreachable
    end
    local.get $l5
    i32.const 32
    i32.add
    global.set $g0)
  (func $f11 (type $t7) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32) (result i32)
    (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32)
    local.get $p0
    i32.eqz
    if $I0
      local.get $p2
      i32.const 0
      local.get $p3
      memory.fill
      i32.const 0
      return
    end
    local.get $p0
    i32.load
    local.get $p0
    i32.load8_u offset=13
    local.get $p0
    i32.load8_u offset=12
    i32.add
    i32.const 3
    i32.shl
    i32.const 12
    i32.add
    i32.const -1
    i32.const -1
    local.get $p0
    i32.load8_u offset=14
    local.tee $p3
    i32.shl
    i32.const -1
    i32.xor
    local.get $p3
    i32.const 31
    i32.gt_u
    select
    local.get $p4
    i32.and
    i32.mul
    i32.add
    local.set $p3
    local.get $p4
    i32.const 24
    i32.shr_u
    local.tee $p4
    i32.const 1
    local.get $p4
    select
    local.set $l6
    block $B1
      loop $L2
        local.get $p3
        if $I3
          i32.const 0
          local.set $p4
          loop $L4
            local.get $p4
            i32.const 8
            i32.ne
            if $I5
              block $B6
                local.get $p3
                local.get $p4
                i32.add
                i32.load8_u
                local.get $l6
                i32.ne
                br_if $B6
                local.get $p0
                i32.load offset=20
                local.tee $l7
                i32.eqz
                br_if $B1
                local.get $p0
                i32.load8_u offset=13
                local.set $l8
                local.get $p1
                local.get $p4
                local.get $p0
                i32.load8_u offset=12
                local.tee $l5
                i32.mul
                local.get $p3
                i32.add
                i32.const 12
                i32.add
                local.get $l5
                local.get $p0
                i32.load offset=16
                local.get $l7
                call_indirect $T0 (type $t0)
                i32.const 1
                i32.and
                i32.eqz
                br_if $B6
                local.get $p2
                local.get $p4
                local.get $l8
                i32.mul
                local.get $l5
                i32.const 3
                i32.shl
                i32.add
                local.get $p3
                i32.add
                i32.const 12
                i32.add
                local.get $p0
                i32.load8_u offset=13
                memory.copy
                i32.const 1
                return
              end
              local.get $p4
              i32.const 1
              i32.add
              local.set $p4
              br $L4
            end
          end
          local.get $p3
          i32.load offset=8
          local.set $p3
          br $L2
        end
      end
      local.get $p2
      i32.const 0
      local.get $p0
      i32.load8_u offset=13
      memory.fill
      i32.const 0
      return
    end
    unreachable)
  (func $f12 (type $t4) (param $p0 i32) (param $p1 i32) (result i32)
    i32.const 2068
    local.get $p0
    local.get $p1
    i32.const 12
    local.get $p0
    i32.const 2080
    i32.load8_u
    i32.const 2072
    i32.load
    local.get $p0
    call $f6
    call $f11)
  (func $f13 (type $t2) (param $p0 i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32)
    local.get $p0
    i32.const 2080
    i32.load8_u
    local.tee $l1
    i32.const 2072
    i32.load
    local.get $l1
    call $f6
    local.tee $l2
    i32.const 24
    i32.shr_u
    local.tee $l3
    i32.const 1
    local.get $l3
    select
    local.set $l3
    i32.const 2068
    i32.load
    i32.const 2081
    i32.load8_u
    local.get $l1
    i32.add
    i32.const 3
    i32.shl
    i32.const 12
    i32.add
    i32.const -1
    i32.const -1
    i32.const 2082
    i32.load8_u
    local.tee $l1
    i32.shl
    i32.const -1
    i32.xor
    local.get $l1
    i32.const 31
    i32.gt_u
    select
    local.get $l2
    i32.and
    i32.mul
    i32.add
    local.set $l1
    block $B0
      loop $L1
        local.get $l1
        i32.eqz
        br_if $B0
        i32.const 0
        local.set $l2
        block $B2
          loop $L3
            local.get $l2
            i32.const 8
            i32.ne
            if $I4
              block $B5
                local.get $l1
                local.get $l2
                i32.add
                local.tee $l4
                i32.load8_u
                local.get $l3
                i32.ne
                br_if $B5
                i32.const 2088
                i32.load
                local.tee $l5
                i32.eqz
                br_if $B2
                local.get $p0
                local.get $l2
                i32.const 2080
                i32.load8_u
                local.tee $l6
                i32.mul
                local.get $l1
                i32.add
                i32.const 12
                i32.add
                local.get $l6
                i32.const 2084
                i32.load
                local.get $l5
                call_indirect $T0 (type $t0)
                i32.const 1
                i32.and
                i32.eqz
                br_if $B5
                local.get $l4
                i32.const 0
                i32.store8
                i32.const 2076
                i32.const 2076
                i32.load
                i32.const 1
                i32.sub
                i32.store
                br $B0
              end
              local.get $l2
              i32.const 1
              i32.add
              local.set $l2
              br $L3
            end
          end
          local.get $l1
          i32.load offset=8
          local.set $l1
          br $L1
        end
      end
      unreachable
    end)
  (func $malloc (type $t3) (param $p0 i32) (result i32)
    local.get $p0
    call $f8)
  (func $free (type $t2) (param $p0 i32)
    (local $l1 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l1
    global.set $g0
    block $B0
      block $B1
        local.get $p0
        if $I2
          local.get $l1
          local.get $p0
          i32.store offset=12
          local.get $l1
          i32.const 12
          i32.add
          local.get $l1
          call $f12
          i32.const 1
          i32.and
          i32.eqz
          br_if $B1
          local.get $l1
          local.get $p0
          i32.store
          local.get $l1
          call $f13
        end
        local.get $l1
        i32.const 16
        i32.add
        global.set $g0
        br $B0
      end
      unreachable
    end)
  (func $calloc (type $t4) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p0
    local.get $p1
    i32.mul
    call $f8)
  (func $realloc (type $t4) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32)
    block $B0 (result i32)
      global.get $g0
      i32.const 16
      i32.sub
      local.tee $l2
      global.set $g0
      block $B1
        local.get $p1
        i32.const 0
        i32.lt_s
        br_if $B1
        local.get $p1
        call $f7
        local.set $l3
        local.get $p0
        if $I2
          local.get $l2
          local.get $p0
          i32.store offset=12
          local.get $l2
          i32.const 12
          i32.add
          local.get $l2
          call $f12
          i32.const 1
          i32.and
          i32.eqz
          br_if $B1
          local.get $l3
          local.get $l2
          i32.load
          local.get $p1
          local.get $l2
          i32.load offset=4
          local.tee $l4
          local.get $p1
          local.get $l4
          i32.lt_u
          select
          memory.copy
          local.get $l2
          local.get $p0
          i32.store
          local.get $l2
          call $f13
        end
        local.get $p1
        i32.eqz
        br_if $B1
        local.get $l2
        local.get $p1
        i32.store offset=8
        local.get $l2
        local.get $p1
        i32.store offset=4
        local.get $l2
        local.get $l3
        i32.store
        local.get $l2
        local.get $l3
        i32.store offset=12
        local.get $l2
        i32.const 12
        i32.add
        local.get $l2
        call $f9
        local.get $l2
        i32.const 16
        i32.add
        global.set $g0
        local.get $l3
        br $B0
      end
      unreachable
    end)
  (func $_start (type $t8)
    i32.const 2104
    memory.size
    i32.const 16
    i32.shl
    i32.store
    i32.const 2064
    i32.const 2416
    i32.store
    i32.const 2104
    memory.size
    i32.const 16
    i32.shl
    i32.store
    i32.const 2408
    call $arduino.getPinLED
    i32.store
    i32.const 2408
    i32.load
    i32.const 1
    call $arduino.pinMode
    loop $L0
      i32.const 0
      i32.const 10
      i32.const 2048
      i32.const 10
      call $u8g2.oledPrint
      i32.const 2408
      i32.load
      i32.const 1
      call $arduino.digitalWrite
      i32.const 100
      call $arduino.delay
      i32.const 2408
      i32.load
      i32.const 0
      call $arduino.digitalWrite
      i32.const 900
      call $arduino.delay
      br $L0
    end
    unreachable)
  (table $T0 3 3 funcref)
  (memory $memory 1 1)
  (global $g0 (mut i32) (i32.const 2048))
  (export "memory" (memory $memory))
  (export "malloc" (func $malloc))
  (export "free" (func $free))
  (export "calloc" (func $calloc))
  (export "realloc" (func $realloc))
  (export "_start" (func $_start))
  (elem $e0 (i32.const 1) func $f5 $f6)
  (data $d0 (i32.const 2048) "1234,hello")
  (data $d1 (i32.const 2060) "\c1\82\01\00p\09\00\00P\08\00\00\c1\82\01\00\00\00\00\00\04\0c\01\00\00\00\00\00\01\00\00\00\00\00\00\00\02"))
