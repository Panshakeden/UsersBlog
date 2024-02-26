// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.9;

interface IUserBlog {

    function NewUser(
        string memory _name,
        string memory _Blogtitle,
        string memory _author,
        string memory _posts
    ) external;
    
}

