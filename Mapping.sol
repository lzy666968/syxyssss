// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;
contract Mapping{
    mapping (uint => address) public idToAddress;
    function writeMap(uint _Key, address _Value) public {
        idToAddress[_Key] = _Value;
    }
}
