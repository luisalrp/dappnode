# ![alt text](https://internxt.com/favicon.ico "") DAppNode for Internxt Core 


## Installation
With package's name or ipfs direction you could install it using two diferents methods:

- [Install by package name](http://my.dappnode/#/installer/x-core.public.dappnode.eth)

- If you could not find it by package's name use: ipfs/QmcoVNmKpR3hBz975CxbQWDiNwHrUcq61kicFUQoR1Pv4E

## Build package
You must have installed [dappnodesdk](https://github.com/dappnode/DAppNodeSDK/wiki/DAppNode-SDK-tutorial) tool to continue.

Run the following commad to build the new DApp package:
```
    > dappnodesdk build
```

## Publish package

Run the following commad to publish the new DApp package:
```
    > RELEASE_TYPE=$RELEASE_TYPE \
      DEVELOPER_ADDRESS=$DEVELOPER_ADDRESS \
      dappnodesdk build
```