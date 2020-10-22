pragma solidity ^0.4.0;


contract mapUsage {
    mapping (address => uint) public balances;

    function setBalance(address addr) {
        balances[addr] = 100;
    }

    function getBalance(address addr) returns (uint balance) {
        return balances[addr];
    }
}
