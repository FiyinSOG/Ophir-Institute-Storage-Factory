// SPDX-License-Identifier: MIT

pragma solidity ^0.8.8;

import "./OphirInstituteStorage.sol";

/*
    Contract to deploy the Ophir departmental contract, 
    store the number of staffs in Ophir Institute department on 
    different indexes(contract address) and get them.
*/

contract OphirInstituteStorageManager {

    OphirInstituteStorage[] public ophirinstituteStorageArray;
    
    function CreateOphirInstituteStorageContract() public {
        ophirinstituteStorageArray.push(OphirInstituteStorage(new OphirInstituteStorage()));
    }

    function OiStore(uint256 _numberOfOphirInstutiteStaffs, uint256 _ophirinstituteStorageIndex) public {
        OphirInstituteStorage ophirinstitutestorage = OphirInstituteStorage(ophirinstituteStorageArray[_ophirinstituteStorageIndex]);
        ophirinstitutestorage.Store(_numberOfOphirInstutiteStaffs);
    }

    function OiGet(uint256 _ophirinstituteStorageIndex) public view returns(uint256){
        OphirInstituteStorage ophirinstituteStorage = OphirInstituteStorage(ophirinstituteStorageArray[_ophirinstituteStorageIndex]);
        return ophirinstituteStorage.Get();
    }
}
