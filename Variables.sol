pragma solidity ^0.5.13;

contract WorkingWithVariables {
    uint256 public myUint;
    
    function setMyUint(uint _myUint) public {
        myUint = _myUint;
    }
    
    bool public myBool;
    
    function setmyBool(bool _myBool) public {
        myBool = _myBool;
    }
    
    uint8 public myUint8;
    
    function incrementUint() public {
        myUint8++;
    }
    
    function decrementUint() public {
        myUint8--;
    }
    
    address public myAddress;
    
    
        
        function setMyAddress (address _address) public {
            myAddress = _address;
        
    }
    
    function getBalanceInfo () public view returns(uint) {
        return myAddress.balance;
    }
    
    string public MyString = "hello world";
    
    function setMyString(string memory _myString) public {
        MyString = _myString;
    }
}
