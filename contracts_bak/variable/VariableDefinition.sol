pragma solidity ^0.4.0;


contract VariableDefinition {
    // 固定大小的变量（除了映射，变长数组以外的类型）
    // boolean.
    bool b = true; // or false

    // integer
    //支持的运算符：
    //比较：<=，<，==，!=，>=，>，返回值为bool类型。
    //位运算符：&，|，（^异或），（~非）。
    //数学运算：+，-，一元运算+，*，/，（%求余），（**平方）
    int i = 0; // from int 8 to int 256. default int is int256
    uint u = 0; // from uint 8 to uint2 56. default uint is 256

    //address, attribute: balance. method: send, call, callcode, delegatecall
    address sender;

    // byte array with fixed length
    byte b1;
    bytes bs = hex("0011FF");

    string s = 'abc'; // encode is utf-8

    // float and u float.
    fixed f = 0.5;
    ufixed uf = 0.5;

    // enum definition and enum object
    enum Color {white, black, blue}
    Color current = white;



    // constructor function, it called when create a contract.
    function VariableDefinition(){

    }

    // set minter as public variable. and a method minter will be generated
    // by solc automatically.
    // function minter() returns (address) { return minter; }
    address public minter;

    mapping (address => uint) public balances;
    // function balances(address _account) returns (uint balance) {
    // return balances[_account]; }


}
