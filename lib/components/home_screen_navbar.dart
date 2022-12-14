
import 'package:design/components/searchfield_widget.dart';
import 'package:design/components/sidebar_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class HomeScreenNavBar extends StatelessWidget {

  HomeScreenNavBar({required this.triggerAnimation});
  final Function triggerAnimation;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SidebarButton(triggerAnimation: triggerAnimation,),
          const SearchFieldWidget(),
          const Icon(
            Icons.notification_important,
            color: kPrimaryLabelColor,
          ),
          const SizedBox(
            width: 16,
          ),
          const CircleAvatar(
            radius: 18,
            backgroundImage: AssetImage('asset/images/profile.jpg'),
          ),
        ],
      ),
    );
  }
}