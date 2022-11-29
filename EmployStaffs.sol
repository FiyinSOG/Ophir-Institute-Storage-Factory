//SPDX-License-Identifier: MIT

pragma solidity ^0.8.8;

import "./OphirInstituteStorage.sol";

/*
    Contract to add more staffs to the number
    of staffs stored(Employ new staffs).
*/

contract EmployStaffs is OphirInstituteStorage {

    function Store(uint256 _numberOfOphirInstituteStaffs) public override {
        numberOfOphirInstituteStaffs = _numberOfOphirInstituteStaffs + 17;
    }

}