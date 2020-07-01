{
    function a() {
        b()
    }
    function b() {
        sstore(0, 1)
        b()
    }
    function c() {
        mstore(0, 1)
        a()
        d()
    }
    function d() {
    }
}
// ----
// : movable, sideEffectFree, sideEffectFreeIfNoMSize
// a: not deterministic, writes storage
// b: not deterministic, writes storage
// c: not deterministic, writes storage, writes memory
// d: movable, sideEffectFree, sideEffectFreeIfNoMSize
