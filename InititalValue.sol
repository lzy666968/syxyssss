// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract InititalValue {
    bool public _bool;
    string public _string;
    int256 public _int;
    uint256 public _uint;
    address public _address;
    enum ActionSet {
        Buy,
        Hold,
        Sell
    }
    ActionSet public _enum;
    uint[8] public _staticArray;
    uint256[] public _dynamicArray;
    function initArray() external pure returns (uint256[] memory) {
        uint256[] memory x = new uint256[](3);
        x[0] = 1;
        x[1] = 2;
        x[2] = 4;
        return (x);
    }
    function getView() public view returns (uint[8] memory, uint256[] memory) {
        return  (_staticArray, _dynamicArray);
    }
    function fi() internal {}
    function fe() external {}
    struct Student {
        uint256 id;
        uint256 score;
    }
    Student public student;
    bool public _bool2 = true;
    function d() external {
        delete _bool2;
    }
}