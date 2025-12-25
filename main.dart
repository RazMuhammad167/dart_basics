void main() {
  print("This is dart basics file");

  // 4. Demonstrate var, final, const
  var name = "Neuro App"; // Step 4
  print("Name is a variable with a value : $name");
  name = "Neuro Technologies"; // var can be changed

  final age = 20; // Step 4
  print("The age is final, meaning it can be set once at runtime: $age");

  const pi = 3.14; // Step 4
  print("Compile-time set constant: $pi");

  print("The name is changed : $name"); // Shows var can change

  // 5. Show int, double, String, bool
  int integer_count = 10; // Step 5
  double double_count = 10.01; // Step 5
  String course = "Flutter Batch 1"; // Step 5
  bool isBeginner = true; // Step 5

  print(integer_count);
  print(double_count);
  print(course);
  print(isBeginner);

  // 6. Implement if-else conditions
  if (integer_count <= 10) {
    // Step 6
    print("If condition true: integer_count <= 10");
  } else {
    print("If condition false: integer_count > 10");
  }

  // 7. For loop example
  for (int i = 1; i <= 5; i++) {
    // Step 7
    print("For loop: $i");
  }

  // 7. While loop example
  int j = 1;
  while (j <= 5) {
    // Step 7
    print("While loop: $j");
    j++;
  }

  // 8. Call sum function
  int s = sum(45, 45); // Step 8
  print("The sum of the two numbers is: $s");

  // 9. Call factorial function
  int f = fact(5); // Step 9
  print("The factorial of 5 is: $f");

  // 10. Call isPrime function
  bool pc = isprime(7); // Step 10
  print("Is the number 7 prime?: $pc");
} // main

// 8. Function: sum
int sum(int x, int y) {
  // Step 8
  int z = x + y;
  return z;
}

// 9. Function: factorial using recursion
int fact(int n) {
  // Step 9
  if (n <= 1) return 1;
  return n * fact(n - 1);
}

// 10. Function: prime check
bool isprime(int n) {
  // Step 10
  if (n <= 1) return false;
  for (int i = 2; i <= n / 2; i++) {
    if (n % i == 0) return false;
  }
  return true;
}
