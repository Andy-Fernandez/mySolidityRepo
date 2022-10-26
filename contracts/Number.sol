// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Number{
    /*
    function getNumber() public pure returns (int number){
        number = 10;
    }
    */
    function getNumber2() public pure returns (int number){
        number = 1995;
    }
    function changeNumber() public pure returns (int number) {
        number = getNumber2() * (-2);
    }
}