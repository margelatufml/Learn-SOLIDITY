//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./SimpleStorage.sol";
contract Extrasotrage is SimpleStorage{
//+5 to any numer 
//overwrite
//virtual overwrite 
function store(uint256 _favoritenmb) public override{
    favouritenmb=_favoritenmb+5;
}
}