class Task {
  final String title;
  final String description;
  bool isCompleted;

  Task({
    required this.title,
    required this.description,
    required this.isCompleted,
  });

  void isDone() {
    isCompleted = !isCompleted;
  }
}