// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract prueba1 {
    function sendEther(address payable receiver) public payable {
        receiver.transfer(msg.value);
    }
}