/*:
# Minute of Code

 This is an introduction to a very powerful concept in Computer Science called *Recursion*.
 We will define recursion, what it does, and learn the fundamental structure so you can start experimenting with it in your own projects.
 
 ## Objectives
 * Define Recursion
 * Examples
 * Code a recursive function
 * Stretch Challenges

## Notes:
Recursion is an advanced topic. It's helpful if you have some previous knowledge in programming fundamentals and previous experience with advanced mathematical concepts.
 Take a tour of the [Swift fundamentals](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/GuidedTour.html#//apple_ref/doc/uid/TP40014097-CH2-ID1).

****
# What is Recursion?
 In programming, **Recursion** is a method where the solution to a problem depends on a solution to a similar but simpler problem. You can represent recursion in code as a function defined in terms of itself.
 
 ### A basic defenition of a recursive function:
*/
import Foundation

func recurse() {
    recurse()
}
/*:
As you can see, it is legal for one function to call itself. It is one of the most magical things you can witness as a programmer. `recurse` doesn't do much more than to call another instance of itself. The next call would call itself again, and so on.\
 This is an exmaple of  _infinite recursion_ because theoretically it will continue indefinitely.
 
 ### Let's add a print statement so we can see every call to the function:
*/
func printingRecursion() {
    print("still going...")
    printingRecursion()
}
// printingRecursion() // Uncomment the statemen to see what happens
/*:
 ![Infinite Recursion](infinite-recursion.png "printing recursion results")
 Image 1 - printing recursion results
 
As you can see in `image 1` the code ran for `1677` times before I decided to stop it.
 
 Fortunately, it will reach a moment where the computer will run out of physical computation memory and the program will crash. You can manually stop the playground execution by pressing the stop square symbol at the lower left corner of the editor.
*/
/*:
 ### How can we improve on our definition?
 
 The reason it continued to execute indefenitely is because we are missing a crucial component in the implementation. Our definition never reaches a `base case`.\
 A `base case` is important because it provides a stopping case. When it reaches this stop case, control flow jumps back to the next line in the program where the function was initially called.
 
 ## Let's build a countdown function:
 */
func countdownFrom(_ number: Int){
    // Base case
    if number <= 0 {
        print("Blastoff!")
    }
    else { // Recurse case
        print(number)
        countdownFrom(number - 1)
    }
}
countdownFrom(3)
//countdownFrom(10) // Uncomment to compare results
/*:
 
 **3 Important observations:**
 1. We provided a base case, so we can exit from `countdownFrom`
 2. We provided a recurse case
 3. We passed in a _"simpler"_ problem to the recurse case
 
 The base case provides a stopping case. When `number` reaches `0` or less the function prints the message "Blastoff!". If `number` is any other number, it prints the current value of number, and then proceeds to call another instace of `countdownFrom`. Notice how the argument changed. It is important that we modify the original problem to a simpler version of the same problem. In this case we simply decrease the initial value of `number` by one.

 After calling `countdownFrom(3)`, you should see this on your console:
 
 ![Countdown Blast](blastoff3.png "Blasoff!")
 */
/*:
 ## A more challenging problem:
 
In math, recursion is used when you need to calculate the result of a series of similar simpler calculations.\
 For example, exponentiating base `b` to a power `n`.
 Let's have a look:
*/
func power(base: Int, exponent: Int) -> Int {
    if exponent == 0 {
        return 1
    }
    return base * power(base: base, exponent: exponent - 1)
}
var power2Raised2 = power(base: 2, exponent: 2)
var power3Raised3 = power(base: 3, exponent:  3)

print(power2Raised2)
print(power3Raised3)
/*:
 Take the time to understand the `power` function.
 
 ## Stretch Challenges
 * Go back to the previous examples and think of ways that the calls could fail.
 * Create a function for the mathematical defenition of a `factorial`.
*/


