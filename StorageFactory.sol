// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./SimpleStorage.sol";

contract StorageFactory {
    simpleStorage[] public simpleStorageArray;

    function createSimpleStorageContract() public {
        simpleStorage simple_storage = new simpleStorage();
        simpleStorageArray.push(simple_storage);
    }

    function sfStore(uint256 _index, uint256 _favouriteNumber) public {
        simpleStorageArray[_index].store(_favouriteNumber);
    }

    function sfRetrieve(uint256 _index) public view returns (uint256) {
        simpleStorageArray[_index].retrieve();
    }
}
