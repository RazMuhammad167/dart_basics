import 'dart:io';

void main() {
  print("Dart collections file, Task 1.2");

  // 1. Create List of integers and demonstrate add, remove, insert
  List<int> integerList = [10, 20, 30, 40, 50]; // Step 1
  integerList.add(6);
  integerList.remove(30);
  integerList.insert(3, 3);
  print("List after operations: $integerList"); // Step 1

  // 2. Create Set and show unique elements
  Set<String> stringSet = {"House", "Home", "Humble abode"}; // Step 2
  print("Set elements (unique): $stringSet"); // Step 2

  // 3. Create Map with key-value pairs
  Map<int, String> studentIds = {
    1101: "Raz",
    1102: "Ali",
    1103: "Jaweria",
    1104: "Jawad",
    1105: "Sultan",
  }; // Step 3
  print("Student IDs Map: $studentIds"); // Step 3

  // 4. Use list.map() to transform data
  List<int> squaredNumbers = integerList.map((n) => n * n).toList(); // Step 4
  print("Squared numbers: $squaredNumbers"); // Step 4

  // 5. Use list.where() for filtering
  List<int> filteredNumbers = squaredNumbers
      .where((n) => n > 20)
      .toList(); // Step 5
  print("Numbers > 20: $filteredNumbers"); // Step 5

  // 6. Implement list.reduce() for sum
  int sum = integerList.reduce((a, b) => a + b); // Step 6
  print("Sum of numbers: $sum"); // Step 6

  // 7. Create List<Map<String, dynamic>> for students
  List<Map<String, dynamic>> students = []; // Step 7
  students.add({"id": 1101, "name": "Raz", "marks": 92});
  students.add({"id": 1102, "name": "Ali", "marks": 83});
  students.add({"id": 1103, "name": "Jaweria", "marks": 40});
  students.add({"id": 1104, "name": "Jawad", "marks": 52});
  students.add({"id": 1105, "name": "Sultan", "marks": 53});

  // 9. Sort by marks descending
  students.sort((a, b) => b["marks"].compareTo(a["marks"])); // Step 9
  print("Students sorted by marks: $students"); // Step 9

  // 12. Print formatted output
  students.forEach((s) {
    print("${s['name']} : ${s['marks']}\n"); // Step 12
  });

  // 10. Filter students with marks > 75
  List<Map<String, dynamic>> topStudents = students
      .where((s) => s["marks"] > 75)
      .toList(); // Step 10
  print("Top scoring students: \n"); // Step 10
  topStudents.forEach((s) {
    print("${s['name']} : ${s['marks']}\n"); // Step 12
  });

  // 11. Search student by name
  print("\nEnter student name to search:"); // Step 11
  String searchName = stdin.readLineSync()!;
  var foundStudent = students.firstWhere(
    (s) => s["name"].toString().toLowerCase() == searchName.toLowerCase(),
    orElse: () => {"id": null, "name": "Not Found", "marks": null},
  );
  print("Search result: $foundStudent"); // Step 11
}
