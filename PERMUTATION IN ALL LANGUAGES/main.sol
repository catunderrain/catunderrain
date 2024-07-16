// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Permutations {
    uint[] public numbers;
    uint[][] public result;

    constructor(uint[] memory _numbers) {
        numbers = _numbers;
        permute(numbers, 0);
    }

    function permute(uint[] memory arr, uint startIndex) internal {
        if (startIndex == arr.length) {
            result.push(arr);
        } else {
            for (uint i = startIndex; i < arr.length; i++) {
                (arr[startIndex], arr[i]) = (arr[i], arr[startIndex]); // Swap
                permute(arr, startIndex + 1);
                (arr[startIndex], arr[i]) = (arr[i], arr[startIndex]); // Backtrack
            }
        }
    }

    function getResult() public view returns (uint[][] memory) {
        return result;
    }
}
