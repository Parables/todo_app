import 'package:flutter/material.dart';

class Todo {
  String id = "";
  String title = "";
  String description = "";
  DateTime date = DateTime.now();
  TimeOfDay time = TimeOfDay.now();
  bool status = false;
}
