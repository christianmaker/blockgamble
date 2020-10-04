pragma solidity >=0.5.0 <0.8.0;

contract TheGamble {

	address public ceo;

	constructor() {
		ceo = msg.sender;
	}

	modifier onlyCeo {
		require(
			msg.sender == ceo
		);
		_;
	}

	function helper() public view returns(address) {
		return ceo;
	}


}
