// SPDX-License-Identifier: MIT

pragma solidity ^0.8.10;

import '../BaseLevel.sol';
import './CoinFlip.sol';

contract CoinFlipFactory is Level {

  function createInstance(address _player) override public payable returns (address) {
    _player;
    return address(new CoinFlip());
  }

  function validateInstance(address payable _instance, address) override public view returns (bool) {
    CoinFlip instance = CoinFlip(_instance);
    return instance.consecutiveWins() >= 10;
  }
}