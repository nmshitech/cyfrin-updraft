// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract SimpleStorage {

        uint256 myFavouriteNumber;

        struct Person {
            uint256 favouriteNumber;
            string name;
        }

        Person [] public listofpeople;

        mapping (string => uint256) public nametoFavouriteNumber;


        function store (uint256 _favouriteNumber) public {
            myFavouriteNumber = _favouriteNumber;
        }

        function retrieve () public view returns (uint256){
            return myFavouriteNumber;
        }

        function addperson (string memory _name, uint _favouriteNumber) public {
           
           listofpeople.push(Person(_favouriteNumber, _name));
           nametoFavouriteNumber[_name] = _favouriteNumber;
        }
    
    
}
