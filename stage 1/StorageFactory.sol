//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "./SimpleStorage.sol";

contract StorageFactory {
    SimpleStorage[] public simplestorageArray;

    function createSimplestorageContract() public {
        SimpleStorage simplestorage = new SimpleStorage();
        simplestorageArray.push(simplestorage);
    }

    function sfStore(uint256 _sipleStorageIndex, uint256 _simpleStorageNumber)
        public
    {
        //Adress
        //ABI- Aplication Binary Interface
       simplestorageArray[_sipleStorageIndex].store(_simpleStorageNumber);
    }
function sfget(uint256 _sipleStorageIndex) public view returns(uint256){
return simplestorageArray[_sipleStorageIndex].retrieve();

}
   
}
