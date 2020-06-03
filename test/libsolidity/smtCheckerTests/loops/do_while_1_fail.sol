pragma experimental SMTChecker;

contract C
{
	function f(uint x) public pure {
		require(x < 100);
		do {
			// Overflows due to resetting x.
			x = x + 1;
		} while (x < 10);
		assert(x < 14);
	}
}
// ====
// SMTSolvers: z3
// ----
// Warning 4661: (179-193): Assertion violation happens here
