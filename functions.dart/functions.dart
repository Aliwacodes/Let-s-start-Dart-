//add two
int addTwo(int num1, int num2) {
  return num1 + num2;
}

//subtract two
int subtractTwo(int num1, int num2) {
  return num1 - num2;
}

//multiply two
double multiplyTwo(double num1, double num2) {
  return num1 * num2;
}

//divide two
double divideTwo(double num1, double num2) {
  return num1 / num2;
}

//stringlength
int stringLength(String str) {
  return str.length;
}

//getFirstElement
T getFirstElement<T>(List<T> list) {
  return list[0];
}

void main() {
  // Testing the functions
  print(addTwo(5, 3));
  print(subtractTwo(10, 4));
  print(multiplyTwo(2.5, 5));
  print(divideTwo(10, 2));

  String myName = "Gabriella";
  print(stringLength(myName));

  List<int> numbers = [1, 2, 3, 4];
  print(getFirstElement(numbers));
}
