import 'package:design/constants.dart';
import 'package:design/model/course.dart';
import 'package:flutter/material.dart';

import 'components/card/recent_course_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: RecentCourseCard(
              course: recentCourses[2],
            ),
          ),
        ),
      ),
    );
  }
}

