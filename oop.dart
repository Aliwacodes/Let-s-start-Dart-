import 'dart:io';

// Interface-like abstract class
abstract class Walkable {
  void walk();
}

// Base class
class Animal {
  String name;

  Animal(this.name);

  void makeSound() {
    print('Animal makes a sound');
  }
}

// Subclass inheriting from Animal
class Dog extends Animal {
  Dog(String name) : super(name);

  @override
  void makeSound() {
    print('$name barks');
  }
}

// Class implementing Walkable
class Human implements Walkable {
  @override
  void walk() {
    print('Human is walking');
  }
}

// Function to read data from a file and initialize an object
Animal initializeAnimalFromFile(String filePath) {
  final file = File(filePath);
  final name = file.readAsStringSync().trim();
  return Animal(name);
}

// Method demonstrating the use of a loop
void printNumbers(int n) {
  for (int i = 1; i <= n; i++) {
    print(i);
  }
}

void main() {
  // Create an instance of Dog and demonstrate method override
  var dog = Dog('Buddy');
  dog.makeSound(); // Outputs: Buddy barks

  // Create an instance of Human implementing Walkable interface
  var human = Human();
  human.walk(); // Outputs: Human is walking

  // Initialize an Animal from a file
  var animalFromFile = initializeAnimalFromFile('animal_name.txt');
  print('Animal name from file: ${animalFromFile.name}');

  // Demonstrate loop
  printNumbers(5);
}
