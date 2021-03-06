pragma solidity >=0.4.21 <0.7.0;

// http://www.tryblockchain.org/Solidity-%E8%AF%AD%E8%A8%80%E4%BB%8B%E7%BB%8D.html

contract SimpleStorage {
    uint storedData;

    function set(uint x) public {
        require(x > 10, "data must bigger than 10");
        storedData = x;
    }

    function get() public view returns (uint) {
        return storedData;
    }
}
