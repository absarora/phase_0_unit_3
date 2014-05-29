// U3.W8-9: Challenge you're converting

// I worked on this challenge [by myself, with: ].

// Ruby version: (factorial)
/*
def factorial(n)
  result = 1
  result.upto(n) {|i| result *= i}

  result
end
*/

// 2. Pseudocode

/*
- Create a class named "factorial" that takes a single integer argument
- Create a variable "result" and set it equal to 1
- loop 'n' # of times where 'n' is the integer passed in as an argument
- start the loop counter at 1
- result = result times the counter
- increment the counter until it loops through 'n' # of times
- return the result
*/

// 3. Initial Solution

function factorial(n){
  var result;
  for(var i = 0; i <= n; i++){
    i == 0 ? result = 1 : result *= i
  }
  return result;
}

// 4. Refactored Solution

function factorial(n){
  var result = 1;
  for(var i = 1; i <= n; i++){
        result *= i;
  }
  return result;
}

// 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE


console.log(factorial(0) == 1);
console.log(factorial(5) == 120);



// 5. Reflection 
