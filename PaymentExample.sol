pragma solidity ^0.5.13;

contract PaymentExample {
    
    uint public balanceRecieved; // variable recieving balance
    uint public lockedUntil; //
    
    function recieveMoney() public payable {
        balanceRecieved += msg.value; // How much Ether was sent along
        lockedUntil = block.timestamp + 1 minutes;
    }
    
    function getBalance() public view returns(uint) {
        return address(this).balance;
    }
    
    function withdrawMoney() public payable {
        if(lockedUntil < block.timestamp) {
        address payable to = msg.sender; // The address of the Account that started the transaction
        to.transfer(this.getBalance());
    }
    }
    
    function withdrawMoneyToo(address payable _to) public {
        if(lockedUntil < block.timestamp) {
            _to.transfer(getBalance());
        }
    }
}