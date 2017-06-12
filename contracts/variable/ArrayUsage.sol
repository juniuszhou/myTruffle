pragma solidity ^0.4.0;


contract ArrayUsage {
    //array in memory
    uint[] memory memoryArray = new uint[](10);

    // default array in storage.
    uint[] storageArray;

    function growStorageArray() {
        storageArray.push(0);
        storageArray.push(1);
        storageArray[storageArray.length++] = 2;
    }

    // change length of array
    function change() {
        uint[] memory array = new uint[](10);
        array.length = 20;
        // invalid to change length of memory array.
        uint[] stored;
        stored.length = 20;
    }
}
