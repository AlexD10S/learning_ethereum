# To test it:

```
npm install

node raw_transaction.js
```

What it shows in console:

```
RLP-Encoded Tx: 0xe6808609184e72a0008303000094b0920c523d582040f2bcb1bd7fb1c7c1ecebdb3480801c8080
Tx Hash: 0x3a2fd1a5ea9ffee477f449be53a49398533d2c006a5815023920d1c397298df3

Signed Raw Transaction: 0xf866808609184e72a0008303000094b0920c523d582040f2bcb1bd7fb1c7c1ecebdb3480801ca0ae236e42bd8de1be3e62fea2fafac7ec6a0ac3d699c6156ac4f28356a4c034fda0422e3e6466347ef6e9796df8a3b6b05bed913476dc84bbfca90043e3f65d5224
```

In v we add the chain identifier, we used 1 here Ethereum mainnet, we can use other for testing or even some other chains like 61 for Ethereum Classic mainnet.
