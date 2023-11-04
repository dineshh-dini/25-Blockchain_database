// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract UserDataStorage {
    struct UserData {
        string name;
        string date;
        string phone;
    }

    mapping(address => UserData) public userData;

    function storeUserData(string memory _name, string memory _date, string memory _phone) public {
        userData[msg.sender] = UserData(_name, _date, _phone);
    }
}