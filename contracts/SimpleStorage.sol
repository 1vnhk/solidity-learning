// SPDX-License-Identifier: MIT
pragma solidity >=0.8.33 <0.9.0;

contract SimpleStorage {
    uint256 public favoriteNumber; // default is 0

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns(uint256) {
        return favoriteNumber;
    }
}
