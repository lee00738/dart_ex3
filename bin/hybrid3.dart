import 'dart:convert';
import 'package:hybrid3/hybrid3.dart';

void main(List<String> arguments) {
  
  String jsonString = '''
    [
      {"first":"Steve", "last":"Griffith", "email":"griffis@algonquincollege.com"},
      {"first":"Adesh", "last":"Shah", "email":"shaha@algonquincollege.com"},
      {"first":"Tony", "last":"Davidson", "email":"davidst@algonquincollege.com"},
      {"first":"Adam", "last":"Robillard", "email":"robilla@algonquincollege.com"}
    ]
    ''';
  

  List data = json.decode(jsonString); //json.decode returns dynamic
  
  List<Map<String, String>> peopleList = data
    .map((item) => Map<String, String>.from(item))
    .toList();

  // List<Map<String, String>> data = (json.decode(jsonString))
  //  .map((item) => Map<String, String>.from(item))
  //  .toList();

  
  Students s = Students(peopleList);
  print("\ns.people--------------------------------");
  s.output();

  print("added-------------------------------------");
  s.plus({"first":"z"});
  s.plus({"first":"A"});
  s.plus({"first":"a"});
  s.output();

  print("sorted people-----------------------------");
  print(s.sort("first"));

  print("removed-----------------------------------");
  s.remove("Tony");
  s.output();

  print("output------------------------------------");
  s.output();
}


