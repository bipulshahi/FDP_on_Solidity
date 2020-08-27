pragma solidity >0.4.22 <0.6.0;

contract Bank{
    
    uint private value;
    address public owner;
    
    modifier ownerfunc{
        require(owner == msg.sender);
        _;
    }
    
    constructor(uint amount) public{
        value = amount;
        owner = msg.sender;
    }
    
    function deposit(uint amount) public{
        value += amount;
    }
    
    function withdraw(uint amount) public ownerfunc{
        
        if(checkValue(amount)){
        value -= amount;
        }
    }
    
    function balance() public ownerfunc view returns(uint){
        return value;
    }
    
    function checkValue(uint amount) public view returns(bool){
        return value >= amount;
    }
    
    function loan() public view returns(bool){
        return value > 10000;
    }
}


contract MyContract is Bank(0){
    
    string private name;
    uint16 private age;
    
    function setName(string memory NewName) public{
        name = NewName;
    }
    
    function setAge(uint16 newAge) public{
        age = newAge;
    }
    
    function getName() public view returns(string memory){
        return name;
    }
    
    function getAge() public view returns(uint16){
        return age;
    }
}
