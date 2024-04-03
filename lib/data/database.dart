import 'package:hive_flutter/adapters.dart';

class ToDoDatabase {
  //to do list
  List toDoList = [];

  //reference hive box
  final _myBox = Hive.box('mybox');

  //run this method if first time ever opening app
  void createInitialData() {
    toDoList = [
      ["Create first task", false],
      ["Complete first task", false]
    ];
  }

  //load data from database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  //update database
  void updateDatabase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
