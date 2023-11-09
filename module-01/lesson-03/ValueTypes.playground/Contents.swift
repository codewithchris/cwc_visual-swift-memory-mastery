/*
 VALUE TYPES
 Examples: Int, Bool, Struct, String
 */

var first: Int = 8
var second = first

print("first: \(first), second: \(second)")

second = 5

// What will first be?
print("first: \(first), second: \(second)")

func double(number: Int) -> Int {
    return number * 2
}

var third = double(number: first)

// Will the first variable change?
print("first: \(first), second: \(second), third: \(third)")



/* VALUE TYPES ARE STORED ON THE "STACK" OF MEMORY
 */

// EXAMPLE:
func doSomeMath(number1: Int, number2: Int) -> Int {
    var result: Int = 0
    
    result = number1 + number2
    
    return result
}

/*
 The stack might look like this for this function:
 
 ------------
 | result   |
 |----------|
 | number2  |
 |----------|
 | number1  |
 |----------|
 | Stack... |
 ------------
 
 The stack works as "Last In, First Out" (LIFO) basis. Where the 'result' variable
 was the last one added, so it's on the top. When variables go out of scope, they
 are removed from the top of the stack.
 */
