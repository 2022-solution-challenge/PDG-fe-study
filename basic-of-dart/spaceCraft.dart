/// Dart Classes


class SpaceCraft {
  //field
  String name;
  DateTime? launchDate;

  int? get launchYear => launchDate?.year;

  // Constructor, with syntactic sugar for assignment to members.
  SpaceCraft(this.name, this.launchDate){
    //Initialize the member values
  }

  // Named constructor that forwards to the default one.
  SpaceCraft.unlaunched(String name) : this(name, null);


  // method part of the class
  void describe() {
    print('Spacecraft: $name');
    // Type promotion doesn't work on getters.
    var launchDate = this.launchDate;
    if (launchDate != null) {
      int years = DateTime.now().difference(launchDate).inDays ~/ 365;
      print('Launched: $launchYear ($years years ago)');
    } else {
      print('Unlaunched');
    }
  }
}