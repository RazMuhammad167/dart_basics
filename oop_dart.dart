void main() {
  print("This is dart oop file, Task 1.3");

  // 1. Create User and Admin objects (using new names)
  User user = User("Raz", "raz@example.com"); // Step 1
  Admin admin = Admin("Ali", "ali@example.com"); // Step 1

  // 2. Display user and admin info
  print("User Name: ${user.name}"); // Step 2
  print(admin); // Step 2

  // 3. Update user name using setter
  user.setName("Raz Ali"); // Step 3
  print("Updated User Name: ${user.name}"); // Step 3

  // 4 & 5. Abstract class and polymorphism
  Animal dog = Dog(); // Step 4
  Animal cat = Cat(); // Step 4

  dog.makeSound(); // Step 5
  cat.makeSound(); // Step 5

  // 6. Create Products and ShoppingCart
  Product p1 = Product("Laptop", 120000); // Step 6
  Product p2 = Product("Mouse", 1500); // Step 6
  Product p3 = Product("Keyboard", 3500); // Step 6
  ShoppingCart cart = ShoppingCart(); // Step 6

  // 7. Add products to cart and calculate total
  cart.addProduct(p1); // Step 7
  print("Total cart price: ${cart.calculateTotal()}"); // Step 7

  cart.addProduct(p2); // Step 7
  cart.addProduct(p3); // Step 7
  print("Total cart price: ${cart.calculateTotal()}"); // Step 7

  // 8. Remove product and recalculate
  cart.removeProduct(p3); // Step 8
  print(
    "Total cart price after removing keyboard: ${cart.calculateTotal()}",
  ); // Step 8
}

// 1. User class with private variables, constructors, getters/setters
class User {
  String _name;
  String _email;

  User(this._name, this._email); // default constructor
  User.withDetails(String name, String email)
    : _name = name,
      _email = email; // named constructor

  String get name => _name; // getter
  String get email => _email; // getter

  String setName(String name) {
    _name = name; // setter
    return _name;
  }

  String setEmail(String email) {
    _email = email; // setter
    return _email;
  }
}

// 2. Admin class extending User (inheritance + polymorphism)
class Admin extends User {
  Admin(String name, String email) : super(name, email);

  @override
  String toString() {
    return "Admin[name: $name, email: $email]";
  }
}

// 3. Abstract class Animal
abstract class Animal {
  void makeSound(); // abstract method
}

// 4. Dog class
class Dog extends Animal {
  @override
  void makeSound() {
    print("Dog barks");
  }
}

// 5. Cat class
class Cat extends Animal {
  @override
  void makeSound() {
    print("Cat meows");
  }
}

// 6. Product class
class Product {
  String name;
  double price;

  Product(this.name, this.price);
}

// 7. ShoppingCart class
class ShoppingCart {
  List<Product> _products = [];

  void addProduct(Product product) {
    _products.add(product);
  }

  void removeProduct(Product product) {
    _products.remove(product);
  }

  double calculateTotal() {
    return _products.fold(0, (sum, item) => sum + item.price);
  }
}
