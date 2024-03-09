// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/* Problem 1 Interface & Contract */
/*
contract StudentV1 {
    function register() external view returns (uint256) {
        // TODO: please add your implementaiton here
        if(gasleft()<8937393460516634439){
            return 123;
        }
        return 1024;
    }
}
*/
contract StudentV1 {
    // Note: You can declare some state variable
    bool flag=false;
    function register() external returns (uint256) {
        // TODO: please add your implementaiton here
        if(!flag){
            flag=true;
            return 1024;
        }
        return 123;
    }
}

/* Problem 2 Interface & Contract */
/*
contract StudentV2 {
    function register() external view returns (uint256) {
        // TODO: please add your implementaiton here
        if(gasleft()<8937393460516634439){
            return 123;
        }
        return 1024;
    }
}
*/
interface IClassroomV2 {
    function isEnrolled() external view returns (bool);
}

contract StudentV2 {
    function register() external view returns (uint256) {
        // TODO: please add your implementaiton here
        if(!IClassroomV2(msg.sender).isEnrolled()){
            return 1024;
        }
        return 123;
    }
}

/* Problem 3 Interface & Contract */
contract StudentV3 {
    function register() external view returns (uint256) {
        // TODO: please add your implementaiton here
        if(gasleft()<7191){
            return 123;
        }
        return 1024;
    }
}
