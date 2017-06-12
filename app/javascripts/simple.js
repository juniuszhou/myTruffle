
// the specific contract is a new contract type with defined ABI
var internalcall_sol_infofeedContract = web3.eth.contract([{
    "constant": false,
    "inputs": [],
    "name": "info",
    "outputs": [{"name": "ret", "type": "uint256"}],
    "payable": true,
    "type": "function"
}, {"constant": false,
    "inputs": [], "name": "externalCallInfo",
    "outputs": [], "payable": false,
    "type": "function"}]);

// it is an real object with byte code. then contract will be genreated.
var internalcall_sol_infofeed = internalcall_sol_infofeedContract.new(
    {
        from: web3.eth.accounts[0],
        // data is the byte code of account.
        data: '0x6060604052341561000c57fe5b5b61013b8061001c6000396000f30060606040526000357c0100000000000000000000000000000000000000000000000000000000900463ffffffff168063370158ea14610046578063b489230014610064575bfe5b61004e610076565b6040518082815260200191505060405180910390f35b341561006c57fe5b610074610087565b005b600060006000819055503490505b90565b3073ffffffffffffffffffffffffffffffffffffffff1663370158ea6000604051602001526040518163ffffffff167c0100000000000000000000000000000000000000000000000000000000028152600401809050602060405180830381600087803b15156100f357fe5b6102c65a03f1151561010157fe5b50505060405180519050505b5600a165627a7a72305820b9da72a0bd7e99c58cba84949a47758980ac51e9c670b0360a9cb7c4a634127f0029',
        gas: '4700000'
    }, function (e, contract) {
        console.log(e, contract);
        if (typeof contract.address !== 'undefined') {
            console.log('Contract mined! address: ' + contract.address + ' transactionHash: ' + contract.transactionHash);
        }
    });

