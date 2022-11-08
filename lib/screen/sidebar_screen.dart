
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/sidebar_row.dart';
import '../constants.dart';
import '../model/sidebar.dart';

class SidebarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: kSidebarBackgroundColor,
        borderRadius: BorderRadius.only(topRight: Radius.circular(34.0)),
      ),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width * 0.85,
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage('asset/images/profile.jpg'),
                  radius: 21,
                ),
                const SizedBox(width: 15,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ibrahim Khan',
                      style: kHeadlineLabelStyle,
                    ),
                    const SizedBox(height: 4,),
                    Text(
                      'License ands on 21 jan, 2022',
                      style: kSearchPlaceholderStyle,
                    )
                  ],
                )
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.08,),
            SidebarRow(
              item: sidebarItem[0],
            ),
            SizedBox(height: 32,),
            SidebarRow(
              item: sidebarItem[1],
            ),
            SizedBox(height: 32,),
            SidebarRow(
              item: sidebarItem[2],
            ),
            SizedBox(height: 32,),
            SidebarRow(
              item: sidebarItem[3],
            ),
            SizedBox(height: 32,),
            Spacer(),
            Row(
              children: [
                Image.asset('asset/icons/icon-logout.png',width: 17.0,),
                SizedBox(width: 12,),
                Text('Log Out',style: kSecondaryCalloutLabelStyle,)
              ],
            )
          ],
        ),
      ),
    );
  }
}