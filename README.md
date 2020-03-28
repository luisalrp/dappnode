# ![alt text](https://internxt.com/favicon.ico "") DAppNode for Internxt Core 


## Installation
With package's name or ipfs direction you could install it using two diferents methods:

- [Install by package name](http://my.dappnode/#/installer/x-core.public.dappnode.eth)

- [Install by ipfs direction](http://my.dappnode/#/installer/%2Fipfs%2FQmRPmuEouAwg1JVUUxbq7oqVAV9j1sS55jpL56t6NiJ2n2)

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
      dappnodesdk publish
```