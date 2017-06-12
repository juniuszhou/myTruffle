pragma solidity ^0.4.0;


contract returnMultiple {
    function returnMultiple(){

    }

// return two values via returns and default name instead using return at the end of function
// the parameters in returns also called output parameters.
    function arithmetics(uint _a, uint _b) returns (uint o_sum, uint o_product) {
        o_sum = _a + _b;
        o_product = _a * _b;
    }

}
