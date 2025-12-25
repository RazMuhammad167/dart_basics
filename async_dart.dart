import 'dart:async';

Future<void> main() async {
  print("This is dart async file, Task 1.4");

  // 1. Create Future<String> fetchUserData() with delayed response
  print("Fetching user data...");
  String data = await fetchUserData(); // Step 1
  print(data);

  // 3. Error handling with try-catch
  try {
    await fetchUserWithError(); // Step 3 (unused variable removed)
  } catch (e) {
    print("Error fetching user data: $e"); // Step 3
  }

  // 4 & 5. Multiple Future functions and Future.wait() for parallel execution
  print("\nFetching multiple resources...");
  List results = await Future.wait([
    fetchUserProfile(), // Step 4
    fetchUserDetails(), // Step 4
    fetchUserData(), // Step 4
  ]);

  // 4 & 5. Using forEach() to print results
  results.forEach((r) => print(r)); // Step 5

  // 6 & 7. Stream<int> counterStream() and listening with await for
  print("\nListening to CountStream");
  await for (int value in countStream(5)) {
    // Step 7
    print("Stream value: $value");
  }

  // 8. Handling stream errors
  print("\nListening to error stream:");
  try {
    await for (int value in errorStream()) {
      // Step 8
      print(value);
    }
  } catch (e) {
    print("Stream error caught: $e"); // Step 8
  }

  // 9. StreamController manually
  print("\nStream Controller Demo");
  streamControllerDemo(); // Step 9

  // 10. Stream transformation demonstration
  print("\nStream Transformation Demo");
  await streamTransformationDemo(); // Step 10
}

// 1. Future<String> fetchUserData() with delayed response
Future<String> fetchUserData() async {
  await Future.delayed(Duration(seconds: 2));
  return "User data fetched successfully!!!";
}

// 3. Future function that throws error for try-catch
Future<String> fetchUserWithError() async {
  await Future.delayed(Duration(seconds: 1));
  throw Exception("Failed to fetch user data");
}

// 4. Multiple Future functions
Future<String> fetchUserProfile() async {
  await Future.delayed(Duration(seconds: 2));
  return "User profile data";
}

Future<String> fetchUserDetails() async {
  await Future.delayed(Duration(seconds: 1));
  return "User detailed data";
}

// 6. Stream<int> counterStream()
Stream<int> countStream(int to) async* {
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

// 8. Stream that can throw error
Stream<int> errorStream() async* {
  yield 1;
  yield 2;
  throw Exception("Stream error occurred");
}

// 9. StreamController demonstration
void streamControllerDemo() {
  StreamController<int> controller = StreamController<int>();

  controller.stream.listen(
    (data) => print("StreamController data: $data"),
    onError: (e) => print("StreamController error: $e"),
    onDone: () => print("StreamController closed"),
  );

  controller.add(10);
  controller.add(20);
  controller.add(30);

  controller.close();
}

// 10. Stream transformation demonstration
Future<void> streamTransformationDemo() async {
  Stream<int> numbers = Stream.fromIterable([1, 2, 3, 4, 5]);

  Stream<int> squared = numbers.map((n) => n * n);

  await for (int value in squared) {
    print("Squared value: $value");
  }
}
