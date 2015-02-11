
if (enteredDoorCode && passedRetinaScan) || hasDoorKey || knowsOverridePassword {
    println("Welcome!") // This is printed in console. No change in result.
} else {
    println("ACCESS DENIED")
}
