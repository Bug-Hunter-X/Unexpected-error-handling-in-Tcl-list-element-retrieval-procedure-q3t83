# Unexpected Error Handling in Tcl List Element Retrieval

This repository demonstrates an uncommon error in a Tcl procedure designed to retrieve an element from a list. The procedure fails to handle cases where the provided index is not a valid number, leading to unexpected behavior.

## Bug Description

The `get_element` procedure correctly checks for index out-of-bounds errors. However, it does not explicitly validate that the provided `index` is a number.  If a non-numeric string is used as an index, the procedure will throw an error, but not the one that clearly signals a type mismatch. 

## Bug Reproduction

The `bug.tcl` file contains the erroneous `get_element` procedure and examples demonstrating both correct and incorrect usage.  The incorrect usage, specifically using a non-numeric string as the index, will reveal the unexpected error.

## Solution

The `bugSolution.tcl` file provides a corrected version of the `get_element` procedure. The solution adds explicit type checking to ensure the index is numeric before accessing the list.  This prevents unexpected errors when non-numeric indices are provided.
