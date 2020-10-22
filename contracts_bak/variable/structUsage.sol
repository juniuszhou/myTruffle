pragma solidity ^0.4.0;


contract structUsage {
    struct Funder{
    address addr;
    uint amount;
    }

    // create a funder with 100 wei.
    Funder funder = Funder("", 100);
    address addr = funder.addr;

}
