// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./herencia.sol";

contract herencia2 is herencia {
  function anotherCatchphrase() public pure returns (string memory) {
    return "Such Moon BabyDoge";
  }
}