pragma solidity >=0.5.0 <0.8.0;

contract TheGamble {

	address public ceo;
	address[] players;
	uint PRICE = 1e16;
	uint8 attendees = 0;

	constructor() {
		ceo = msg.sender;
	}

	modifier onlyCeo {
		require(
			msg.sender == ceo
		);
		_;
	}

	function buyTicket() external payable{
		require(msg.value == PRICE);
		players.push(msg.sender);

		if (attendees < 5) {
		       attendees += 1;
		}
 		else {
			payout();
			attendees = 0;
		}		
	}

	function checkPricePool() external view returns(uint) {
		return address(this).balance;
	}

	function helper() public view returns(address) {
		return ceo;
	}

	function payout() private  {
		msg.sender.transfer(address(this).balance);
	}


}
