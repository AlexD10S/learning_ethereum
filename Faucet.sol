
contract Faucet {

    function withdraw(uint withdraw_amount) public {
        //value in wei(0.1 eth)
        require(withdraw_amount <= 100000000000000000);
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

    //Fallback or default function. Called if the transaction
    //that triggered the contract didn't name any of the 
    //declared functions in the contract, or didn't contain data.
    function () public payable {}
    //When someone send money with no data specifying function
    //to call, it accepted the money into the contract's balance.

}