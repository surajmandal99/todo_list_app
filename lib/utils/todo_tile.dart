// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

// ignore: must_be_immutable
class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteFunction;
  ToDoTile({
    Key? key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
    required this.deleteFunction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
      child: Slidable(
        endActionPane: ActionPane(
          motion: const StretchMotion(),
          children: [
            SlidableAction(
              onPressed: deleteFunction,
              icon: Icons.delete,
              label: "Delete",
              backgroundColor: Colors.red,
              borderRadius: BorderRadius.circular(32),
            )
          ],
        ),
        child: Container(
          height: 90,
          padding: const EdgeInsets.all(23),
          decoration: BoxDecoration(
              color: Colors.yellow, borderRadius: BorderRadius.circular(32)),
          child: Row(
            children: [
              //checkbox
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Checkbox(
                  value: taskCompleted,
                  onChanged: onChanged,
                  activeColor: Colors.black,
                  focusColor: Colors.blue,
                  checkColor: Colors.grey[300],
                ),
              ),
              //new task name
              Text(taskName),
            ],
          ),
        ),
      ),
    );
  }
}
