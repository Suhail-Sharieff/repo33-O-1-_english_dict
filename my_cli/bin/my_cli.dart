import 'dart:io';
import 'dart:convert';

void main(List<String> args) async {
  var file = File('filtered.json');
  var content = await file.readAsString();
  var jsondata = jsonDecode(content);

  while (true) {
    var input = stdin.readLineSync();
    var data = jsondata[(input)!.toUpperCase()];
    if (data == null) {
      print("---------------------------------------------");
      print("No such word exixts");
      print("---------------------------------------------");
      continue;
    }
    var meanings = data['MEANINGS'];
    var antonyms = data['ANTONYMS'];
    var synonyms = data['SYNONYMS'];
print("---------------------------------------------");
    print('Meanings :$meanings');
    print('Antonyms :$antonyms');
    print('Synonym :$synonyms');
    print("---------------------------------------------");

  }
}
