pragma solidity ^0.4.0;

// http://www.tryblockchain.org/Solidity-%E8%AF%AD%E8%A8%80%E4%BB%8B%E7%BB%8D.html

contract SimpleStorage {
    uint storedData;

    function set(uint x) {
        storedData = x;
    }

    function get() constant returns (uint) {
        return storedData;
    }
}
