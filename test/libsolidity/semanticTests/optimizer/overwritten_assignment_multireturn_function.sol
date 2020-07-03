// This tests that an overwritten
// assignment via a call to a
// multi return value function
// assigns the last returned value
contract C {
  function f() public returns (uint o) {
    assembly {
      function f() -> a, b { a := 1 b := 2 }
      o, o := f()
    }
  }
}
// ====
// compileViaYul: also
// ----
// f() -> 0x01
