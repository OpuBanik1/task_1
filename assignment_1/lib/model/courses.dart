import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CourseList {
  IconData icon;
  String title;
  double time;

  CourseList(this.icon, this.title, this.time);

  static List<CourseList> avilableCourse = [
    CourseList(Icons.play_circle_outline, 'Ideation & validations', 04.30),
    CourseList(Icons.play_circle_outline, 'Design Sprint', 03.20),
    CourseList(Icons.play_circle_outline, 'Usability testig user', 05.16)
  ];
}
