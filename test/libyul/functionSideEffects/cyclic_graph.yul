{
    function a() { b() }
    function b() { c() }
    function c() { b() }
}
// ----
// : movable, sideEffectFree, sideEffectFreeIfNoMSize
// a: movable, sideEffectFree, sideEffectFreeIfNoMSize, not deterministic
// b: movable, sideEffectFree, sideEffectFreeIfNoMSize, not deterministic
// c: movable, sideEffectFree, sideEffectFreeIfNoMSize, not deterministic
