void main() {
  List<String> myList = [];
  myList.add("Velkominn-i-NTV");
  myList.add("Bua til meeting");
  myList.add("share screen");
  myList.add("Kveikja a record");

  for(String listItem in myList) {
    print("Muna að: $listItem");
  }
  myList.add("Turn off the stream");
  myList.add("Læsa og slökkva");
  print("-------------------");
  
  // [4] er alltaf 5 i array thvi array byrjar alltaf a 0
  print(myList[4]);
  // for(String listItem in myList) {
  //   print(listItem);
  // }
}
//   List<int> myNumbers = [5885522, 112, 5812345];

//   for(int numb in myNumbers) {
//     print(numb);
//   } 
// }