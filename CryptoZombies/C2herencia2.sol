// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./C2herencia.sol";

contract C2herencia2 is C2herencia {
  function anotherCatchphrase() public pure returns (string memory) {
    return "Such Moon BabyDoge";
  }
}