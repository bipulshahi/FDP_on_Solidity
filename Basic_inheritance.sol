pragma solidity >0.4.22 <0.6.0;

contract Bank{
    
    uint private value;
    
    constructor(uint amount) public{
        value = amount;
    }
    
    function balance() public view returns(uint){
        return value;
    }
}


contract MyContract is Bank(20){
    
    string private name;
    uint private age;
    
    function setName(string memory NewName) public{
        name = NewName;
    }
    
    function setAge(uint newAge) public{
        age = newAge;
    }
    
    function getName() public view returns(string memory){
        return name;
    }
    
    function getAge() public view returns(uint){
        return age;
    }
}
