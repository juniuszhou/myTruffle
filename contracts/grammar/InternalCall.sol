pragma solidity ^0.4.0;


contract InternalCall {
// internal call could be call other function or call self
 // but must within the same contract.
// evm implement it via change the pc.
    function g(uint a) returns (uint ret) { return f(); }
    function f() returns (uint ret) { return g(7) + f(); }
}

// external call.
// evm 通过一个消息调用，而不是直接通过EVM的指令跳转
// 其它合约的函数必须通过外部的方式调用。对于一个外部调用，所有函数的参数必须要拷贝到内存中。

contract InfoFeed {
    function info() payable returns (uint ret) {
        return msg.value;
    }

// call info via external way
    function externalCallInfo() {
        this.info();
    }
}

contract Consumer {
// deposit()为Consumer合约存入一定量的ether
    function deposit() payable returns (uint){
        return msg.value;
    }

    function left() constant returns (uint){
    // balance is embedded variable.
        return this.balance;
    }

    function callFeed(address addr) returns (uint) {
        return InfoFeed(addr).info.value(1).gas(8000)();
    }
}

