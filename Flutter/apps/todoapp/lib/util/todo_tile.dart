// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteFunction;

  ToDoTile({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
    required this.deleteFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 25.0),
      child: Slidable(
        endActionPane: ActionPane(
          motion: StretchMotion(),
          children: [
            SlidableAction(
              onPressed: deleteFunction,
              icon: Icons.delete,
              backgroundColor: Colors.black,
              borderRadius: BorderRadius.circular(5),
            )
          ],
        ),
        child: Container(
          padding: EdgeInsets.all(25),
          child: Row(
            children: [
              //checkbox
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Checkbox(
                  value: taskCompleted,
                  onChanged: onChanged,
                  // activeColor: Colors.black, for changing color of checkbox
                ),
              ),
              // task name
              Text(taskName,
                  style: TextStyle(
                    decoration: taskCompleted
                        ? TextDecoration.lineThrough
                        : TextDecoration.none,
                  )),
            ],
          ),
          decoration: BoxDecoration(
            color: Colors.deepPurple[200],
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
    );
  }
}
