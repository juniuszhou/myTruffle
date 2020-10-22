pragma solidity ^0.4.0;


contract ObjectOrient {
    // only one construct can be declared. override not allowed.
    // when one function is contract call other contract 's method. the
    // context was changed. and the caller contract become invisible.
    function ObjectOrient(uint num){

    }
}

contract ObjectOrientUser {
    ObjectOrient obj;
    function initObj(uint num) {
    // init obj in function
        obj = ObjectOrient(num);
    }
    ObjectOrient obj2 = ObjectOrient(0);
}

// 如果一个合约要创建另一个合约，它必须要知道源码。这意味着循环创建依赖是不可能的。

// inheritance and multiple inherit is allowed.
contract CarObject is ObjectOrient,  ObjectOrientUser {

}