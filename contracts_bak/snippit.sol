pragma solidity ^0.4.0;


contract snippit {
    function toString(address x) returns (string) {
        bytes memory b = new bytes(20);
        for (uint i = 0; i < 20; i++)
        b[i] = byte(uint8(uint(x) / (2**(8*(19 - i)))));
        return string(b);
    }

    function getBalance(address x) returns(uint) {
        return x.balance;
    }

}
