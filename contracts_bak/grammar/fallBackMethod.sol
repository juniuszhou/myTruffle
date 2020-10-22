pragma solidity ^0.4.0;


contract fallBackMethod {
    function fallBackMethod(){

    }
    uint x;

// Contracts that receive Ether but do not define a fallback function throw an exception
// sending back the Ether (this was different before Solidity v0.4.0).
// So if you want your contract to receive Ether, you have to implement a fallback function.
    function() {
    x = 1;
    }
}
