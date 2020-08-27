pragma solidity >0.4.22 <0.6.0;


library IntExtended{
    
    function increment(uint self) public pure returns(uint){
        return self+1;
    }
    
    function decrement(uint self) public pure returns(uint){
        return self-1;
    }
    
    function incrementByValue(uint self , uint value) public pure returns(uint){
        return self+value;
    }
    
    function decrementByValue(uint self , uint value) public pure returns(uint){
        return self - value;
    }
    
}
