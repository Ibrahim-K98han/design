import 'package:flutter/cupertino.dart';

import '../../model/course.dart';
import '../card/recent_course_card.dart';

class RecentCouseList extends StatefulWidget {
  const RecentCouseList({Key? key}) : super(key: key);

  @override
  State<RecentCouseList> createState() => _RecentCouseListState();
}

class _RecentCouseListState extends State<RecentCouseList> {
  List<Container> indicators = [];
  int currentPage = 0;

  updateIndicators() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: recentCourses.map((course) {
          var index = recentCourses.indexOf(course);
          return Container(
            width: 7,
            height: 7,
            margin: EdgeInsets.symmetric(horizontal: 6),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color:
              currentPage == index ? Color(0xFF0971FE) : Color(0xFFA6AEBD),
            ),
          );
        }).toList());
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 320,
          width: double.infinity,
          child: PageView.builder(
            itemBuilder: (context, index) {
              return Opacity(
                opacity: currentPage == index ? 1.0: 0.5,
                child: RecentCourseCard(
                  course: recentCourses[index],
                ),
              );
            },
            itemCount: recentCourses.length,
            controller: PageController(initialPage: 0, viewportFraction: 0.70),
            onPageChanged: (index){
              setState(() {
                currentPage = index;
              });
            },
          ),
        ),
        updateIndicators(),
      ],
    );
  }
}