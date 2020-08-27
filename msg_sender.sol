pragma solidity >0.4.22 <0.6.0;

contract hello{
    
    address public owner;
    address public executedby;
    uint public ga;
    
    constructor() public{
        owner = msg.sender;
    }
    
    function add() public{
         executedby = msg.sender;
    }
    
    function gas_c() public{
        ga = gasleft();
    }
}
