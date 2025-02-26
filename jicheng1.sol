// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;


contract Yeye {
    uint256 public yeyeValue;

    event YeyeEvent(uint256 value);

    constructor(uint256 initivalValue) {
        yeyeValue = initivalValue;
        emit YeyeEvent(initivalValue);
    }

    function setYeyeVale(uint256 newValue) public {
        yeyeValue = newValue;
        emit YeyeEvent(newValue);
    }

    function getYeyeValue() public view returns (uint256){
        return yeyeValue;
    }
}

contract Babar is Yeye {
    uint256 public babaValue;

    event BabaEvent(uint256 value);

    constructor(uint256 yeyeInitiaValue,uint256 babaInitiaValue) Yeye(yeyeInitiaValue){
        babaValue = babaInitiaValue;
        emit BabaEvent(babaInitiaValue);

    }

    function setBabaValue(uint256 newValue) public {
        babaValue = newValue;
        emit BabaEvent(newValue);
    }
    function getBabaValue() public view returns (uint256){
        return babaValue;
    }
    function getTotalValue() public view returns (uint256){
        return yeyeValue + babaValue;
    }
    
}