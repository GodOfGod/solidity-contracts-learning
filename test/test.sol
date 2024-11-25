// SPDX-License-Identifier: MIT

pragma solidity ^0.8.26;



contract HelloWorld {
    struct Info {
        string name;
        uint8 id;
        address addr;
    }

    string str = "Hello wrold";
    Info[] infos;
    mapping(uint8 => Info) mappingInfo;

    function sayHello() external view returns(string memory){
        return addInfo(str);
    }

    function setHelloWorld(string memory newString) external {
        str = newString;
    }

    function addInfo(string memory oldStr) internal pure returns(string memory) {
        return string.concat(oldStr, "hahhaha");
    }

    function setInfos(string memory name, uint8 id) external {
        Info memory info = Info(name, id, msg.sender);
        infos.push(info);
        mappingInfo[id] = info;
    }

    function checkInfo(uint8 id) external view returns(string memory) {
        // for (uint i = 0; i < infos.length; i ++){
        //     if (infos[i].id == id) {
        //         return infos[i].name;
        //     }
        // }
        if (mappingInfo[id].addr == address(0x0)) {
            return "undefined id";
        }
        return mappingInfo[id].name;
    }

}