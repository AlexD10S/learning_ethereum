pragma solidity ^0.5.5;

contract Faucet {

    //address owner;
    //new in solidity 0.5, there are 2 types: address and address payable
    //you just can send money to address payable
    address payable owner;

    constructor() public{
        //We set us, as the owner of the smart contract
		owner = msg.sender;
        //Difference of this msg.sender with the one in the function withdraw, is that
        //this is in the constructor, so it only going to be executed in the contract 
        //creation, and we will be the one who make the transaction
	}

    function withdraw(uint withdraw_amount) public {
        //value in wei(0.1 eth)
        require(withdraw_amount <= 0.1 ether);
        //If the withdraw function is called with a 
        //withdraw_amount greater than the amount, require will
        //cause the execution to stop and fail with an exception

        //All contracts can access the msg object. 

        //It represents the transaction that triggered 
        //the executon of the contract
        msg.sender.transfer(withdraw_amount);
        //transfer is a built-in function that transfers ether
        //from the current contract to the address of the sender.
    }
    //Function modifier, to create conditions
    modifier onlyOwner {
        require(msg.sender == owner,"Only the contract owner can call this function");
        _;
    }   
    //Method to delete the contract
    function destroy() public onlyOwner {
	    // require(msg.sender == owner);
        //delete the contract, and the remain balance go to our address.
	    selfdestruct(owner);
    }

    //Fallback or default function. Called if the transaction
    //that triggered the contract didn't name any of the 
    //declared functions in the contract, or didn't contain data.
    function () external payable {}
    //When someone send money with no data specifying function
    //to call, it accepted the money into the contract's balance.

}