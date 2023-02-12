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

    function deleteArray() public {
        delete array;
    }

    function r1deleteItem(uint index) public {
        uint len = array.length;
        require(index < len, "Index out of bounds.");
        
        // Move all items to the right of the deleted item one position to the left.
        for (uint i = index; i < len - 1; i++) {
            array[i] = array[i + 1];
        }

        // Resize the array.
        array.pop();
    }

    function r2deleteItem(uint256 index) external {
        unchecked {
            for (; index < array.length - 1; ++index){
                array[index] = array[index + 1];
            }
            assembly {
                sstore(array.slot, sub(sload(array.slot), 1))
            }
        }
    }

    // function r3deleteItem(uint256 index) external {
    //     unchecked {
    //         for (; index < array.length - 1; ++index){
    //             assembly {
    //                 let nextIndex := add(index, 1)
    //                 let nextValue := sload(add(array.slot, nextIndex))
    //                 sstore(add(array.slot, index), nextValue)
    //             }
    //         }
    //         assembly { sstore(array.slot, sub(sload(array.slot), 1)) }
    //     }
    // }
}