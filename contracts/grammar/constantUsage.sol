pragma solidity ^0.4.0;


contract constantUsage {
// constant key word to declare immutable variable.
    uint constant x = 32**22 + 8;
    string constant text = "abc";
    bytes32 constant myHash = keccak256("abc");

// constant to declare function not change any state variable.
    function f(uint a, uint b) constant returns (uint) {
        return a * (b + 42);
    }
}
