
import 'package:flutter/cupertino.dart';

import '../../constants.dart';
import '../../model/course.dart';

class ExploreCourseCard extends StatelessWidget {
  ExploreCourseCard({required this.course});
  final Course course;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(41),
        child: Container(
          height: 120,
          width: 280,
          decoration: BoxDecoration(gradient: course.background),
          child: Padding(
            padding: EdgeInsets.only(left: 32),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        course.courseSubtitle.toString(),
                        style: kCardSubtitleStyle,
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        course.courseTitle.toString(),
                        style: kCardTitleStyle,
                      )
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset(
                      'asset/illustrations/${course.illustration}',
                      fit: BoxFit.cover,
                      height: 100,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}