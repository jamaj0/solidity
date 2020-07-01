{
  function f() -> x { x := g() }
  function g() -> x { for {} 1 {} {} }
  pop(f())
}
// ----
// : movable, sideEffectFree, sideEffectFreeIfNoMSize, not deterministic
// f: movable, sideEffectFree, sideEffectFreeIfNoMSize, not deterministic
// g: movable, sideEffectFree, sideEffectFreeIfNoMSize, not deterministic
