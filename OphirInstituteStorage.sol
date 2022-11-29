//SPDX-License-Identifier: MIT

pragma solidity ^0.8.8;

/* 
    Contract to store the name of various departments
    in Ophir Institute by name their and the number of staffs in
    array in sequence.
*/

contract OphirInstituteStorage {

    uint256 numberOfOphirInstituteStaffs;

    string ophirinstituteDepartment;

    struct OphirInstitute {
        string ophirinstituteDepartment;
        uint256 numberOfOphirInstituteStaffs;
    }

    OphirInstitute[] public ophirinstitute;

    //mapping to find the number of staffs by their department

    mapping(string => uint256) public ophirinstituteDepartmentToNumberOfStaffs;


    function Store(uint256 _numberOfOphirInstituteStaffs) public virtual {
        numberOfOphirInstituteStaffs = _numberOfOphirInstituteStaffs;
    }

    function Get() public view returns(uint256){
        return numberOfOphirInstituteStaffs;
    }

    function ophirinstituteStore(string memory _ophirinstituteDepartment, uint256 _numberOfOphirInstituteStaffs) public {
        ophirinstitute.push(OphirInstitute(_ophirinstituteDepartment, _numberOfOphirInstituteStaffs));
        ophirinstituteDepartmentToNumberOfStaffs[_ophirinstituteDepartment] = _numberOfOphirInstituteStaffs;
    }
}
