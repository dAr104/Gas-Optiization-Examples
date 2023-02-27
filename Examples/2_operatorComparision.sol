//SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

// Whenever using operators to check for 0 values in conditions, use the Not Equal operator (!=) rather than the Greater operator (>).
// because it is cheaper to use the Not Equal operator.

contract OperatorComparison {
    function greater(uint256 a) external pure {
        require(a > 0);
    }

    function unequal(uint256 a) external pure {
        require(a != 0);
    }
}
