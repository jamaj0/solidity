contract A {
    constructor(uint[] storage a) {}
}
// ----
// TypeError 3644: (17-49): The contract has to be marked abstract because the constructor uses internal parameter types.
