
---

**Problem Title:** Implement List Utilities in Erlang

**Problem Statement:**

You are tasked with implementing a module `list_utils` that provides utility functions for lists in Erlang. Specifically, you need to implement the following three functions:

1. **sum_list/1:** This function takes a list of integers as input and returns the sum of all elements in the list.

2. **filter_even/1:** This function takes a list of integers as input and returns a new list containing only the even numbers from the original list.

3. **find_max/1:** This function takes a non-empty list of integers as input and returns the maximum value in the list.

### Function Signatures:
```erlang
sum_list(List :: [integer()]) -> integer().
filter_even(List :: [integer()]) -> [integer()].
find_max(List :: [integer()]) -> integer().
```

### Input:
- Each function takes one input: a list of integers, `List`.

### Output:
- `sum_list/1`: Returns the sum of the elements in the list.
- `filter_even/1`: Returns a list of the even numbers from the input list.
- `find_max/1`: Returns the maximum integer in the list (assume the list is non-empty).

### Constraints:
- The list may contain negative numbers.
- The list will not be empty for the `find_max/1` function.
- You cannot use any external libraries, but you may use built-in list processing functions.

### Example:

#### Example 1:
```erlang
Input: sum_list([1, 2, 3, 4])
Output: 10
Explanation: 1 + 2 + 3 + 4 = 10

Input: filter_even([1, 2, 3, 4])
Output: [2, 4]
Explanation: Only 2 and 4 are even numbers.

Input: find_max([1, 2, 3, 4])
Output: 4
Explanation: The maximum value in the list [1, 2, 3, 4] is 4.
```

#### Example 2:
```erlang
Input: sum_list([-10, 5, 15])
Output: 10
Explanation: -10 + 5 + 15 = 10

Input: filter_even([-10, 3, 4, 5])
Output: [-10, 4]
Explanation: -10 and 4 are the even numbers in the list.

Input: find_max([-10, 3, 4, 5])
Output: 5
Explanation: The maximum value in the list [-10, 3, 4, 5] is 5.
```

### Erlang Shell Test Cases:

Here are some test cases you can run in Erlang’s shell to verify your implementation:

```erlang
1> c(list_utils).
{ok, list_utils}

2> list_utils:sum_list([1, 2, 3, 4]).
10

3> list_utils:filter_even([1, 2, 3, 4]).
[2, 4]

4> list_utils:find_max([1, 2, 3, 4]).
4

5> list_utils:sum_list([-10, 5, 15]).
10

6> list_utils:filter_even([-10, 3, 4, 5]).
[-10, 4]

7> list_utils:find_max([-10, 3, 4, 5]).
5
```