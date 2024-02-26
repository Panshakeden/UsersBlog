// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract UserBlog {
    address owner;

    struct User {
        string name;
        string title;
        string author;
        string posts;
    }

    mapping(address => User) public users;

    constructor() {
        owner = msg.sender;
    }

    function NewUser(
        string memory _name,
        string memory _Blogtitle,
        string memory _author,
        string memory _posts
    ) external {
        users[msg.sender] = User({
            name: _name,
            title: _Blogtitle,
            author: _author,
            posts: _posts
        });
    }

    function getUser(address _userAddress) external view returns (User memory) {
        OnlyOwner();
        return users[_userAddress];
    }

    function OnlyOwner() private view {
        require(msg.sender == owner);
    }
}
