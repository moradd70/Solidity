pragma solidity ^0.4.0;


contract creatorBalanceChecker {

    address creator;
    uint creatorbalance; 		//  uint is an alias for uint256. Ditto int and int256.

    function creatorBalanceChecker() public 
    {
        creator = msg.sender; 								 // msg is a global variable
        creatorbalance = creator.balance;
    }

	function getContractAddress() constant returns (address) 
	{
		return this;
	}

	function getCreatorBalance() constant returns (uint)     // Will return the creator's balance @ the time the contracted was created
	{
        return creatorbalance;
    }
    
    function getCreatorDotBalance() constant returns (uint)  // Will return creator's current balance
    {
        return creator.balance;
    }
    
    /**********
     Standard kill() function to recover funds 
     **********/
    
    function kill()
    { 
        if (msg.sender == creator)
            suicide(creator);  // terminate the contract and refund the creator
    }
        
}