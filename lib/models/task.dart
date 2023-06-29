import 'package:daily_routine_app/models/category.dart';
import 'package:daily_routine_app/models/importance.dart';
import 'package:daily_routine_app/models/status.dart';

class Task {
  final int id;
  final String title;
  final String description;
  final String initialDate;
  final String expiredDate;
  final TaskCategory category;
  final TaskImportance importance;
  final TaskStatus status;

  Task({
    required this.id,
    required this.title,
    required this.description,
    required this.initialDate,
    required this.expiredDate,
    required this.category,
    required this.importance,
    required this.status
  });

  Task copyWith({
    int? id,
    String? title,
    String? description,
    String? initialDate,
    String? expiredDate,
    TaskCategory? category,
    TaskImportance? importance,
    TaskStatus? status,
  }){
    return Task(
      id: id??this.id,
      title:  title??this.title,
      description: description??this.description,
      initialDate:  initialDate??this.initialDate,
      expiredDate:  expiredDate??this.expiredDate,
      category:  category??this.category,
      importance:  importance??this.importance,
      status:  status??this.status
    );

  }
}
