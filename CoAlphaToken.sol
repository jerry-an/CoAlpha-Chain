pragma solidity ^0.4.21;

import "./Ownable.sol";
import "./StandardToken.sol";

contract CoAlphaToken is StandardToken, Ownable {
    string public name = "CoAlphaToken";
    string public symbol = "CAL";
    uint8 public decimals = 2;
    uint public INITIAL_SUPPLY = 2000000000*(10**uint256(decimals));
    function CoAlphaToken()
        public
    {
        totalSupply_ = INITIAL_SUPPLY;
        balances[msg.sender] = INITIAL_SUPPLY;
    }
}