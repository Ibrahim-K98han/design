import 'package:design/constants.dart';
import 'package:design/screen/sidebar_screen.dart';
import 'package:flutter/material.dart';
import 'components/home_screen_navbar.dart';
import 'components/lists/explore_course_list.dart';
import 'components/lists/recent_course_list.dart';
import 'model/course.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin{

  late Animation<Offset> sidebarAnimation;
  late AnimationController sidebarAnimationController;

  @override
  void initState() {
    super.initState();
    sidebarAnimationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 250),
    );
    sidebarAnimation = Tween<Offset>(
      begin: Offset(-1,0),
      end: Offset(0,0),
    ).animate(
      CurvedAnimation(
        parent: sidebarAnimationController,
        curve: Curves.easeInOut
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: kBackgroundColor,
        child: Stack(
          children: [
            SafeArea(
              child: Column(
                children: [
                  HomeScreenNavBar(triggerAnimation: (){
                    sidebarAnimationController.forward();
                  },),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Recents',
                          style: kLargeTitleStyle,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          '23  Corses, more coming',
                          style: kSubtitleStyle,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const RecentCouseList(),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, top: 25, bottom: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Explore',
                          style: kTitle1Style,
                        )
                      ],
                    ),
                  ),
                  ExploreCourseList(),
                ],
              ),
            ),
            SlideTransition(
              position: sidebarAnimation,
              child: SafeArea(
                  child: SidebarScreen(),
                  bottom: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
