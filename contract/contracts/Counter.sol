// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.7.3;

contract Counter {
    event UpdatedCounter(int32 oldVal, int32 newVal);

    int32 counter;

    constructor(int32 initCounter) {
        counter = initCounter;
    }

    function increment() public {
        emit UpdatedCounter(counter, ++counter);
    }

    function decrement() public {
        emit UpdatedCounter(counter, --counter);
    }

    function updateCounter(int32 newVal) public {
        int32 oldVal = counter;
        counter = newVal;
        emit UpdatedCounter(oldVal, newVal);
    }
}
