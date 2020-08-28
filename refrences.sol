pragma solidity >0.4.22 <0.6.0;

contract balance{
    
    mapping(uint => uint) public balances;
    string public abc = 'anvertyy';
    
    function updateBalance(uint id,uint newBalance) public{
        balances[id] = newBalance;
    }
}

contract Testarray{
    uint[] public myarray;
    
    function Test(uint x) public{
        myarray.push(x);
    }
    
    function getarraylength() public view returns(uint){
        return myarray.length;
    }
    
    function getAll() view public returns(uint[] memory){
        return myarray;
    }
}
