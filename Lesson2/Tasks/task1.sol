pragma solidity ^0.8.0;

contract DeleteFromDynamicArray {
    uint8[] public array;

    function createArray(uint8[] memory itemsArray) public {
        for (uint i = 0; i < itemsArray.length; i++) {
            array.push(itemsArray[i]);
        }
    }

    function getArray() external view returns (uint8[] memory) {
        return array;
    }

    function deleteArray() public {
        delete array;
    }

    // Keeping the array sorted, with array.pop()
    function f1deleteItem(uint8 _index) external {
        require(_index < array.length, "Index out of bounds.");
        
        // Move all items to the right of the deleted item one position to the left.
        for (; _index < array.length - 1; ++_index) {
            array[_index] = array[_index + 1];
        }

        // Resize the array.
        array.pop();
    }

    // Keeping the array sorted, with assembly
    function f2deleteItem(uint8 _index) external {
        unchecked {
            for (; _index < array.length - 1; ++_index){
                array[_index] = array[_index + 1];
            }
            assembly {
                sstore(array.slot, sub(sload(array.slot), 1))
            }
        }
    }

    // Not keeping the array sorted - 1
    function f3deleteItem(uint _index) external {
        //write function in unchecked solidity
        unchecked {
            array[_index] = array[array.length - 1];
            array.pop();
        }
    }

    // Not keeping the array sorted - 2
    function f4deleteItem(uint _index) external {

        // This line below costs more gas:
        // require(array.length > 0, "Array is Empty");

        array[_index] = array[array.length - 1];
        array.pop();
    }

}