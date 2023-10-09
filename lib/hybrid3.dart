

class Students{

  late List<Map<String, String>> people;

  Students(List<Map<String, String>> list){
    people = list;
  }

  List<Map<String, String>> sort(String field){
    if (people.isEmpty || !people.any((item) => item.containsKey(field))) { // .any: true if satisfies [test].
      throw ArgumentError('Field "$field" not found in any item.');
    }
    var tmp = people.toList();
    tmp.sort((a, b) => a[field]!.toLowerCase().compareTo(b[field]!.toLowerCase()));
    return tmp;
  }

  void plus(Map<String, String> person){
    people.add(person);
  }

  void output(){
    people.forEach(print);
  }

  void remove(String field){
    people.removeWhere((p) => p.containsValue(field));
  }

}


