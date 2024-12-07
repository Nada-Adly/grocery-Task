import 'dart:io';

void main() {
  int choice;
  List<String> products = [
    'rice',
    'meet',
    'chips',
  ];
  print(products);
  for (; ; ) {
    print("Enter number according to this menue :");
    print("1. Add Item");
    print("2. Remove Item");
    print("3. View List");
    print("4. searchfor Item");
    print("5. Exit");
    choice = int.parse(stdin.readLineSync()!);
    //Add item to list
    if (choice == 1) {
      print("Enter item name to add");
      String newItem = stdin.readLineSync()!;
      products.add(newItem);
      print(newItem + " successfully added");
      //remove item from list
    } else if (choice == 2) {
      print("Enter item name to remove");
      String removedItem = stdin.readLineSync()!;
      products.remove(removedItem);
      print(removedItem + "successfully removed");
      //view products menu
    } else if (choice == 3) {
      print("Products Menu:");
      products.forEach((product) {
        print(product);
      });
      // search for products
    } else if (choice == 4) {
      print("Enter item you want to serch for");
      String serchItem = stdin.readLineSync()!;
      int searchResult = products.indexOf(serchItem);
      if (searchResult >= 0) {
        print("Item is found");
      } else {
        print("Sorry item isn't found");
      }
    // exit from the program 
    } else if (choice == 5) {
      break;
    }
  }
}
