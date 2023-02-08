pragma solidity ^0.8.0;

contract DeleteFromDynamicArray {
    uint[] public array;

    function createArray(uint[] memory itemsArray) public {
        for (uint i = 0; i < itemsArray.length; i++) {
            array.push(itemsArray[i]);
        }
    }

    function getArray() view public returns (uint[] memory) {
        return array;
    }

    function deleteItem(uint index) public {
        uint len = array.length;
        require(index < len, "Index out of bounds.");
        
        // Move all items to the right of the deleted item one position to the left.
        for (uint i = index; i < len - 1; i++) {
            array[i] = array[i + 1];
        }

        // Resize the array.
        delete array[len - 1];
        array.pop();
    }
}