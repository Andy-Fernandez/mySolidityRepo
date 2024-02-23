// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract prueba1 {
    uint256 lastUpdated;

    // Set `lastUpdated` to current block timestamp
    function updateTimestamp() public {
        lastUpdated = block.timestamp;
    }

    // Will return `true` if 5 minutes have passed since `updateTimestamp` was 
    // called, `false` if 5 minutes have not passed
    function fiveMinutesHavePassed() public view returns (bool) {
        return (block.timestamp >= (lastUpdated + 5 minutes));
    }
}
