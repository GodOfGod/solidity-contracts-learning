// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import { HelloWorld } from "./test.sol";

contract Factory {
    HelloWorld[] hws;

    function createHelloWorld() external{
        HelloWorld hw = new HelloWorld();
        hws.push(hw);
    }

    function setHelloWorldInfo(string calldata name, uint8 id) external {
        
    }
}