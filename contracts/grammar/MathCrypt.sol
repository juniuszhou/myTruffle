pragma solidity ^0.4.0;


contract MathCrypt {
    function callMath() {
        uint a;
        uint b;
    uint c;
    // (x + y) % k
    var sum = addmod(a, b, c);
    // (x * y) % k
    var mul = mulmod(a, b, c);

    keccak256("ab", "c"); // 使用以太坊的（Keccak-256）计算HASH值。紧密打包。

    sha3(); // 等同于keccak256()。紧密打包。

    sha256(); // 使用SHA-256计算HASH值。紧密打包。

    ripemd160(); // 使用RIPEMD-160计算HASH值。紧密打包。

    ecrecover( hash,  v,  r,  s);// 通过签名信息恢复非对称加密算法公匙地址。如果出错会返回0，附录提供了一个例子1.

    revert();

    }
}
