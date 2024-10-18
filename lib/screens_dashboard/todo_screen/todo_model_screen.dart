class Todo{
  String title;
  String time;
  String text;
  bool isCompleted=false;
  Todo({
    required this.title,
    required this.time,
    required this.text,
    this.isCompleted=false,
});
}