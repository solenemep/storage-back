//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.4;

contract Storage {
    string private _data;

    event DataSet(address indexed account, string _data);

    constructor(string memory data_) {
        _data = data_;
    }

    function setData(string memory data_) public {
        _data = data_;
        emit DataSet(msg.sender, data_);
    }

    function getData() public view returns (string memory) {
        return _data;
    }
}
