class Pg23Model {
  final String title;
  final String? type;
  final String timestamp;

  Pg23Model({required this.title, required this.timestamp, this.type});
}

class Pg23ModelItems {
  static List<Pg23Model> loadItems(context) {
    return <Pg23Model>[
      Pg23Model(
        title: "Team introduction",
        type: "Event Type",
        timestamp: "9:30",
      ),
      Pg23Model(
        title: "Gather feedback from usability tests",
        type: "Event Type",
        timestamp: "10:30",
      ),
      Pg23Model(
        title: "Short Break",
        timestamp: "12:00",
      ),
      Pg23Model(
        title: "Design internal team meeting",
        type: "Event Type",
        timestamp: "1:30",
      ),
      Pg23Model(
        title: "Code export to dev",
        type: "Event Type",
        timestamp: "3:30",
      ),
      Pg23Model(
        title: "Finalize all tasks",
        type: "Event Type",
        timestamp: "5:00",
      ),
      Pg23Model(
        title: "Team introduction",
        type: "Event Type",
        timestamp: "7:00",
      ),
      Pg23Model(
        title: "Gather feedback from usability tests",
        type: "Event Type",
        timestamp: "8:30",
      ),
      Pg23Model(
        title: "Short Break",
        timestamp: "9:00",
      ),
      Pg23Model(
        title: "Design internal team meeting",
        type: "Event Type",
        timestamp: "9:30",
      ),
      Pg23Model(
        title: "Code export to dev",
        type: "Event Type",
        timestamp: "9:40",
      ),
      Pg23Model(
        title: "Finalize all tasks",
        type: "Event Type",
        timestamp: "8:50",
      ),
    ];
  }
}
