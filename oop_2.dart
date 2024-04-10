// Define the Student class
class Student {
  String name;
  int age;
  int gradeLevel;

  // Constructor
  Student(this.name, this.age, this.gradeLevel);

  // Method to print student's information
  void printInfo() {
    print('Student: Name - $name, Age - $age, Grade Level - $gradeLevel');
  }
}

// Define the Teacher class
class Teacher {
  String name;
  int age;
  String subject;

  // Constructor
  Teacher(this.name, this.age, this.subject);

  // Method to print teacher's information
  void printInfo() {
    print('Teacher: Name - $name, Age - $age, Subject - $subject');
  }
}

// Define the Main class
class Main {
  void run() {
    // Create instances of Student and Teacher classes
    var student = Student('Alice', 15, 10);
    var teacher = Teacher('Mr. Smith', 35, 'Math');

    // Call methods to print information
    student.printInfo();
    teacher.printInfo();
  }
}

void main() {
  // Create an instance of Main class and run the program
  var main = Main();
  main.run();
}
