// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import { SimpleStorage } from "./SimpleStorage.sol";

contract StorageFactory {
    SimpleStorage[] public listOfSimpleStorageContracts;

    function createSimpleStorageContract() public {
        SimpleStorage newSimpleStorageContract = new SimpleStorage();
        listOfSimpleStorageContracts.push(newSimpleStorageContract);
    }

    function sfStore(uint256 _newSimpleStorageIndex, uint256 _newFavoriteNumber) public {
        // ABI
        listOfSimpleStorageContracts[_newSimpleStorageIndex].store(_newFavoriteNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256) {
        return listOfSimpleStorageContracts[_simpleStorageIndex].retrieve();
    }
}
