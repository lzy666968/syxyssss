// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

import "./IYee.sol";

contract Yee is IYee{
    uint256 public yeeValue;
    event YeeEvent(uint256 value);
    constructor(uint256 initiaValue){
        yeeValue = initiaValue;
        emit YeeEvent(initiaValue);
    }

    function getYeeValue() external view override returns(uint256){
        return yeeValue;
    }

    function setYeeValue(uint256 newValue) external override{
        yeeValue = newValue;
        emit YeeEvent(newValue);
    }
}