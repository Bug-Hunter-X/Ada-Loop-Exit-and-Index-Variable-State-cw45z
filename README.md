# Ada Loop Exit and Index Variable State
This example demonstrates a potential issue in Ada programs where exiting a loop before its natural completion can leave index variables in an undefined state, leading to unexpected behavior if the index is used after the loop.  This is especially problematic if the exit condition is not met at the expected iteration of the loop.

## Bug Description:
The `exit` statement prematurely terminates the loop. This leaves the loop index variable `I` in a state dependent on when the `exit` occurred. Subsequently using `I` can result in accessing an invalid index or undefined values.

## Solution:
Initialize `I` to a safe value (like 0) outside of the loop and check for this value after the loop before performing any access on `Arr(I)`. A more robust way is to avoid using the loop index after the loop entirely, and instead use variables specifically to track the desired loop results.