import 'dart:io';
void main() {
  List<String> partyItems = [];
  bool isAppRunning = true;
  // Add the item to the PartyitemList
  // Print it out
  
  while(isAppRunning) {
  printMenu();
  String choice = stdin.readLineSync().toString();
  int? numb = int.tryParse(choice);

  // String item = stdin.readLineSync().toString();
  // partyItems.add(item);
  // print(partyItems);
  if (numb == 1) {
    print("You have selected 1, so which item would you like to add to your party?");
    String item = stdin.readLineSync().toString();
    partyItems.add(item);
    print("You have added $item to your partylist");

  } else if (numb == 2) {
    print("You have selected 2, so here is your partylist");
    print(partyItems);
    break;

  } else if (numb == 3) {
    print("You have selected 3 which means the program will now exit");
    isAppRunning = false;
    break;
  }
  }

}

void printMenu() {
  print("What would you like to do?");
  print("1. add Items to your Party List");
  print("2. View Items in your party list");
  print("3. Exit Program");
}