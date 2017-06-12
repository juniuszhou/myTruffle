pragma solidity ^0.4.0;


contract InternalVariable {
/*
block.blockhash(uint blockNumber) returns (bytes32)，给定区块号的哈希值，只支持最近256个区块，且不包含当前区块。
block.coinbase (address) 当前块矿工的地址。
block.difficulty (uint)当前块的难度。
block.gaslimit (uint)当前块的gaslimit。
block.number (uint)当前区块的块号。
block.timestamp (uint)当前块的时间戳。
msg.data (bytes)完整的调用数据（calldata）。
msg.gas (uint)当前还剩的gas。
msg.sender (address)当前调用发起人的地址。
msg.sig (bytes4)调用数据的前四个字节（函数标识符）。
msg.value (uint)这个消息所附带的货币量，单位为wei。
now (uint)当前块的时间戳，等同于block.timestamp
tx.gasprice (uint) 交易的gas价格。
tx.origin (address)交易的发送者（完整的调用链）
*/
    function InternalVariable(){

    }
}
