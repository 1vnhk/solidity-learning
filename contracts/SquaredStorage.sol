// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import { SimpleStorage } from "./SimpleStorage.sol";

contract SquaredStorage is SimpleStorage {
  function store(uint256 _newFavoriteNumber) public override {
    myFavoriteNumber = _newFavoriteNumber ** 2;
  }
}

