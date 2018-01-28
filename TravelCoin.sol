pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract TravelCoin is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function TravelCoin(address _owner)  UpgradeableToken(_owner) {
    name = "TravelCoin";
    symbol = "TVC";
    totalSupply = 3000000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}