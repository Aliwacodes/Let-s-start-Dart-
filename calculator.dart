import 'dart:io'; // Import the dart:io library to use input/output functions

void main() {
  // Define the main function, which is the entry point of the program
  print(
      "Welcome to Simple Calculator"); // Print a welcome message to the console

  while (true) {
    // Start an infinite loop that will continue until the user decides to exit
    print(
        "Enter an operation (+, -, *, /) or 'exit' to quit:"); // Prompt the user to enter an operation
    String operation = stdin
        .readLineSync()!
        .trim(); // Read the user's input and remove any leading/trailing whitespace

    if (operation.toLowerCase() == 'exit') {
      // Check if the user wants to exit (case-insensitive)
      print("Goodbye!"); // Print a farewell message to the console
      break; // Exit the loop and end the program
    }

    print(
        "Enter the first number:"); // Prompt the user to enter the first number
    double num1 = double.parse(stdin
        .readLineSync()!); // Read the user's input and parse it as a double (floating-point number)

    print(
        "Enter the second number:"); // Prompt the user to enter the second number
    double num2 = double.parse(stdin
        .readLineSync()!); // Read the user's input and parse it as a double

    double result; // Declare a variable to store the result of the calculation

    switch (operation) {
      // Use a switch statement to determine which operation to perform based on the user's input
      case '+': // If the operation is addition
        result = num1 + num2; // Perform addition and store the result
        break; // Exit the switch statement
      case '-': // If the operation is subtraction
        result = num1 - num2; // Perform subtraction and store the result
        break; // Exit the switch statement
      case '*': // If the operation is multiplication
        result = num1 * num2; // Perform multiplication and store the result
        break; // Exit the switch statement
      case '/': // If the operation is division
        if (num2 != 0) {
          // Check if the second number is not zero (to avoid division by zero)
          result = num1 / num2; // Perform division and store the result
        } else {
          // If the second number is zero
          print(
              "Error: Cannot divide by zero!"); // Print an error message to the console
          continue; // Skip the rest of the loop and prompt the user for another operation
        }
        break; // Exit the switch statement
      default: // If the user entered an invalid operation
        print("Invalid operation!"); // Print an error message to the console
        continue; // Skip the rest of the loop and prompt the user for another operation
    }

    print(
        "Result: $result"); // Print the result of the calculation to the console
  }
}
