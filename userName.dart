
// This function will change your full name into a username 
void main() {
  List<String> names = ["Gunnar-Geir=Helgason", 
  "Hjalti/Unnar-Gunnarsson", 
  "Herdis/Helga=Helgadóttir", 
  "Guðmundur/Þorsteinsson"];
  List<String> fixedNames = [];
  for (int i = 0; names.length > i; i++) {
    // replaceAll er notað til að breyta íslenskum stöfum í enska! og breyta táknum í bil
    String tempName = convertIcelandicToEnglish(names[i]);
    // split "bil" lætur nafn eins og gudmundur thorsteinsson verda ad tveimur strings i stad fyrir einn utaf bilinu sem var a milli
    List<String> tempListNames = tempName.split(" ");
    // String userName = tempListNames.join("") + tempListNames.last + tempName.substring(0,4);
    String userName = tempListNames.first.toLowerCase() + tempListNames.last.substring(0,3).toLowerCase();
    // String tempName = names[i].replaceAll("-", " ").replaceAll("=", " ").replaceAll("/", " ").replaceAll("ð", "d").replaceAll("Þ", "Th").replaceAll("í", "i").replaceAll("ó", "o"); sama dæmi en hitt er fallegra og betra
    print("${names[i]} breytist í $tempName");
    fixedNames.add(tempName);
    print("$tempName turns into a username which will be $userName");
    print("--------------------------");


  }

  for(String names in fixedNames) {
    print(names);
  }
 
}
 String convertIcelandicToEnglish(String input) {
  return input
      .replaceAll("ð", "d")
      .replaceAll("Ð", "D")
      .replaceAll("þ", "th")
      .replaceAll("Þ", "Th")
      .replaceAll("æ", "ae")
      .replaceAll("Æ", "Ae")
      .replaceAll("ö", "o")
      .replaceAll("Ö", "O")
      .replaceAll("ó", "o")
      .replaceAll("Ó", "O")
      .replaceAll("í", "i")
      .replaceAll("Í", "I")
      .replaceAll("é", "e")
      .replaceAll("É", "E")
      .replaceAll("á", "a")
      .replaceAll("Á", "A")
      .replaceAll("ú", "u")
      .replaceAll("Ú", "U")
      .replaceAll("ý", "y")
      .replaceAll("Ý", "Y")
      .replaceAll(" ", " ")
      .replaceAll("-", " ")
      .replaceAll("=", " ")
      .replaceAll("/", " "); // Leave spaces as they are
 }