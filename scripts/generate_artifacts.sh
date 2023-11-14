#! /usr/bin/env bash

echo "Generating artifacts/weth/WETH9.json";
sol-ast-compile --compiler-version 0.4.19 --compiler-kind native --raw artifacts/weth/WETH9.sol > artifacts/weth/WETH9.json

echo "Generating artifacts/dai/DAI.json";
sol-ast-compile --compiler-version 0.5.12 --compiler-kind native --raw artifacts/dai/DAI.sol > artifacts/dai/DAI.json

echo "Generating artifacts/usdc/USDC.json";
sol-ast-compile --compiler-version 0.8.4 --compiler-kind native --raw artifacts/usdc/USDC.sol > artifacts/usdc/USDC.json

SOLC084=`sol-ast-compile --locate-compiler-cache`/linux-amd64/solc-linux-amd64-v0.8.4+commit.c7e474f2

echo "Generating artifacts/ClipperExchange/ClipperExchange.json";
cat artifacts/ClipperExchange/ClipperExchange.compiler_input.json | $SOLC084 --standard-json > artifacts/ClipperExchange/ClipperExchange.json

echo "Generating artifacts/UniswapV2/UniswapV2Factory.json";
sol-ast-compile --compiler-version 0.5.16 --compiler-kind native --raw artifacts/UniswapV2/UniswapV2Factory.sol > artifacts/UniswapV2/UniswapV2Factory.json

echo "Generating artifacts/UniswapV2/UniswapV2Pair.json";
sol-ast-compile --compiler-version 0.5.16 --compiler-kind native --raw artifacts/UniswapV2/UniswapV2Pair.sol > artifacts/UniswapV2/UniswapV2Pair.json

echo "Generating artifacts/UniswapV2/UniswapV2Router02.json";
sol-ast-compile --compiler-version 0.6.6 --compiler-kind native --raw artifacts/UniswapV2/UniswapV2Router02.sol > artifacts/UniswapV2/UniswapV2Router02.json

echo "Generating artifacts/ERC20/MintableERC20.json";
sol-ast-compile --compiler-version 0.8.15 --compiler-kind native --raw artifacts/ERC20/MintableERC20.sol > artifacts/ERC20/MintableERC20.json