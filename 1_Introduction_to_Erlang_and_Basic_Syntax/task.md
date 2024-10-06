---

**Title: Implement a Basic Calculator Module in Erlang**

---

**Statement:**

Create an Erlang module named `simple_calc` that provides functions for performing basic arithmetic operations. You need to implement four operations: addition, subtraction, multiplication, and division. Additionally, write a script to interact with the user by reading two numbers and an operator. Based on the operator input, the appropriate function should be called to return the result of the operation.

Make sure your solution handles invalid inputs, such as unsupported operators or non-numeric values, gracefully by providing appropriate error messages.

**Input:**

- User input will include two floating-point or integer numbers (`Num1` and `Num2`) and an operator (`Op`), where `Op` can be one of the following: `'+'`, `'-'`, `'*'`, `'/'`.

**Output:**

- The result of the arithmetic operation between `Num1` and `Num2`.
- In case of invalid input, return an appropriate error message, such as:
  - "Invalid operator" for unsupported operations.
  - "Invalid number" for non-numeric inputs.
  - "Division by zero is not allowed" for division by zero.

**Example:**

```plaintext
Input: 
Num1 = 10, Num2 = 5, Op = '+'
Output: 
15

Input: 
Num1 = 10, Num2 = 0, Op = '/'
Output: 
"Division by zero is not allowed"

Input: 
Num1 = 10, Num2 = "abc", Op = '*'
Output: 
"Invalid number"

Input: 
Num1 = 10, Num2 = 5, Op = '%'
Output: 
"Invalid operator"
```

**Constraints:**

- `Num1` and `Num2` can be any valid floating-point or integer number.
- The operator `Op` is limited to the four supported arithmetic operators.