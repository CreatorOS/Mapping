// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract Mapping {
    // Mapping from address to uint
    mapping(address => uint) public myMap;

    function get(address _addr) public view returns (uint) {
        // Mapping always returns a value.
        // If the value was never set, it will return the default value.

        // write logic to return the value of the mapping for the given address
        
    }

    function set(address _addr, uint _i) public {
        // Update the value at this address

        // write logic to set the value of the mapping for the given address to the given value
        
    }

    function remove(address _addr) public {
        // Reset the value to the default value.

        // write logic to remove the value of the mapping for the given address
        
    }
}