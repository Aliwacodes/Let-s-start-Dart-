// Task 1: Function to return the sum of two numbers
int sum(int num1, int num2) {
  return num1 + num2;
}

// Task 2: Program to print numbers from 1 to 10 using a for loop
void printNumbers() {
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
}

// Task 3: Program to use a switch statement to check string values
void checkString(String value) {
  switch (value) {
    case 'apple':
      print('It is a fruit.');
      break;
    case 'car':
      print('It is a vehicle.');
      break;
    case 'dog':
      print('It is an animal.');
      break;
    default:
      print('Unknown value.');
  }
}

// Task 4: Program to print numbers from 20 to 10 using a while loop
void printNumbersDescending() {
  int i = 20;
  while (i >= 10) {
    print(i);
    i--;
  }
}

// Task 5: Program to check if a number is even or odd using if-else statement
void checkEvenOrOdd(int number) {
  if (number % 2 == 0) {
    print('$number is even.');
  } else {
    print('$number is odd.');
  }
}

// Task 6: Program to find the largest number in a list
int? findLargestNumber(List<int> numbers) {
  if (numbers.isEmpty) {
    return null;
  }
  int largest = numbers[0];
  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > largest) {
      largest = numbers[i];
    }
  }
  return largest;
}

// Task 7: Program to use a try-catch block to catch an exception
void catchException() {
  try {
    var result = 5 ~/ 0; // Attempting to divide by zero
    print('Result: $result');
  } catch (e) {
    print('Error: $e');
  }
}

void main() {
  // Task 1: Sum of two numbers
  print('${sum(5, 7)}');

  // Task 2: Printing numbers from 1 to 10
  print;
  printNumbers();

  // Task 3: Checking string values
  print;
  checkString('apple');
  checkString('car');
  checkString('dog');
  checkString('cat');

  // Task 4: Printing numbers from 20 to 10
  print;
  printNumbersDescending();

  // Task 5: Checking if a number is even or odd
  print;
  checkEvenOrOdd(12);
  checkEvenOrOdd(7);

  // Task 6: Finding the largest number in a list
  print;
  List<int> numbers = [10, 30, 20, 5, 15];
  print('Largest number in the list: ${findLargestNumber(numbers)}');

  // Task 7: Using try-catch block to catch an exception
  print;
  catchException();
}
