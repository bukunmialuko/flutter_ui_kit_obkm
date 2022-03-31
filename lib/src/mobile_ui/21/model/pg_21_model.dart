class Pg21Model {
  final String title;
  final String duration;

  Pg21Model({required this.title, required this.duration});
}

class Pg21ModelItems {
  static List<Pg21Model> loadItems(context) {
    return <Pg21Model>[
      Pg21Model(
        title: "Song title #1",
        duration: "3:04",
      ),
      Pg21Model(
        title: "Song title #2",
        duration: "3:34",
      ),
      Pg21Model(
        title: "Song title #3",
        duration: "4:13",
      ),
    ];
  }
}
