# To compile it

```
solc --optimize --bin Faucet.sol
```

# To see the ABI:

```
solc --abi Faucet.sol
```

# Browser IDE:
Another option is open in the browser:
https://remix.ethereum.org

And paste the code there, to compile it, get the ABI, deploy it ...

# Test the Events:
First install truffle,
Then execute the following commands
```
truffle develop

compile

migrate
```

Now we deploy the contract
```
Faucet.deployed().then(i => {FaucetDeployed = i})
```
And we test the 2 Events, first sending money to the address (making a deposit):
```
FaucetDeployed.send(web3.toWei(1, "ether")).then(res => \
                  { console.log(res.logs[0].event, res.logs[0].args) })
```

And lastly, calling the method withdraw
```
FaucetDeployed.withdraw(web3.toWei(0.1, "ether")).then(res => \
                  { console.log(res.logs[0].event, res.logs[0].args) })
```