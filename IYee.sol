// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

interface IYee{
    function getYeeValue() external view returns (uint256);
    function setYeeValue(uint256 newValue) external;
}