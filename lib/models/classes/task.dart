import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class Task {
  List<Task>? tasks;
  String? note;
  DateTime? timeToBeCompleted;
  bool completed;
  String? repeats;
  DateTime? deadline;
  DateTime? reminder;
  String taskId;
  String title;

  Task(this.title, this.completed, this.taskId, this.note);
}
