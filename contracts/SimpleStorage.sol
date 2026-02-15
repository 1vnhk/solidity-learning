// SPDX-License-Identifier: MIT
pragma solidity >=0.8.33 <0.9.0;

contract SimpleStorage {
    uint256 myFavoriteNumber; // default is 0

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    Person[] public listOfPeople;

    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns(uint256) {
        return myFavoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person({ favoriteNumber: _favoriteNumber, name: _name }));
    }
}
