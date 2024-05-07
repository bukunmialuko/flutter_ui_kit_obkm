class Pg22Model {
  final String title;
  final String category;
  final int? totalTask;
  final int? completedTask;
  final String duration;
  final bool isCompleted;

  Pg22Model({
    required this.title,
    required this.category,
    this.totalTask,
    this.completedTask,
    required this.duration,
    required this.isCompleted,
  });
}

class Pg22ModelItems {
  static List<Pg22Model> loadItems(context) {
    return <Pg22Model>[
      Pg22Model(
        title: "low fi wireframe",
        category: "screens",
        completedTask: 13,
        totalTask: 50,
        duration: "this week",
        isCompleted: false,
      ),
      Pg22Model(
        title: "usability tests write up",
        category: "pages",
        completedTask: 3,
        totalTask: 5,
        duration: "this week",
        isCompleted: false,
      ),
      Pg22Model(
        title: "Design meeting with PM",
        category: "screens",
        completedTask: 1,
        totalTask: 1,
        duration: "today",
        isCompleted: true,
      ),
      Pg22Model(
        title: "Catch up with dev",
        category: "one time task",
        duration: "this week",
        completedTask: 0,
        totalTask: 0,
        isCompleted: false,
      ),
    ];
  }
}
