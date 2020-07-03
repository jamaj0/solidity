// This tests that an overwritten
// assignment via a call to a
// multi return value function
// assigns the last returned value
// but does not eliminate a subsequent
// function call with a single variable
// reference
contract C {
  function f() public returns (uint o1, uint o2) {
    assembly {
      function f() -> a, b { a := 1 b := 2 }
      let x
      x, x := f()
      o1, o2 := f()
    }
  }
}
// ====
// compileViaYul: also
// ----
// f() -> 0x01, 0x02
