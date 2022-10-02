import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];
  //reference to our box
  final _myBox = Hive.box("mybox");

  //it will run when its the first opening of the app
  void createInitialData() {
    toDoList = [
      ["Learn Flutter", false],
      ["Learn Dart", false],
    ];
  }

  //for loading the data from the database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  //FOR UPDATING THE DATABASE
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
