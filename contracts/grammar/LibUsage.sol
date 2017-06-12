pragma solidity ^0.4.0;


library LibUsage {
    // no construct for lib

//库与合约类似，但它的目的是在一个指定的地址，且仅部署一次，然后通过EVM的特性DELEGATECALL(
//Homestead之前是用CALLCODE)来复用代码。这意味着库函数调用时，它的代码是在调用合约的上下文中执行。
//使用this将会指向到调用合约，而且可以访问调用合约的存储(storage)。因为一个合约是一个独立的代码块，
//它仅可以访问调用合约明确提供的状态变量(state variables)，否则除此之外，没有任何方法去知道这些状态变量。
//
//使用库合约的合约，可以将库合约视为隐式的父合约(base contracts)，当然它们不会显式的出现在继承关系中。
//但调用库函数的方式非常类似，如库L有函数f()，使用L.f()即可访问。此外，internal的库函数对所有合约可见，
//如果把库想像成一个父合约就能说得通了。当然调用内部函数使用的是internal的调用惯例，
//这意味着所有internal类型可以传进去，memory类型则通过引用传递，而不是拷贝的方式。在EVM的实现方式是，
//internal的库函数，将会被拉取(pull into)到调用合约中，然后执行一个普通的JUMP来代替DELEGATECALL。
    struct Data { mapping(uint => bool) flags; }
    function insert(Data storage self, uint value)
    returns (bool)
    {
        if (self.flags[value])
        return false; // already there
        self.flags[value] = true;
        return true;
    }

}
