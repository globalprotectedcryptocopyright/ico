pragma solidity ^0.4.16;

import "./zeppelin/crowdsale/RefundableCrowdsale.sol";

import "./ParazitConstants.sol";
import "./ParazitRateProvider.sol";

contract ParazitMainCrowdsale is usingParazitConstants, RefundableCrowdsale {
	RateProvider public rateProvider;

	function ParazitMainCrowdsale (
		uint32 _startTime,
		uint32 _endTime,
		// uint _rate,
		uint _softCapWei,
		uint _hardCapTokens,
		address _wallet,
		address _token
	) RefundableCrowdsale(
        _startTime,
        _endTime,
        100,
        _hardCapTokens * TOKEN_DECIMAL_MULTIPLIER,
        _wallet,
        _token,
        _softCapWei // goal
	) {
	}

	// Override getRate to integrate with rate provider.
    function getRate() internal constant returns(uint) {
		return rateProvider.getRate(msg.sender, rate);
    }
}