pragma solidity >0.4.22 <0.6.0;

import "browser/library.sol";

contract TestLibrary{
    
    using IntExtended for uint;
    
    function testIncrement(uint base) public pure returns(uint){
        return IntExtended.increment(base);
    }
    
    function testDecrement(uint base) public pure returns(uint){
        return IntExtended.decrement(base);
    }
    
    function testIncrementByValue(uint base, uint value) public pure returns(uint){
        return IntExtended.incrementByValue(base,value);
    }
    
    function testDecrementByValue(uint base, uint value) public pure returns(uint){
        return IntExtended.decrementByValue(base,value);
    }
}
