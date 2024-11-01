// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract SimpleStorage {

        // This is state variable
        uint256 myFavouriteNumber;

        //This is struct
        struct Person {
            uint256 favouriteNumber;
            string name;
        }

        //This is array
        Person [] public listofpeople;

        //Mapping
        mapping (string => uint256) public nametoFavouriteNumber;


        //Function is used to store the favourite number
        function store (uint256 _favouriteNumber) public {
            myFavouriteNumber = _favouriteNumber;
        }

        //Function is used to retrieve the number
        function retrieve () public view returns (uint256){
            return myFavouriteNumber;
        }

        //Function is used to add the person
        function addperson (string memory _name, uint _favouriteNumber) public {
           
        //Pushing the favourite number to an array
        listofpeople.push(Person(_favouriteNumber, _name));
        nametoFavouriteNumber[_name] = _favouriteNumber;
        }
    
    
}
