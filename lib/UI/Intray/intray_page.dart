import 'package:flutter/material.dart';
import 'package:to_do_app/models/classes/task.dart';
import 'package:to_do_app/models/global.dart';
import 'package:to_do_app/models/widgets/intray_todo_widget.dart';

class IntrayPage extends StatefulWidget {
  @override
  State<IntrayPage> createState() => _IntrayPageState();
}

class _IntrayPageState extends State<IntrayPage> {
  List<Task> taskList = [];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: darkGreyColor,
      child: _buildReorderableListViewSimple(context),
    );
  }

  Widget _buildListTile(BuildContext context, Task item) {
    return ListTile(
      key: Key(item.taskId.toString()),
      title: IntrayToDo(
        keyValue: item.taskId.toString(),
        title: item.title,
        subTitle: item.note,
      ),
    );
  }

  Widget _buildReorderableListViewSimple(BuildContext context) {
    return Theme(
      data: ThemeData(canvasColor: Colors.transparent),
      child: ReorderableListView(
        padding: const EdgeInsets.only(top: 250.0),
        physics: const BouncingScrollPhysics(),
        children: getList()
            .map((Task item) => _buildListTile(context, item))
            .toList(),
        onReorder: (oldIndex, newIndex) {
          setState(() {
            Task item = taskList[oldIndex];
            taskList.remove(item);
            taskList.insert(newIndex, item);
          });
        },
      ),
    );
  }

  void _onReorder(int oldIndex, int newIndex) {
    setState(() {
      if (newIndex > oldIndex) {
        newIndex -= 1;
      }
      final Task item = taskList[oldIndex];
      taskList.remove(item);
      taskList.insert(newIndex, item);
    });
  }

  List<Task> getList() {
    for (int i = 0; i < 10; i++) {
      taskList.add(Task("This is task number " + i.toString(), false,
          i.toString(), "this is a quick note"));
    }
    return taskList;
  }
}
