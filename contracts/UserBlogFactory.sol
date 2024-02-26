// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "./UserBlog.sol";

contract MultiSigFactory {
    UserBlog[] UserBlogClones;

    function createNewUserBlog() external returns (UserBlog newUserBlog_, uint256 length_) {
        newUserBlog_ = new UserBlog();

        UserBlogClones.push(newUserBlog_);

        length_ = UserBlogClones.length;
    }

    function getNewUser() external view returns(UserBlog[] memory) {
        return UserBlogClones;
    }
}