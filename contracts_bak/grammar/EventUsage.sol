pragma solidity ^0.4.0;


contract EventUsage {
    event Sent(address from, address to, uint amount);

    // send some ether to receiver account. send notification at the end.
    function send(address receiver, uint amount) {
        if (balances[msg.sender] < amount) return;
        balances[msg.sender] -= amount;
        balances[receiver] += amount;
        Sent(msg.sender, receiver, amount);
    }
}
