// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import 'package:todo_list_app/utils/my_buttons.dart';

// ignore: must_be_immutable
class DialogBox extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  DialogBox({
    Key? key,
    required this.onSave,
    required this.onCancel,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      insetPadding: const EdgeInsets.all(22),
      backgroundColor: Colors.white,
      content: SizedBox(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //user input for adding new tas
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(22)),
                hintText: "Add a new Task",
                hintStyle: const TextStyle(color: Colors.green),
                focusColor: Colors.black,
              ),
            ),
            // buttons(save and cancel)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                //save button
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: MyButton(
                    text: "Save",
                    onPressed: onSave,
                  ),
                ),

                const SizedBox(
                  width: 5,
                ),

                //cancel button

                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: MyButton(text: "Cancel", onPressed: onCancel),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
