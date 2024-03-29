// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, sized_box_for_whitespace, prefer_typing_uninitialized_variables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:todoapp/util/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;

  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.deepPurple[50],
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                // border: OutlineInputBorder(),
                hintText: "Add a new task",
              ),
            ),

            // Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // Save
                MyButton(
                  text: "Save",
                  onPressed: onSave,
                ),

                const SizedBox(
                  width: 5,
                ),

                // Cancel
                MyButton(
                  text: "Cancel",
                  onPressed: onCancel,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
