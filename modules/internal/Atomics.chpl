// See runtime/include/atomics/README for more info about these functions

pragma "no use ChapelStandard"
module Atomics {

  extern type memory_order;

  extern const memory_order_relaxed:memory_order;
  extern const memory_order_consume:memory_order;
  extern const memory_order_acquire:memory_order;
  extern const memory_order_release:memory_order;
  extern const memory_order_acq_rel:memory_order;
  extern const memory_order_seq_cst:memory_order;
  
  const default_memory_order:memory_order = memory_order_seq_cst;

  extern type atomic_int_least8_t;
  extern type atomic_int_least16_t;
  extern type atomic_int_least32_t;
  extern type atomic_int_least64_t;
  extern type atomic_uint_least8_t;
  extern type atomic_uint_least16_t;
  extern type atomic_uint_least32_t;
  extern type atomic_uint_least64_t;
  extern type atomic_uintptr_t;
  
  extern type atomic__real64;
  extern type atomic__real32;

  extern type atomic_flag;

  extern proc atomic_thread_fence(order:memory_order);
  extern proc atomic_signal_thread_fence(order:memory_order);

  extern proc atomic_is_lock_free_flag(ref obj:atomic_flag):bool;
  extern proc atomic_init_flag(ref obj:atomic_flag, value:bool);
  extern proc atomic_destroy_flag(ref obj:atomic_flag);
  extern proc atomic_store_explicit_flag(ref obj:atomic_flag, value:bool, order:memory_order);
  extern proc atomic_load_explicit_flag(ref obj:atomic_flag, order:memory_order):bool;
  extern proc atomic_exchange_explicit_flag(ref obj:atomic_flag, value:bool, order:memory_order):bool;
  extern proc atomic_compare_exchange_strong_explicit_flag(ref obj:atomic_flag, expected:bool, desired:bool, order:memory_order):bool;
  extern proc atomic_compare_exchange_weak_explicit_flag(ref obj:atomic_flag, expected:bool, desired:bool, order:memory_order):bool;
  extern proc atomic_flag_test_and_set_explicit(ref obj:atomic_flag, order:memory_order):bool;
  extern proc atomic_flag_test_and_set(ref obj:atomic_flag):bool;
  extern proc atomic_flag_clear_explicit(ref obj:atomic_flag, order:memory_order);
  extern proc atomic_flag_clear(ref obj:atomic_flag);

  extern proc atomic_is_lock_free_uint_least8_t(ref obj:atomic_uint_least8_t):bool;
  extern proc atomic_init_uint_least8_t(ref obj:atomic_uint_least8_t, value:uint(8));
  extern proc atomic_destroy_uint_least8_t(ref obj:atomic_uint_least8_t);
  extern proc atomic_store_explicit_uint_least8_t(ref obj:atomic_uint_least8_t, value:uint(8), order:memory_order);
  extern proc atomic_load_explicit_uint_least8_t(ref obj:atomic_uint_least8_t, order:memory_order):uint(8);
  extern proc atomic_exchange_explicit_uint_least8_t(ref obj:atomic_uint_least8_t, value:uint(8), order:memory_order):uint(8);
  extern proc atomic_compare_exchange_strong_explicit_uint_least8_t(ref obj:atomic_uint_least8_t, expected:uint(8), desired:uint(8), order:memory_order):bool;
  extern proc atomic_compare_exchange_weak_explicit_uint_least8_t(ref obj:atomic_uint_least8_t, expected:uint(8), desired:uint(8), order:memory_order):bool;
  extern proc atomic_fetch_add_explicit_uint_least8_t(ref obj:atomic_uint_least8_t, operand:uint(8), order:memory_order):uint(8);
  extern proc atomic_fetch_sub_explicit_uint_least8_t(ref obj:atomic_uint_least8_t, operand:uint(8), order:memory_order):uint(8);
  extern proc atomic_fetch_or_explicit_uint_least8_t(ref obj:atomic_uint_least8_t, operand:uint(8), order:memory_order):uint(8);
  extern proc atomic_fetch_and_explicit_uint_least8_t(ref obj:atomic_uint_least8_t, operand:uint(8), order:memory_order):uint(8);
  extern proc atomic_fetch_xor_explicit_uint_least8_t(ref obj:atomic_uint_least8_t, operand:uint(8), order:memory_order):uint(8);

  extern proc atomic_is_lock_free_uint_least16_t(ref obj:atomic_uint_least16_t):bool;
  extern proc atomic_init_uint_least16_t(ref obj:atomic_uint_least16_t, value:uint(16));
  extern proc atomic_destroy_uint_least16_t(ref obj:atomic_uint_least16_t);
  extern proc atomic_store_explicit_uint_least16_t(ref obj:atomic_uint_least16_t, value:uint(16), order:memory_order);
  extern proc atomic_load_explicit_uint_least16_t(ref obj:atomic_uint_least16_t, order:memory_order):uint(16);
  extern proc atomic_exchange_explicit_uint_least16_t(ref obj:atomic_uint_least16_t, value:uint(16), order:memory_order):uint(16);
  extern proc atomic_compare_exchange_strong_explicit_uint_least16_t(ref obj:atomic_uint_least16_t, expected:uint(16), desired:uint(16), order:memory_order):bool;
  extern proc atomic_compare_exchange_weak_explicit_uint_least16_t(ref obj:atomic_uint_least16_t, expected:uint(16), desired:uint(16), order:memory_order):bool;
  extern proc atomic_fetch_add_explicit_uint_least16_t(ref obj:atomic_uint_least16_t, operand:uint(16), order:memory_order):uint(16);
  extern proc atomic_fetch_sub_explicit_uint_least16_t(ref obj:atomic_uint_least16_t, operand:uint(16), order:memory_order):uint(16);
  extern proc atomic_fetch_or_explicit_uint_least16_t(ref obj:atomic_uint_least16_t, operand:uint(16), order:memory_order):uint(16);
  extern proc atomic_fetch_and_explicit_uint_least16_t(ref obj:atomic_uint_least16_t, operand:uint(16), order:memory_order):uint(16);
  extern proc atomic_fetch_xor_explicit_uint_least16_t(ref obj:atomic_uint_least16_t, operand:uint(16), order:memory_order):uint(16);


  extern proc atomic_is_lock_free_uint_least32_t(ref obj:atomic_uint_least32_t):bool;
  extern proc atomic_init_uint_least32_t(ref obj:atomic_uint_least32_t, value:uint(32));
  extern proc atomic_destroy_uint_least32_t(ref obj:atomic_uint_least32_t);
  extern proc atomic_store_explicit_uint_least32_t(ref obj:atomic_uint_least32_t, value:uint(32), order:memory_order);
  extern proc atomic_load_explicit_uint_least32_t(ref obj:atomic_uint_least32_t, order:memory_order):uint(32);
  extern proc atomic_exchange_explicit_uint_least32_t(ref obj:atomic_uint_least32_t, value:uint(32), order:memory_order):uint(32);
  extern proc atomic_compare_exchange_strong_explicit_uint_least32_t(ref obj:atomic_uint_least32_t, expected:uint(32), desired:uint(32), order:memory_order):bool;
  extern proc atomic_compare_exchange_weak_explicit_uint_least32_t(ref obj:atomic_uint_least32_t, expected:uint(32), desired:uint(32), order:memory_order):bool;
  extern proc atomic_fetch_add_explicit_uint_least32_t(ref obj:atomic_uint_least32_t, operand:uint(32), order:memory_order):uint(32);
  extern proc atomic_fetch_sub_explicit_uint_least32_t(ref obj:atomic_uint_least32_t, operand:uint(32), order:memory_order):uint(32);
  extern proc atomic_fetch_or_explicit_uint_least32_t(ref obj:atomic_uint_least32_t, operand:uint(32), order:memory_order):uint(32);
  extern proc atomic_fetch_and_explicit_uint_least32_t(ref obj:atomic_uint_least32_t, operand:uint(32), order:memory_order):uint(32);
  extern proc atomic_fetch_xor_explicit_uint_least32_t(ref obj:atomic_uint_least32_t, operand:uint(32), order:memory_order):uint(32);

  extern proc atomic_is_lock_free_uint_least64_t(ref obj:atomic_uint_least64_t):bool;
  extern proc atomic_init_uint_least64_t(ref obj:atomic_uint_least64_t, value:uint(64));
  extern proc atomic_destroy_uint_least64_t(ref obj:atomic_uint_least64_t);
  extern proc atomic_store_explicit_uint_least64_t(ref obj:atomic_uint_least64_t, value:uint(64), order:memory_order);
  extern proc atomic_load_explicit_uint_least64_t(ref obj:atomic_uint_least64_t, order:memory_order):uint(64);
  extern proc atomic_exchange_explicit_uint_least64_t(ref obj:atomic_uint_least64_t, value:uint(64), order:memory_order):uint(64);
  extern proc atomic_compare_exchange_strong_explicit_uint_least64_t(ref obj:atomic_uint_least64_t, expected:uint(64), desired:uint(64), order:memory_order):bool;
  extern proc atomic_compare_exchange_weak_explicit_uint_least64_t(ref obj:atomic_uint_least64_t, expected:uint(64), desired:uint(64), order:memory_order):bool;
  extern proc atomic_fetch_add_explicit_uint_least64_t(ref obj:atomic_uint_least64_t, operand:uint(64), order:memory_order):uint(64);
  extern proc atomic_fetch_sub_explicit_uint_least64_t(ref obj:atomic_uint_least64_t, operand:uint(64), order:memory_order):uint(64);
  extern proc atomic_fetch_or_explicit_uint_least64_t(ref obj:atomic_uint_least64_t, operand:uint(64), order:memory_order):uint(64);
  extern proc atomic_fetch_and_explicit_uint_least64_t(ref obj:atomic_uint_least64_t, operand:uint(64), order:memory_order):uint(64);
  extern proc atomic_fetch_xor_explicit_uint_least64_t(ref obj:atomic_uint_least64_t, operand:uint(64), order:memory_order):uint(64);

  extern proc atomic_is_lock_free_uintptr_t(ref obj:atomic_uintptr_t):bool;
  extern proc atomic_init_uintptr_t(ref obj:atomic_uintptr_t, value:c_ptr);
  extern proc atomic_destroy_uintptr_t(ref obj:atomic_uintptr_t);
  extern proc atomic_store_explicit_uintptr_t(ref obj:atomic_uintptr_t, value:c_ptr, order:memory_order);
  extern proc atomic_load_explicit_uintptr_t(ref obj:atomic_uintptr_t, order:memory_order):c_ptr;
  extern proc atomic_exchange_explicit_uintptr_t(ref obj:atomic_uintptr_t, value:c_ptr, order:memory_order):c_ptr;
  extern proc atomic_compare_exchange_strong_explicit_uintptr_t(ref obj:atomic_uintptr_t, expected:c_ptr, desired:c_ptr, order:memory_order):bool;
  extern proc atomic_compare_exchange_weak_explicit_uintptr_t(ref obj:atomic_uintptr_t, expected:c_ptr, desired:c_ptr, order:memory_order):bool;
  extern proc atomic_fetch_add_explicit_uintptr_t(ref obj:atomic_uintptr_t, operand:c_ptr, order:memory_order):c_ptr;
  extern proc atomic_fetch_sub_explicit_uintptr_t(ref obj:atomic_uintptr_t, operand:c_ptr, order:memory_order):c_ptr;
  extern proc atomic_fetch_or_explicit_uintptr_t(ref obj:atomic_uintptr_t, operand:c_ptr, order:memory_order):c_ptr;
  extern proc atomic_fetch_and_explicit_uintptr_t(ref obj:atomic_uintptr_t, operand:c_ptr, order:memory_order):c_ptr;
  extern proc atomic_fetch_xor_explicit_uintptr_t(ref obj:atomic_uintptr_t, operand:c_ptr, order:memory_order):c_ptr;

  extern proc atomic_is_lock_free_int_least8_t(ref obj:atomic_int_least8_t):bool;
  extern proc atomic_init_int_least8_t(ref obj:atomic_int_least8_t, value:int(8));
  extern proc atomic_destroy_int_least8_t(ref obj:atomic_int_least8_t);
  extern proc atomic_store_explicit_int_least8_t(ref obj:atomic_int_least8_t, value:int(8), order:memory_order);
  extern proc atomic_load_explicit_int_least8_t(ref obj:atomic_int_least8_t, order:memory_order):int(8);
  extern proc atomic_exchange_explicit_int_least8_t(ref obj:atomic_int_least8_t, value:int(8), order:memory_order):int(8);
  extern proc atomic_compare_exchange_strong_explicit_int_least8_t(ref obj:atomic_int_least8_t, expected:int(8), desired:int(8), order:memory_order):bool;
  extern proc atomic_compare_exchange_weak_explicit_int_least8_t(ref obj:atomic_int_least8_t, expected:int(8), desired:int(8), order:memory_order):bool;
  extern proc atomic_fetch_add_explicit_int_least8_t(ref obj:atomic_int_least8_t, operand:int(8), order:memory_order):int(8);
  extern proc atomic_fetch_sub_explicit_int_least8_t(ref obj:atomic_int_least8_t, operand:int(8), order:memory_order):int(8);
  extern proc atomic_fetch_or_explicit_int_least8_t(ref obj:atomic_int_least8_t, operand:int(8), order:memory_order):int(8);
  extern proc atomic_fetch_and_explicit_int_least8_t(ref obj:atomic_int_least8_t, operand:int(8), order:memory_order):int(8);
  extern proc atomic_fetch_xor_explicit_int_least8_t(ref obj:atomic_int_least8_t, operand:int(8), order:memory_order):int(8);

  extern proc atomic_is_lock_free_int_least16_t(ref obj:atomic_int_least16_t):bool;
  extern proc atomic_init_int_least16_t(ref obj:atomic_int_least16_t, value:int(16));
  extern proc atomic_destroy_int_least16_t(ref obj:atomic_int_least16_t);
  extern proc atomic_store_explicit_int_least16_t(ref obj:atomic_int_least16_t, value:int(16), order:memory_order);
  extern proc atomic_load_explicit_int_least16_t(ref obj:atomic_int_least16_t, order:memory_order):int(16);
  extern proc atomic_exchange_explicit_int_least16_t(ref obj:atomic_int_least16_t, value:int(16), order:memory_order):int(16);
  extern proc atomic_compare_exchange_strong_explicit_int_least16_t(ref obj:atomic_int_least16_t, expected:int(16), desired:int(16), order:memory_order):bool;
  extern proc atomic_compare_exchange_weak_explicit_int_least16_t(ref obj:atomic_int_least16_t, expected:int(16), desired:int(16), order:memory_order):bool;
  extern proc atomic_fetch_add_explicit_int_least16_t(ref obj:atomic_int_least16_t, operand:int(16), order:memory_order):int(16);
  extern proc atomic_fetch_sub_explicit_int_least16_t(ref obj:atomic_int_least16_t, operand:int(16), order:memory_order):int(16);
  extern proc atomic_fetch_or_explicit_int_least16_t(ref obj:atomic_int_least16_t, operand:int(16), order:memory_order):int(16);
  extern proc atomic_fetch_and_explicit_int_least16_t(ref obj:atomic_int_least16_t, operand:int(16), order:memory_order):int(16);
  extern proc atomic_fetch_xor_explicit_int_least16_t(ref obj:atomic_int_least16_t, operand:int(16), order:memory_order):int(16);

  extern proc atomic_is_lock_free_int_least32_t(ref obj:atomic_int_least32_t):bool;
  extern proc atomic_init_int_least32_t(ref obj:atomic_int_least32_t, value:int(32));
  extern proc atomic_destroy_int_least32_t(ref obj:atomic_int_least32_t);
  extern proc atomic_store_explicit_int_least32_t(ref obj:atomic_int_least32_t, value:int(32), order:memory_order);
  extern proc atomic_load_explicit_int_least32_t(ref obj:atomic_int_least32_t, order:memory_order):int(32);
  extern proc atomic_exchange_explicit_int_least32_t(ref obj:atomic_int_least32_t, value:int(32), order:memory_order):int(32);
  extern proc atomic_compare_exchange_strong_explicit_int_least32_t(ref obj:atomic_int_least32_t, expected:int(32), desired:int(32), order:memory_order):bool;
  extern proc atomic_compare_exchange_weak_explicit_int_least32_t(ref obj:atomic_int_least32_t, expected:int(32), desired:int(32), order:memory_order):bool;
  extern proc atomic_fetch_add_explicit_int_least32_t(ref obj:atomic_int_least32_t, operand:int(32), order:memory_order):int(32);
  extern proc atomic_fetch_sub_explicit_int_least32_t(ref obj:atomic_int_least32_t, operand:int(32), order:memory_order):int(32);
  extern proc atomic_fetch_or_explicit_int_least32_t(ref obj:atomic_int_least32_t, operand:int(32), order:memory_order):int(32);
  extern proc atomic_fetch_and_explicit_int_least32_t(ref obj:atomic_int_least32_t, operand:int(32), order:memory_order):int(32);
  extern proc atomic_fetch_xor_explicit_int_least32_t(ref obj:atomic_int_least32_t, operand:int(32), order:memory_order):int(32);

  extern proc atomic_is_lock_free_int_least64_t(ref obj:atomic_int_least64_t):bool;
  extern proc atomic_init_int_least64_t(ref obj:atomic_int_least64_t, value:int(64));
  extern proc atomic_destroy_int_least64_t(ref obj:atomic_int_least64_t);
  extern proc atomic_store_explicit_int_least64_t(ref obj:atomic_int_least64_t, value:int(64), order:memory_order);
  extern proc atomic_load_explicit_int_least64_t(ref obj:atomic_int_least64_t, order:memory_order):int(64);
  extern proc atomic_exchange_explicit_int_least64_t(ref obj:atomic_int_least64_t, value:int(64), order:memory_order):int(64);
  extern proc atomic_compare_exchange_strong_explicit_int_least64_t(ref obj:atomic_int_least64_t, expected:int(64), desired:int(64), order:memory_order):bool;
  extern proc atomic_compare_exchange_weak_explicit_int_least64_t(ref obj:atomic_int_least64_t, expected:int(64), desired:int(64), order:memory_order):bool;
  extern proc atomic_fetch_add_explicit_int_least64_t(ref obj:atomic_int_least64_t, operand:int(64), order:memory_order):int(64);
  extern proc atomic_fetch_sub_explicit_int_least64_t(ref obj:atomic_int_least64_t, operand:int(64), order:memory_order):int(64);
  extern proc atomic_fetch_or_explicit_int_least64_t(ref obj:atomic_int_least64_t, operand:int(64), order:memory_order):int(64);
  extern proc atomic_fetch_and_explicit_int_least64_t(ref obj:atomic_int_least64_t, operand:int(64), order:memory_order):int(64);
  extern proc atomic_fetch_xor_explicit_int_least64_t(ref obj:atomic_int_least64_t, operand:int(64), order:memory_order):int(64);

  extern proc atomic_init__real64(ref obj:atomic__real64, value:real(64));
  extern proc atomic_destroy__real64(ref obj:atomic__real64);
  extern proc atomic_store_explicit__real64(ref obj:atomic__real64, value:real(64), order:memory_order);
  extern proc atomic_is_lock_free__real64(ref obj:atomic__real64):bool;
  extern proc atomic_load_explicit__real64(ref obj:atomic__real64, order:memory_order):real(64);
  extern proc atomic_exchange_explicit__real64(ref obj:atomic__real64, value:real(64), order:memory_order):real(64);
  extern proc atomic_compare_exchange_strong_explicit__real64(ref obj:atomic__real64, expected:real(64), desired:real(64), order:memory_order):bool;

  extern proc atomic_compare_exchange_weak_explicit__real64(ref obj:atomic__real64, expected:real(64), desired:real(64), order:memory_order):bool;
  extern proc atomic_fetch_add_explicit__real64(ref obj:atomic__real64, operand:real(64), order:memory_order):real(64);
  extern proc atomic_fetch_sub_explicit__real64(ref obj:atomic__real64, operand:real(64), order:memory_order):real(64);

  extern proc atomic_init__real32(ref obj:atomic__real32, value:real(32));
  extern proc atomic_destroy__real32(ref obj:atomic__real32);
  extern proc atomic_store_explicit__real32(ref obj:atomic__real32, value:real(32), order:memory_order);
  extern proc atomic_is_lock_free__real32(ref obj:atomic__real32):bool;
  extern proc atomic_load_explicit__real32(ref obj:atomic__real32, order:memory_order):real(32);
  extern proc atomic_exchange_explicit__real32(ref obj:atomic__real32, value:real(32), order:memory_order):real(32);
  extern proc atomic_compare_exchange_strong_explicit__real32(ref obj:atomic__real32, expected:real(32), desired:real(32), order:memory_order):bool;

  extern proc atomic_compare_exchange_weak_explicit__real32(ref obj:atomic__real32, expected:real(32), desired:real(32), order:memory_order):bool;
  extern proc atomic_fetch_add_explicit__real32(ref obj:atomic__real32, operand:real(32), order:memory_order):real(32);
  extern proc atomic_fetch_sub_explicit__real32(ref obj:atomic__real32, operand:real(32), order:memory_order):real(32);

  // Begin Chapel interface for atomic integers.

  // See runtime/include/atomics/README for more info about these functions

  // these can be called just the way they are:
  //extern proc atomic_thread_fence(order:memory_order);
  //extern proc atomic_signal_thread_fence(order:memory_order);

  proc chpl__atomicType(type base_type) type {
    if CHPL_NETWORK_ATOMICS == "none" {
      if base_type==bool then return atomicflag;
      else if base_type==uint(8) then return atomic_uint8;
      else if base_type==uint(16) then return atomic_uint16;
      else if base_type==uint(32) then return atomic_uint32;
      else if base_type==uint(64) then return atomic_uint64;
      else if base_type==int(8) then return atomic_int8;
      else if base_type==int(16) then return atomic_int16;
      else if base_type==int(32) then return atomic_int32;
      else if base_type==int(64) then return atomic_int64;
      else if base_type==real(64) then return atomic_real64;
      else if base_type==real(32) then return atomic_real32;
      else compilerError("Unsupported atomic type");
    } else {
      return chpl__networkAtomicType(base_type);
    }
  };

  inline proc create_atomic_flag():atomic_flag {
    var ret:atomic_flag;
    atomic_init_flag(ret, false);
    return ret;
  }
  
  inline proc chpl__defaultHash(ref aflag:atomic_flag):int(64) {
    var tmp:int(64);
    on aflag do tmp = atomic_load_explicit_flag(aflag, default_memory_order);
    
    if (tmp) then
      return 0;
    else
      return 1;
  }
  
  inline proc chpl__defaultHash(ref auint:atomic_uint_least8_t):int(64) {
    var tmp:int(64);
    on auint do tmp = atomic_load_explicit_uint_least8_t(auint, default_memory_order):int(64);
    
    return _gen_key(tmp);
  }
  
  inline proc chpl__defaultHash(ref auint:atomic_uint_least16_t):int(64) {
    var tmp:int(64);
    on auint do tmp = atomic_load_explicit_uint_least16_t(auint, default_memory_order):int(64);
    
    return _gen_key(tmp);
  }
  
  inline proc chpl__defaultHash(ref auint:atomic_uint_least32_t):int(64) {
    var tmp:int(64);
    on auint do tmp = atomic_load_explicit_uint_least32_t(auint, default_memory_order):int(64);
    
    return _gen_key(tmp);
  }
  
  inline proc chpl__defaultHash(ref auint:atomic_uint_least64_t):int(64) {
    var tmp:int(64);
    on auint do tmp = atomic_load_explicit_uint_least64_t(auint, default_memory_order):int(64);
    
    return _gen_key(tmp);
  }
  
  inline proc chpl__defaultHash(ref aint:atomic_int_least8_t):int(64) {
    var tmp:int(64);
    on aint do tmp = atomic_load_explicit_int_least8_t(aint, default_memory_order):int(64);
    
    return _gen_key(tmp);
  }
  
  inline proc chpl__defaultHash(ref aint:atomic_int_least16_t):int(64) {
    var tmp:int(64);
    on aint do tmp = atomic_load_explicit_int_least16_t(aint, default_memory_order):int(64);
    
    return _gen_key(tmp);
  }
  
  inline proc chpl__defaultHash(ref aint:atomic_int_least32_t):int(64) {
    var tmp:int(64);
    on aint do tmp = atomic_load_explicit_int_least32_t(aint, default_memory_order):int(64);
    
    return _gen_key(tmp);
  }
  
  inline proc chpl__defaultHash(ref aint:atomic_int_least64_t):int(64) {
    var tmp:int(64);
    on aint do tmp = atomic_load_explicit_int_least64_t(aint, default_memory_order):int(64);
    
    return _gen_key(tmp);
  }
  
  inline proc chpl__defaultHash(ref afloat:atomic__real32):int(64) {
    var r:real(32);
    on afloat do r = atomic_load_explicit__real32(afloat, default_memory_order);
    
    return _gen_key(__primitive( "real2int", r));
  }
  
  inline proc chpl__defaultHash(ref afloat:atomic__real64):int(64) {
    var r:real(64);
    on afloat do r = atomic_load_explicit__real64(afloat, memory_order_consume);
    
    return _gen_key(__primitive( "real2int", r));
  }

  record atomicflag {
    var _v:atomic_flag = create_atomic_flag();
    inline proc ~atomicflag() {
      atomic_destroy_flag(_v);
    }
    inline proc read(order = default_memory_order):bool {
      var ret:bool;
      on this do ret = atomic_load_explicit_flag(_v, order);
      return ret;
    }
    inline proc write(value:bool, order = default_memory_order) {
      on this do atomic_store_explicit_flag(_v, value, order);
    }
    inline proc exchange(value:bool, order = default_memory_order):bool {
      var ret:bool;
      on this do ret = atomic_exchange_explicit_flag(_v, value, order);
      return ret;
    }
    inline proc compareExchange(expected:bool, desired:bool, order = default_memory_order):bool {
      return compareExchangeStrong(expected, desired, order);
    }
    inline proc compareExchangeWeak(expected:bool, desired:bool, order = default_memory_order):bool {
      var ret:bool;
      on this do ret = atomic_compare_exchange_weak_explicit_flag(_v, expected, desired, order);
      return ret;
    }
    inline proc compareExchangeStrong(expected:bool, desired:bool, order = default_memory_order):bool {
      var ret:bool;
      on this do ret = atomic_compare_exchange_strong_explicit_flag(_v, expected, desired, order);
      return ret;
    }

    inline proc testAndSet(order = default_memory_order) {
      var ret:bool;
      on this do ret = atomic_flag_test_and_set_explicit(_v, order);
      return ret;
    }
    inline proc clear(order = default_memory_order) {
      on this do atomic_flag_clear_explicit(_v, order);
    }

    inline proc waitFor(val:bool) {
      on this do while (read() != val) do chpl_task_yield();
    }

    inline proc peek() {
      return this.read(order=memory_order_relaxed);
    }
    inline proc poke(value:bool) {
      this.write(value, order=memory_order_relaxed);
    }

    proc writeThis(x: Writer) {
      x.write(read());
    }
  }

  inline proc create_atomic_uint_least8():atomic_uint_least8_t {
    var ret:atomic_uint_least8_t;
    atomic_init_uint_least8_t(ret, 0);
    return ret;
  }

  record atomic_uint8 {
    var _v:atomic_uint_least8_t = create_atomic_uint_least8();
    inline proc ~atomic_uint8() {
      atomic_destroy_uint_least8_t(_v);
    }
    inline proc read(order = default_memory_order):uint(8) {
      var ret:uint(8);
      on this do ret = atomic_load_explicit_uint_least8_t(_v, order);
      return ret;
    }
    inline proc write(value:uint(8), order = default_memory_order) {
      on this do atomic_store_explicit_uint_least8_t(_v, value, order);
    }
    inline proc exchange(value:uint(8), order = default_memory_order):uint(8) {
      var ret:uint(8);
      on this do ret = atomic_exchange_explicit_uint_least8_t(_v, value, order);
      return ret;
    }
    inline proc compareExchange(expected:uint(8), desired:uint(8), order = default_memory_order):bool {
      return compareExchangeStrong(expected, desired, order);
    }
    inline proc compareExchangeWeak(expected:uint(8), desired:uint(8), order = default_memory_order):bool {
      var ret:bool;
      on this do ret = atomic_compare_exchange_weak_explicit_uint_least8_t(_v, expected, desired, order);
      return ret;
    }
    inline proc compareExchangeStrong(expected:uint(8), desired:uint(8), order = default_memory_order):bool {
      var ret:bool;
      on this do ret = atomic_compare_exchange_strong_explicit_uint_least8_t(_v, expected, desired, order);
      return ret;
    }
    inline proc fetchAdd(value:uint(8), order = default_memory_order):uint(8) {
      var ret:uint(8);
      on this do ret = atomic_fetch_add_explicit_uint_least8_t(_v, value, order);
      return ret;
    }
    inline proc add(value:uint(8), order = default_memory_order):uint(8) {
      on this do atomic_fetch_add_explicit_uint_least8_t(_v, value, order);
    }
    inline proc fetchSub(value:uint(8), order = default_memory_order):uint(8) {
      var ret:uint(8);
      on this do ret = atomic_fetch_sub_explicit_uint_least8_t(_v, value, order);
      return ret;
    }
    inline proc sub(value:uint(8), order = default_memory_order):uint(8) {
      on this do atomic_fetch_sub_explicit_uint_least8_t(_v, value, order);
    }
    inline proc fetchOr(value:uint(8), order = default_memory_order):uint(8) {
      var ret:uint(8);
      on this do ret = atomic_fetch_or_explicit_uint_least8_t(_v, value, order);
      return ret;
    }
    inline proc or(value:uint(8), order = default_memory_order):uint(8) {
      on this do atomic_fetch_or_explicit_uint_least8_t(_v, value, order);
    }
    inline proc fetchAnd(value:uint(8), order = default_memory_order):uint(8) {
      var ret:uint(8);
      on this do ret = atomic_fetch_and_explicit_uint_least8_t(_v, value, order);
      return ret;
    }
    inline proc and(value:uint(8), order = default_memory_order):uint(8) {
      on this do atomic_fetch_and_explicit_uint_least8_t(_v, value, order);
    }
    inline proc fetchXor(value:uint(8), order = default_memory_order):uint(8) {
      var ret:uint(8);
      on this do ret = atomic_fetch_xor_explicit_uint_least8_t(_v, value, order);
      return ret;
    }
    inline proc xor(value:uint(8), order = default_memory_order):uint(8) {
      on this do atomic_fetch_xor_explicit_uint_least8_t(_v, value, order);
    }

    inline proc waitFor(val:uint(8)) {
      on this do while (read() != val) do chpl_task_yield();
    }

    inline proc peek() {
      return this.read(order=memory_order_relaxed);
    }
    inline proc poke(value:uint(8)) {
      this.write(value, order=memory_order_relaxed);
    }

    proc writeThis(x: Writer) {
      x.write(read());
    }
  }

  inline proc create_atomic_uint_least16():atomic_uint_least16_t {
    var ret:atomic_uint_least16_t;
    atomic_init_uint_least16_t(ret, 0);
    return ret;
  }

  record atomic_uint16 {
    var _v:atomic_uint_least16_t = create_atomic_uint_least16();
    inline proc ~atomic_uint16() {
      atomic_destroy_uint_least16_t(_v);
    }
    inline proc read(order = default_memory_order):uint(16) {
      var ret:uint(16);
      on this do ret = atomic_load_explicit_uint_least16_t(_v, order);
      return ret;
    }
    inline proc write(value:uint(16), order = default_memory_order) {
      on this do atomic_store_explicit_uint_least16_t(_v, value, order);
    }
    inline proc exchange(value:uint(16), order = default_memory_order):uint(16) {
      var ret:uint(16);
      on this do ret = atomic_exchange_explicit_uint_least16_t(_v, value, order);
      return ret;
    }
    inline proc compareExchange(expected:uint(16), desired:uint(16), order = default_memory_order):bool {
      return compareExchangeStrong(expected, desired, order);
    }
    inline proc compareExchangeWeak(expected:uint(16), desired:uint(16), order = default_memory_order):bool {
      var ret:bool;
      on this do ret = atomic_compare_exchange_weak_explicit_uint_least16_t(_v, expected, desired, order);
      return ret;
    }
    inline proc compareExchangeStrong(expected:uint(16), desired:uint(16), order = default_memory_order):bool {
      var ret:bool;
      on this do ret = atomic_compare_exchange_strong_explicit_uint_least16_t(_v, expected, desired, order);
      return ret;
    }
    inline proc fetchAdd(value:uint(16), order = default_memory_order):uint(16) {
      var ret:uint(16);
      on this do ret = atomic_fetch_add_explicit_uint_least16_t(_v, value, order);
      return ret;
    }
    inline proc add(value:uint(16), order = default_memory_order):uint(16) {
      on this do atomic_fetch_add_explicit_uint_least16_t(_v, value, order);
    }
    inline proc fetchSub(value:uint(16), order = default_memory_order):uint(16) {
      var ret:uint(16);
      on this do ret = atomic_fetch_sub_explicit_uint_least16_t(_v, value, order);
      return ret;
    }
    inline proc sub(value:uint(16), order = default_memory_order):uint(16) {
      on this do atomic_fetch_sub_explicit_uint_least16_t(_v, value, order);
    }
    inline proc fetchOr(value:uint(16), order = default_memory_order):uint(16) {
      var ret:uint(16);
      on this do ret = atomic_fetch_or_explicit_uint_least16_t(_v, value, order);
      return ret;
    }
    inline proc or(value:uint(16), order = default_memory_order):uint(16) {
      on this do atomic_fetch_or_explicit_uint_least16_t(_v, value, order);
    }
    inline proc fetchAnd(value:uint(16), order = default_memory_order):uint(16) {
      var ret:uint(16);
      on this do ret = atomic_fetch_and_explicit_uint_least16_t(_v, value, order);
      return ret;
    }
    inline proc and(value:uint(16), order = default_memory_order):uint(16) {
      on this do atomic_fetch_and_explicit_uint_least16_t(_v, value, order);
    }
    inline proc fetchXor(value:uint(16), order = default_memory_order):uint(16) {
      var ret:uint(16);
      on this do ret = atomic_fetch_xor_explicit_uint_least16_t(_v, value, order);
      return ret;
    }
    inline proc xor(value:uint(16), order = default_memory_order):uint(16) {
      on this do atomic_fetch_xor_explicit_uint_least16_t(_v, value, order);
    }

    inline proc waitFor(val:uint(16)) {
      on this do while (read() != val) do chpl_task_yield();
    }

    inline proc peek() {
      return this.read(order=memory_order_relaxed);
    }
    inline proc poke(value:uint(16)) {
      this.write(value, order=memory_order_relaxed);
    }

    proc writeThis(x: Writer) {
      x.write(read());
    }
  }

  inline proc create_atomic_uint_least32():atomic_uint_least32_t {
    var ret:atomic_uint_least32_t;
    atomic_init_uint_least32_t(ret, 0);
    return ret;
  }

  record atomic_uint32 {
    var _v:atomic_uint_least32_t = create_atomic_uint_least32();
    inline proc ~atomic_uint32() {
      atomic_destroy_uint_least32_t(_v);
    }
    inline proc read(order = default_memory_order):uint(32) {
      var ret:uint(32);
      on this do ret = atomic_load_explicit_uint_least32_t(_v, order);
      return ret;
    }
    inline proc write(value:uint(32), order = default_memory_order) {
      on this do atomic_store_explicit_uint_least32_t(_v, value, order);
    }
    inline proc exchange(value:uint(32), order = default_memory_order):uint(32) {
      var ret:uint(32);
      on this do ret = atomic_exchange_explicit_uint_least32_t(_v, value, order);
      return ret;
    }
    inline proc compareExchange(expected:uint(32), desired:uint(32), order = default_memory_order):bool {
      return compareExchangeStrong(expected, desired, order);
    }
    inline proc compareExchangeWeak(expected:uint(32), desired:uint(32), order = default_memory_order):bool {
      var ret:bool;
      on this do ret = atomic_compare_exchange_weak_explicit_uint_least32_t(_v, expected, desired, order);
      return ret;
    }
    inline proc compareExchangeStrong(expected:uint(32), desired:uint(32), order = default_memory_order):bool {
      var ret:bool;
      on this do ret = atomic_compare_exchange_strong_explicit_uint_least32_t(_v, expected, desired, order);
      return ret;
    }
    inline proc fetchAdd(value:uint(32), order = default_memory_order):uint(32) {
      var ret:uint(32);
      on this do ret = atomic_fetch_add_explicit_uint_least32_t(_v, value, order);
      return ret;
    }
    inline proc add(value:uint(32), order = default_memory_order):uint(32) {
      on this do atomic_fetch_add_explicit_uint_least32_t(_v, value, order);
    }
    inline proc fetchSub(value:uint(32), order = default_memory_order):uint(32) {
      var ret:uint(32);
      on this do ret = atomic_fetch_sub_explicit_uint_least32_t(_v, value, order);
      return ret;
    }
    inline proc sub(value:uint(32), order = default_memory_order):uint(32) {
      on this do atomic_fetch_sub_explicit_uint_least32_t(_v, value, order);
    }
    inline proc fetchOr(value:uint(32), order = default_memory_order):uint(32) {
      var ret:uint(32);
      on this do ret = atomic_fetch_or_explicit_uint_least32_t(_v, value, order);
      return ret;
    }
    inline proc or(value:uint(32), order = default_memory_order):uint(32) {
      on this do atomic_fetch_or_explicit_uint_least32_t(_v, value, order);
    }
    inline proc fetchAnd(value:uint(32), order = default_memory_order):uint(32) {
      var ret:uint(32);
      on this do ret = atomic_fetch_and_explicit_uint_least32_t(_v, value, order);
      return ret;
    }
    inline proc and(value:uint(32), order = default_memory_order):uint(32) {
      on this do atomic_fetch_and_explicit_uint_least32_t(_v, value, order);
    }
    inline proc fetchXor(value:uint(32), order = default_memory_order):uint(32) {
      var ret:uint(32);
      on this do ret = atomic_fetch_xor_explicit_uint_least32_t(_v, value, order);
      return ret;
    }
    inline proc xor(value:uint(32), order = default_memory_order):uint(32) {
      on this do atomic_fetch_xor_explicit_uint_least32_t(_v, value, order);
    }

    inline proc waitFor(val:uint(32)) {
      on this do while (read() != val) do chpl_task_yield();
    }

    inline proc peek() {
      return this.read(order=memory_order_relaxed);
    }
    inline proc poke(value:uint(32)) {
      this.write(value, order=memory_order_relaxed);
    }

    proc writeThis(x: Writer) {
      x.write(read());
    }
  }

  inline proc create_atomic_uint_least64():atomic_uint_least64_t {
    var ret:atomic_uint_least64_t;
    atomic_init_uint_least64_t(ret, 0);
    return ret;
  }

  record atomic_uint64 {
    var _v:atomic_uint_least64_t = create_atomic_uint_least64();
    inline proc ~atomic_uint64() {
      atomic_destroy_uint_least64_t(_v);
    }
    inline proc read(order = default_memory_order):uint(64) {
      var ret:uint(64);
      on this do ret = atomic_load_explicit_uint_least64_t(_v, order);
      return ret;
    }
    inline proc write(value:uint(64), order = default_memory_order) {
      on this do atomic_store_explicit_uint_least64_t(_v, value, order);
    }
    inline proc exchange(value:uint(64), order = default_memory_order):uint(64) {
      var ret:uint(64);
      on this do ret = atomic_exchange_explicit_uint_least64_t(_v, value, order);
      return ret;
    }
    inline proc compareExchange(expected:uint(64), desired:uint(64), order = default_memory_order):bool {
      return compareExchangeStrong(expected, desired, order);
    }
    inline proc compareExchangeWeak(expected:uint(64), desired:uint(64), order = default_memory_order):bool {
      var ret:bool;
      on this do ret = atomic_compare_exchange_weak_explicit_uint_least64_t(_v, expected, desired, order);
      return ret;
    }
    inline proc compareExchangeStrong(expected:uint(64), desired:uint(64), order = default_memory_order):bool {
      var ret:bool;
      on this do ret = atomic_compare_exchange_strong_explicit_uint_least64_t(_v, expected, desired, order);
      return ret;
    }
    inline proc fetchAdd(value:uint(64), order = default_memory_order):uint(64) {
      var ret:uint(64);
      on this do ret = atomic_fetch_add_explicit_uint_least64_t(_v, value, order);
      return ret;
    }
    inline proc add(value:uint(64), order = default_memory_order):uint(64) {
      on this do atomic_fetch_add_explicit_uint_least64_t(_v, value, order);
    }
    inline proc fetchSub(value:uint(64), order = default_memory_order):uint(64) {
      var ret:uint(64);
      on this do ret = atomic_fetch_sub_explicit_uint_least64_t(_v, value, order);
      return ret;
    }
    inline proc sub(value:uint(64), order = default_memory_order):uint(64) {
      on this do atomic_fetch_sub_explicit_uint_least64_t(_v, value, order);
    }
    inline proc fetchOr(value:uint(64), order = default_memory_order):uint(64) {
      var ret:uint(64);
      on this do ret = atomic_fetch_or_explicit_uint_least64_t(_v, value, order);
      return ret;
    }
    inline proc or(value:uint(64), order = default_memory_order):uint(64) {
      on this do atomic_fetch_or_explicit_uint_least64_t(_v, value, order);
    }
    inline proc fetchAnd(value:uint(64), order = default_memory_order):uint(64) {
      var ret:uint(64);
      on this do ret = atomic_fetch_and_explicit_uint_least64_t(_v, value, order);
      return ret;
    }
    inline proc and(value:uint(64), order = default_memory_order):uint(64) {
      on this do atomic_fetch_and_explicit_uint_least64_t(_v, value, order);
    }
    inline proc fetchXor(value:uint(64), order = default_memory_order):uint(64) {
      var ret:uint(64);
      on this do ret = atomic_fetch_xor_explicit_uint_least64_t(_v, value, order);
      return ret;
    }
    inline proc xor(value:uint(64), order = default_memory_order):uint(64) {
      on this do atomic_fetch_xor_explicit_uint_least64_t(_v, value, order);
    }

    inline proc waitFor(val:uint(64)) {
      on this do while (read() != val) do chpl_task_yield();
    }

    inline proc peek() {
      return this.read(order=memory_order_relaxed);
    }
    inline proc poke(value:uint(64)) {
      this.write(value, order=memory_order_relaxed);
    }

    proc writeThis(x: Writer) {
      x.write(read());
    }
  }

  inline proc create_atomic_int_least8():atomic_int_least8_t {
    var ret:atomic_int_least8_t;
    atomic_init_int_least8_t(ret, 0);
    return ret;
  }

  record atomic_int8 {
    var _v:atomic_int_least8_t = create_atomic_int_least8();
    inline proc ~atomic_int8() {
      atomic_destroy_int_least8_t(_v);
    }
    inline proc read(order = default_memory_order):int(8) {
      var ret:int(8);
      on this do ret = atomic_load_explicit_int_least8_t(_v, order);
      return ret;
    }
    inline proc write(value:int(8), order = default_memory_order) {
      on this do atomic_store_explicit_int_least8_t(_v, value, order);
    }
    inline proc exchange(value:int(8), order = default_memory_order):int(8) {
      var ret:int(8);
      on this do ret = atomic_exchange_explicit_int_least8_t(_v, value, order);
      return ret;
    }
    inline proc compareExchange(expected:int(8), desired:int(8), order = default_memory_order):bool {
      return compareExchangeStrong(expected, desired, order);
    }
    inline proc compareExchangeWeak(expected:int(8), desired:int(8), order = default_memory_order):bool {
      var ret:bool;
      on this do ret = atomic_compare_exchange_weak_explicit_int_least8_t(_v, expected, desired, order);
      return ret;
    }
    inline proc compareExchangeStrong(expected:int(8), desired:int(8), order = default_memory_order):bool {
      var ret:bool;
      on this do ret = atomic_compare_exchange_strong_explicit_int_least8_t(_v, expected, desired, order);
      return ret;
    }
    inline proc fetchAdd(value:int(8), order = default_memory_order):int(8) {
      var ret:int(8);
      on this do ret = atomic_fetch_add_explicit_int_least8_t(_v, value, order);
      return ret;
    }
    inline proc add(value:int(8), order = default_memory_order):int(8) {
      on this do atomic_fetch_add_explicit_int_least8_t(_v, value, order);
    }
    inline proc fetchSub(value:int(8), order = default_memory_order):int(8) {
      var ret:int(8);
      on this do ret = atomic_fetch_sub_explicit_int_least8_t(_v, value, order);
      return ret;
    }
    inline proc sub(value:int(8), order = default_memory_order):int(8) {
      on this do atomic_fetch_sub_explicit_int_least8_t(_v, value, order);
    }
    inline proc fetchOr(value:int(8), order = default_memory_order):int(8) {
      var ret:int(8);
      on this do ret = atomic_fetch_or_explicit_int_least8_t(_v, value, order);
      return ret;
    }
    inline proc or(value:int(8), order = default_memory_order):int(8) {
      on this do atomic_fetch_or_explicit_int_least8_t(_v, value, order);
    }
    inline proc fetchAnd(value:int(8), order = default_memory_order):int(8) {
      var ret:int(8);
      on this do ret = atomic_fetch_and_explicit_int_least8_t(_v, value, order);
      return ret;
    }
    inline proc and(value:int(8), order = default_memory_order):int(8) {
      on this do atomic_fetch_and_explicit_int_least8_t(_v, value, order);
    }
    inline proc fetchXor(value:int(8), order = default_memory_order):int(8) {
      var ret:int(8);
      on this do ret = atomic_fetch_xor_explicit_int_least8_t(_v, value, order);
      return ret;
    }
    inline proc xor(value:int(8), order = default_memory_order):int(8) {
      on this do atomic_fetch_xor_explicit_int_least8_t(_v, value, order);
    }

    inline proc waitFor(val:int(8)) {
      on this do while (read() != val) do chpl_task_yield();
    }

    inline proc peek() {
      return this.read(order=memory_order_relaxed);
    }
    inline proc poke(value:int(8)) {
      this.write(value, order=memory_order_relaxed);
    }

    proc writeThis(x: Writer) {
      x.write(read());
    }
  }

  inline proc create_atomic_int_least16():atomic_int_least16_t {
    var ret:atomic_int_least16_t;
    atomic_init_int_least16_t(ret, 0);
    return ret;
  }

  record atomic_int16 {
    var _v:atomic_int_least16_t = create_atomic_int_least16();
    inline proc ~atomic_int16() {
      atomic_destroy_int_least16_t(_v);
    }
    inline proc read(order = default_memory_order):int(16) {
      var ret:int(16);
      on this do ret = atomic_load_explicit_int_least16_t(_v, order);
      return ret;
    }
    inline proc write(value:int(16), order = default_memory_order) {
      on this do atomic_store_explicit_int_least16_t(_v, value, order);
    }
    inline proc exchange(value:int(16), order = default_memory_order):int(16) {
      var ret:int(16);
      on this do ret = atomic_exchange_explicit_int_least16_t(_v, value, order);
      return ret;
    }
    inline proc compareExchange(expected:int(16), desired:int(16), order = default_memory_order):bool {
      return compareExchangeStrong(expected, desired, order);
    }
    inline proc compareExchangeWeak(expected:int(16), desired:int(16), order = default_memory_order):bool {
      var ret:bool;
      on this do ret = atomic_compare_exchange_weak_explicit_int_least16_t(_v, expected, desired, order);
      return ret;
    }
    inline proc compareExchangeStrong(expected:int(16), desired:int(16), order = default_memory_order):bool {
      var ret:bool;
      on this do ret = atomic_compare_exchange_strong_explicit_int_least16_t(_v, expected, desired, order);
      return ret;
    }
    inline proc fetchAdd(value:int(16), order = default_memory_order):int(16) {
      var ret:int(16);
      on this do ret = atomic_fetch_add_explicit_int_least16_t(_v, value, order);
      return ret;
    }
    inline proc add(value:int(16), order = default_memory_order):int(16) {
      on this do atomic_fetch_add_explicit_int_least16_t(_v, value, order);
    }
    inline proc fetchSub(value:int(16), order = default_memory_order):int(16) {
      var ret:int(16);
      on this do ret = atomic_fetch_sub_explicit_int_least16_t(_v, value, order);
      return ret;
    }
    inline proc sub(value:int(16), order = default_memory_order):int(16) {
      on this do atomic_fetch_sub_explicit_int_least16_t(_v, value, order);
    }
    inline proc fetchOr(value:int(16), order = default_memory_order):int(16) {
      var ret:int(16);
      on this do ret = atomic_fetch_or_explicit_int_least16_t(_v, value, order);
      return ret;
    }
    inline proc or(value:int(16), order = default_memory_order):int(16) {
      on this do atomic_fetch_or_explicit_int_least16_t(_v, value, order);
    }
    inline proc fetchAnd(value:int(16), order = default_memory_order):int(16) {
      var ret:int(16);
      on this do ret = atomic_fetch_and_explicit_int_least16_t(_v, value, order);
      return ret;
    }
    inline proc and(value:int(16), order = default_memory_order):int(16) {
      on this do atomic_fetch_and_explicit_int_least16_t(_v, value, order);
    }
    inline proc fetchXor(value:int(16), order = default_memory_order):int(16) {
      var ret:int(16);
      on this do ret = atomic_fetch_xor_explicit_int_least16_t(_v, value, order);
      return ret;
    }
    inline proc xor(value:int(16), order = default_memory_order):int(16) {
      on this do atomic_fetch_xor_explicit_int_least16_t(_v, value, order);
    }

    inline proc waitFor(val:int(16)) {
      on this do while (read() != val) do chpl_task_yield();
    }

    inline proc peek() {
      return this.read(order=memory_order_relaxed);
    }
    inline proc poke(value:int(16)) {
      this.write(value, order=memory_order_relaxed);
    }

    proc writeThis(x: Writer) {
      x.write(read());
    }
  }

  inline proc create_atomic_int_least32():atomic_int_least32_t {
    var ret:atomic_int_least32_t;
    atomic_init_int_least32_t(ret, 0);
    return ret;
  }

  record atomic_int32 {
    var _v:atomic_int_least32_t = create_atomic_int_least32();
    inline proc ~atomic_int32() {
      atomic_destroy_int_least32_t(_v);
    }
    inline proc read(order = default_memory_order):int(32) {
      var ret:int(32);
      on this do ret = atomic_load_explicit_int_least32_t(_v, order);
      return ret;
    }
    inline proc write(value:int(32), order = default_memory_order) {
      on this do atomic_store_explicit_int_least32_t(_v, value, order);
    }
    inline proc exchange(value:int(32), order = default_memory_order):int(32) {
      var ret:int(32);
      on this do ret = atomic_exchange_explicit_int_least32_t(_v, value, order);
      return ret;
    }
    inline proc compareExchange(expected:int(32), desired:int(32), order = default_memory_order):bool {
      return compareExchangeStrong(expected, desired, order);
    }
    inline proc compareExchangeWeak(expected:int(32), desired:int(32), order = default_memory_order):bool {
      var ret:bool;
      on this do ret = atomic_compare_exchange_weak_explicit_int_least32_t(_v, expected, desired, order);
      return ret;
    }
    inline proc compareExchangeStrong(expected:int(32), desired:int(32), order = default_memory_order):bool {
      var ret:bool;
      on this do ret = atomic_compare_exchange_strong_explicit_int_least32_t(_v, expected, desired, order);
      return ret;
    }
    inline proc fetchAdd(value:int(32), order = default_memory_order):int(32) {
      var ret:int(32);
      on this do ret = atomic_fetch_add_explicit_int_least32_t(_v, value, order);
      return ret;
    }
    inline proc add(value:int(32), order = default_memory_order):int(32) {
      on this do atomic_fetch_add_explicit_int_least32_t(_v, value, order);
    }
    inline proc fetchSub(value:int(32), order = default_memory_order):int(32) {
      var ret:int(32);
      on this do ret = atomic_fetch_sub_explicit_int_least32_t(_v, value, order);
      return ret;
    }
    inline proc sub(value:int(32), order = default_memory_order):int(32) {
      on this do atomic_fetch_sub_explicit_int_least32_t(_v, value, order);
    }
    inline proc fetchOr(value:int(32), order = default_memory_order):int(32) {
      var ret:int(32);
      on this do ret = atomic_fetch_or_explicit_int_least32_t(_v, value, order);
      return ret;
    }
    inline proc or(value:int(32), order = default_memory_order):int(32) {
      on this do atomic_fetch_or_explicit_int_least32_t(_v, value, order);
    }
    inline proc fetchAnd(value:int(32), order = default_memory_order):int(32) {
      var ret:int(32);
      on this do ret = atomic_fetch_and_explicit_int_least32_t(_v, value, order);
      return ret;
    }
    inline proc and(value:int(32), order = default_memory_order):int(32) {
      on this do atomic_fetch_and_explicit_int_least32_t(_v, value, order);
    }
    inline proc fetchXor(value:int(32), order = default_memory_order):int(32) {
      var ret:int(32);
      on this do ret = atomic_fetch_xor_explicit_int_least32_t(_v, value, order);
      return ret;
    }
    inline proc xor(value:int(32), order = default_memory_order):int(32) {
      on this do atomic_fetch_xor_explicit_int_least32_t(_v, value, order);
    }

    inline proc waitFor(val:int(32)) {
      on this do while (read() != val) do chpl_task_yield();
    }

    inline proc peek() {
      return this.read(order=memory_order_relaxed);
    }
    inline proc poke(value:int(32)) {
      this.write(value, order=memory_order_relaxed);
    }

    proc writeThis(x: Writer) {
      x.write(read());
    }
  }

  inline proc create_atomic_int_least64():atomic_int_least64_t {
    var ret:atomic_int_least64_t;
    atomic_init_int_least64_t(ret, 0);
    return ret;
  }

  record atomic_int64 {
    var _v:atomic_int_least64_t = create_atomic_int_least64();
    inline proc ~atomic_int64() {
      atomic_destroy_int_least64_t(_v);
    }
    
    inline proc read(order = default_memory_order):int(64) {
      var ret:int(64);
      on this do ret = atomic_load_explicit_int_least64_t(_v, order);
      return ret;
    }
    
    inline proc write(value:int(64), order = default_memory_order) {
      on this do atomic_store_explicit_int_least64_t(_v, value, order);
    }
    
    proc readThis(f: Reader) {
      var tmp : int(64);
      f.read(tmp);
      on this do atomic_store_explicit_int_least64_t(_v, tmp, default_memory_order);
    }
    
    inline proc exchange(value:int(64), order = default_memory_order):int(64) {
      var ret:int(64);
      on this do ret = atomic_exchange_explicit_int_least64_t(_v, value, order);
      return ret;
    }
    
    inline proc compareExchange(expected:int(64), desired:int(64), order = default_memory_order):bool {
      return compareExchangeStrong(expected, desired, order);
    }
    
    inline proc compareExchangeWeak(expected:int(64), desired:int(64), order = default_memory_order):bool {
      var ret:bool;
      on this do ret = atomic_compare_exchange_weak_explicit_int_least64_t(_v, expected, desired, order);
      return ret;
    }
    
    inline proc compareExchangeStrong(expected:int(64), desired:int(64), order = default_memory_order):bool {
      var ret:bool;
      on this do ret = atomic_compare_exchange_strong_explicit_int_least64_t(_v, expected, desired, order);
      return ret;
    }
    
    inline proc fetchAdd(value:int(64), order = default_memory_order):int(64) {
      var ret:int(64);
      on this do ret = atomic_fetch_add_explicit_int_least64_t(_v, value, order);
      return ret;
    }
    
    inline proc add(value:int(64), order = default_memory_order):int(64) {
      on this do atomic_fetch_add_explicit_int_least64_t(_v, value, order);
    }
    
    inline proc fetchSub(value:int(64), order = default_memory_order):int(64) {
      var ret:int(64);
      on this do ret = atomic_fetch_sub_explicit_int_least64_t(_v, value, order);
      return ret;
    }
    
    inline proc sub(value:int(64), order = default_memory_order):int(64) {
      on this do atomic_fetch_sub_explicit_int_least64_t(_v, value, order);
    }
    
    inline proc fetchOr(value:int(64), order = default_memory_order):int(64) {
      var ret:int(64);
      on this do ret = atomic_fetch_or_explicit_int_least64_t(_v, value, order);
      return ret;
    }
    
    inline proc or(value:int(64), order = default_memory_order):int(64) {
      on this do atomic_fetch_or_explicit_int_least64_t(_v, value, order);
    }
    
    inline proc fetchAnd(value:int(64), order = default_memory_order):int(64) {
      var ret:int(64);
      on this do ret = atomic_fetch_and_explicit_int_least64_t(_v, value, order);
      return ret;
    }
    
    inline proc and(value:int(64), order = default_memory_order):int(64) {
      on this do atomic_fetch_and_explicit_int_least64_t(_v, value, order);
    }
    
    inline proc fetchXor(value:int(64), order = default_memory_order):int(64) {
      var ret:int(64);
      on this do ret = atomic_fetch_xor_explicit_int_least64_t(_v, value, order);
      return ret;
    }
    
    inline proc xor(value:int(64), order = default_memory_order):int(64) {
      on this do atomic_fetch_xor_explicit_int_least64_t(_v, value, order);
    }

    inline proc waitFor(val:int(64)) {
      on this do while (read() != val) do chpl_task_yield();
    }

    inline proc peek() {
      return this.read(order=memory_order_relaxed);
    }
    inline proc poke(value:int(64)) {
      this.write(value, order=memory_order_relaxed);
    }

    proc writeThis(x: Writer) {
      x.write(read());
    }
  }


  inline proc create_atomic__real64():atomic__real64 {
    var ret:atomic__real64;
    atomic_init__real64(ret, 0.0);
    return ret;
  }

  record atomic_real64 {
    var _v:atomic__real64 = create_atomic__real64();
    inline proc ~atomic_real64() {
      atomic_destroy__real64(_v);
    }
    inline proc read(order = default_memory_order):real(64) {
      var ret:real(64);
      on this do ret = atomic_load_explicit__real64(_v, order);
      return ret;
    }
    inline proc write(value:real(64), order = default_memory_order) {
      on this do atomic_store_explicit__real64(_v, value, order);
    }

    inline proc exchange(value:real(64), order = default_memory_order):real(64) {
      var ret:real(64);
      on this do ret = atomic_exchange_explicit__real64(_v, value, order);
      return ret;
    }
    inline proc compareExchange(expected:real(64), desired:real(64), order = default_memory_order):bool {
      return compareExchangeStrong(expected, desired, order);
    }
    inline proc compareExchangeWeak(expected:real(64), desired:real(64), order = default_memory_order):bool {
      var ret:bool;
      on this do ret = atomic_compare_exchange_weak_explicit__real64(_v, expected, desired, order);
      return ret;
    }
    inline proc compareExchangeStrong(expected:real(64), desired:real(64), order = default_memory_order):bool {
      var ret:bool;
      on this do ret = atomic_compare_exchange_strong_explicit__real64(_v, expected, desired, order);
      return ret;
    }
    inline proc fetchAdd(value:real(64), order = default_memory_order):real(64) {
      var ret:real(64);
      on this do ret = atomic_fetch_add_explicit__real64(_v, value, order);
      return ret;
    }
    inline proc add(value:real(64), order = default_memory_order):real(64) {
      on this do atomic_fetch_add_explicit__real64(_v, value, order);
    }
    inline proc fetchSub(value:real(64), order = default_memory_order):real(64) {
      var ret:real(64);
      on this do ret = atomic_fetch_sub_explicit__real64(_v, value, order);
      return ret;
    }
    inline proc sub(value:real(64), order = default_memory_order):real(64) {
      on this do atomic_fetch_sub_explicit__real64(_v, value, order);
    }
    inline proc waitFor(val:real(64)) {
      on this do while (read() != val) do chpl_task_yield();
    }

    inline proc peek() {
      return this.read(order=memory_order_relaxed);
    }
    inline proc poke(value:real(64)) {
      this.write(value, order=memory_order_relaxed);
    }

    proc writeThis(x: Writer) {
      x.write(read());
    }
  }
  

  inline proc create_atomic__real32():atomic__real32 {
    var ret:atomic__real32;
    atomic_init__real32(ret, 0.0:real(32));
    return ret;
  }

  record atomic_real32 {
    var _v:atomic__real32 = create_atomic__real32();
    inline proc ~atomic_real32() {
      atomic_destroy__real32(_v);
    }
    inline proc read(order = default_memory_order):real(32) {
      var ret:real(32);
      on this do ret = atomic_load_explicit__real32(_v, order);
      return ret;
    }
    inline proc write(value:real(32), order = default_memory_order) {
      on this do atomic_store_explicit__real32(_v, value, order);
    }

    inline proc exchange(value:real(32), order = default_memory_order):real(32) {
      var ret:real(32);
      on this do ret = atomic_exchange_explicit__real32(_v, value, order);
      return ret;
    }
    inline proc compareExchange(expected:real(32), desired:real(32), order = default_memory_order):bool {
      return compareExchangeStrong(expected, desired, order);
    }
    inline proc compareExchangeWeak(expected:real(32), desired:real(32), order = default_memory_order):bool {
      var ret:bool;
      on this do ret = atomic_compare_exchange_weak_explicit__real32(_v, expected, desired, order);
      return ret;
    }
    inline proc compareExchangeStrong(expected:real(32), desired:real(32), order = default_memory_order):bool {
      var ret:bool;
      on this do ret = atomic_compare_exchange_strong_explicit__real32(_v, expected, desired, order);
      return ret;
    }
    inline proc fetchAdd(value:real(32), order = default_memory_order):real(32) {
      var ret:real(32);
      on this do ret = atomic_fetch_add_explicit__real32(_v, value, order);
      return ret;
    }
    inline proc add(value:real(32), order = default_memory_order):real(32) {
      on this do atomic_fetch_add_explicit__real32(_v, value, order);
    }
    inline proc fetchSub(value:real(32), order = default_memory_order):real(32) {
      var ret:real(32);
      on this do ret = atomic_fetch_sub_explicit__real32(_v, value, order);
      return ret;
    }
    inline proc sub(value:real(32), order = default_memory_order):real(32) {
      on this do atomic_fetch_sub_explicit__real32(_v, value, order);
    }
    inline proc waitFor(val:real(32)) {
      on this do while (read() != val) do chpl_task_yield();
    }

    inline proc peek() {
      return this.read(order=memory_order_relaxed);
    }
    inline proc poke(value:real(32)) {
      this.write(value, order=memory_order_relaxed);
    }

    proc writeThis(x: Writer) {
      x.write(read());
    }
  }

  //
  // For the first cut, we will be making assignment and other normal
  //  operations illegal.  In addition, we are also punting on
  //  the default argument intent since it's not obvious what it
  //  should be.
  //

  // We need to explicitly define these for all types because the atomic
  //  types are records and unless explicitly defined, it will resolve
  //  to the normal record version of the function.  Sigh.
  inline proc =(a:atomicflag, b:atomicflag) {
    a.write(b.read());
    return a;
  }
  inline proc =(a:atomicflag, b) {
    compilerError("Cannot directly assign atomic variables");
    return a;
  }
  inline proc =(a:atomic_uint8, b:atomic_uint8) {
    a.write(b.read());
    return a;
  }
  inline proc =(a:atomic_uint8, b) {
    compilerError("Cannot directly assign atomic variables");
    return a;
  }
  inline proc =(a:atomic_uint16, b:atomic_uint16) {
    a.write(b.read());
    return a;
  }
  inline proc =(a:atomic_uint16, b) {
    compilerError("Cannot directly assign atomic variables");
    return a;
  }
  inline proc =(a:atomic_uint32, b:atomic_uint32) {
    a.write(b.read());
    return a;
  }
  inline proc =(a:atomic_uint32, b) {
    compilerError("Cannot directly assign atomic variables");
    return a;
  }
  inline proc =(a:atomic_uint64, b:atomic_uint64) {
    a.write(b.read());
    return a;
  }
  inline proc =(a:atomic_uint64, b) {
    compilerError("Cannot directly assign atomic variables");
    return a;
  }
  inline proc =(a:atomic_int8, b:atomic_int8) {
    a.write(b.read());
    return a;
  }
  inline proc =(a:atomic_int8, b) {
    compilerError("Cannot directly assign atomic variables");
    return a;
  }
  inline proc =(a:atomic_int16, b:atomic_int16) {
    a.write(b.read());
    return a;
  }
  inline proc =(a:atomic_int16, b) {
    compilerError("Cannot directly assign atomic variables");
    return a;
  }
  inline proc =(a:atomic_int32, b:atomic_int32) {
    a.write(b.read());
    return a;
  }
  inline proc =(a:atomic_int32, b) {
    compilerError("Cannot directly assign atomic variables");
    return a;
  }
  inline proc =(a:atomic_int64, b:atomic_int64) {
    a.write(b.read());
    return a;
  }
  inline proc =(a:atomic_int64, b) {
    compilerError("Cannot directly assign atomic variables");
    return a;
  }
  inline proc =(a:atomic_real32, b:atomic_real32) {
    a.write(b.read());
    return a;
  }
  inline proc =(a:atomic_real32, b) {
    compilerError("Cannot directly assign atomic variables");
    return a;
  }
  inline proc =(a:atomic_real64, b:atomic_real64) {
    a.write(b.read());
    return a;
  }
  inline proc =(a:atomic_real64, b) {
    compilerError("Cannot directly assign atomic variables");
    return a;
  }

  inline proc +(a:atomic_uint8, b) {
    compilerError("Cannot directly add atomic variables");
    return a;
  }
  inline proc +(a:atomic_uint16, b) {
    compilerError("Cannot directly add atomic variables");
    return a;
  }
  inline proc +(a:atomic_uint32, b) {
    compilerError("Cannot directly add atomic variables");
    return a;
  }
  inline proc +(a:atomic_uint64, b) {
    compilerError("Cannot directly add atomic variables");
    return a;
  }
  inline proc +(a:atomic_int8, b) {
    compilerError("Cannot directly add atomic variables");
    return a;
  }
  inline proc +(a:atomic_int16, b) {
    compilerError("Cannot directly add atomic variables");
    return a;
  }
  inline proc +(a:atomic_int32, b) {
    compilerError("Cannot directly add atomic variables");
    return a;
  }
  inline proc +(a:atomic_int64, b) {
    compilerError("Cannot directly add atomic variables");
    return a;
  }
  inline proc +(a:atomic_real32, b) {
    compilerError("Cannot directly add atomic variables");
    return a;
  }
  inline proc +(a:atomic_real64, b) {
    compilerError("Cannot directly add atomic variables");
    return a;
  }

  inline proc -(a:atomic_uint8, b) {
    compilerError("Cannot directly subtract atomic variables");
    return a;
  }
  inline proc -(a:atomic_uint16, b) {
    compilerError("Cannot directly subtract atomic variables");
    return a;
  }
  inline proc -(a:atomic_uint32, b) {
    compilerError("Cannot directly subtract atomic variables");
    return a;
  }
  inline proc -(a:atomic_uint64, b) {
    compilerError("Cannot directly subtract atomic variables");
    return a;
  }
  inline proc -(a:atomic_int8, b) {
    compilerError("Cannot directly subtract atomic variables");
    return a;
  }
  inline proc -(a:atomic_int16, b) {
    compilerError("Cannot directly subtract atomic variables");
    return a;
  }
  inline proc -(a:atomic_int32, b) {
    compilerError("Cannot directly subtract atomic variables");
    return a;
  }
  inline proc -(a:atomic_int64, b) {
    compilerError("Cannot directly subtract atomic variables");
    return a;
  }
  inline proc -(a:atomic_real32, b) {
    compilerError("Cannot directly subtract atomic variables");
    return a;
  }
  inline proc -(a:atomic_real64, b) {
    compilerError("Cannot directly subtract atomic variables");
    return a;
  }

  inline proc *(a:atomic_uint8, b) {
    compilerError("Cannot directly multiply atomic variables");
    return a;
  }
  inline proc *(a:atomic_uint16, b) {
    compilerError("Cannot directly multiply atomic variables");
    return a;
  }
  inline proc *(a:atomic_uint32, b) {
    compilerError("Cannot directly multiply atomic variables");
    return a;
  }
  inline proc *(a:atomic_uint64, b) {
    compilerError("Cannot directly multiply atomic variables");
    return a;
  }
  inline proc *(a:atomic_int8, b) {
    compilerError("Cannot directly multiply atomic variables");
    return a;
  }
  inline proc *(a:atomic_int16, b) {
    compilerError("Cannot directly multiply atomic variables");
    return a;
  }
  inline proc *(a:atomic_int32, b) {
    compilerError("Cannot directly multiply atomic variables");
    return a;
  }
  inline proc *(a:atomic_int64, b) {
    compilerError("Cannot directly multiply atomic variables");
    return a;
  }
  inline proc *(a:atomic_real32, b) {
    compilerError("Cannot directly multiply atomic variables");
    return a;
  }
  inline proc *(a:atomic_real64, b) {
    compilerError("Cannot directly multiply atomic variables");
    return a;
  }

  inline proc /(a:atomic_uint8, b) {
    compilerError("Cannot directly divide atomic variables");
    return a;
  }
  inline proc /(a:atomic_uint16, b) {
    compilerError("Cannot directly divide atomic variables");
    return a;
  }
  inline proc /(a:atomic_uint32, b) {
    compilerError("Cannot directly divide atomic variables");
    return a;
  }
  inline proc /(a:atomic_uint64, b) {
    compilerError("Cannot directly divide atomic variables");
    return a;
  }
  inline proc /(a:atomic_int8, b) {
    compilerError("Cannot directly divide atomic variables");
    return a;
  }
  inline proc /(a:atomic_int16, b) {
    compilerError("Cannot directly divide atomic variables");
    return a;
  }
  inline proc /(a:atomic_int32, b) {
    compilerError("Cannot directly divide atomic variables");
    return a;
  }
  inline proc /(a:atomic_int64, b) {
    compilerError("Cannot directly divide atomic variables");
    return a;
  }
  inline proc /(a:atomic_real32, b) {
    compilerError("Cannot directly divide atomic variables");
    return a;
  }
  inline proc /(a:atomic_real64, b) {
    compilerError("Cannot directly divide atomic variables");
    return a;
  }

  inline proc %(a:atomic_uint8, b) {
    compilerError("Cannot directly divide atomic variables");
    return a;
  }
  inline proc %(a:atomic_uint16, b) {
    compilerError("Cannot directly divide atomic variables");
    return a;
  }
  inline proc %(a:atomic_uint32, b) {
    compilerError("Cannot directly divide atomic variables");
    return a;
  }
  inline proc %(a:atomic_uint64, b) {
    compilerError("Cannot directly divide atomic variables");
    return a;
  }
  inline proc %(a:atomic_int8, b) {
    compilerError("Cannot directly divide atomic variables");
    return a;
  }
  inline proc %(a:atomic_int16, b) {
    compilerError("Cannot directly divide atomic variables");
    return a;
  }
  inline proc %(a:atomic_int32, b) {
    compilerError("Cannot directly divide atomic variables");
    return a;
  }
  inline proc %(a:atomic_int64, b) {
    compilerError("Cannot directly divide atomic variables");
    return a;
  }
  inline proc %(a:atomic_real32, b) {
    compilerError("Cannot directly divide atomic variables");
    return a;
  }
  inline proc %(a:atomic_real64, b) {
    compilerError("Cannot directly divide atomic variables");
    return a;
  }


}

