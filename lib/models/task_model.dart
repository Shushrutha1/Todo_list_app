import 'package:hive/hive.dart';

part 'task_model.g.dart'; // Hive will generate this file

@HiveType(typeId: 0)
class Task extends HiveObject {
  @HiveField(0)
  String title;

  @HiveField(1)
  String description;

  @HiveField(2)
  DateTime dueDate;

  @HiveField(3)
  bool isCompleted;

  @HiveField(4)
  String priority; // 'High', 'Medium', 'Low'

  Task({
    required this.title,
    required this.description,
    required this.dueDate,
    this.isCompleted = false,
    this.priority = 'Medium',
  });
}
