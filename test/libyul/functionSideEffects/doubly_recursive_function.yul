{
    function a() { b() }
    function b() { a() }
}
// ----
// : movable, sideEffectFree, sideEffectFreeIfNoMSize
// a: movable, sideEffectFree, sideEffectFreeIfNoMSize, not deterministic
// b: movable, sideEffectFree, sideEffectFreeIfNoMSize, not deterministic
