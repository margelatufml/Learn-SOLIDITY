//SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;
//EVM, Ethereum virtual machine 
//Avalanche, Fantonm, Polygon
contract SimpleStorage {
    //This gets initialized to zero!
    //<-This means that this section is a comment!
    uint256 favouritenmb;

mapping(string=>uint256)public nameToFavouritenmb;
    struct People {
        uint256 favouritenmb;
        string name;
    }
    //uint256[] public favouritenmblist;
    People[] public people;

    //0: Patrik, 1:John, 2:Maria

    function store(uint256 _favoritenmb) public virtual{
        favouritenmb = _favoritenmb;
    }

    //view, pure
    function retrieve() public view returns (uint256) {
        return favouritenmb;
    }
 //calldata,memory,storage
    function addPerson(string memory _name, uint256 _favoritenmb) public {
        
        people.push(People(_favoritenmb, _name));
    nameToFavouritenmb[_name]=_favoritenmb;
    }
}
//0xd9145CCE52D386f254917e481eB44e9943F39138
