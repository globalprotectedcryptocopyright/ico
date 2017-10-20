pragma solidity ^0.4.16;

import "./zeppelin/ownership/Ownable.sol";
import "./zeppelin/math/SafeMath.sol";

import "./ParazitConstants.sol";

contract ParazitRateProvider is usingParazitConstants, Ownable {
    using SafeMath for uint;

    function RateProvider(address _tokenHolder) {
    	
    }
    
    function getRate(
        address buyer,
        uint baseRate
    ) public constant returns (uint) {
        uint rate = baseRate;

		

        return rate;
    }
}