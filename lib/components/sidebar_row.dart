import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/sidebar.dart';

class SidebarRow extends StatelessWidget {
  SidebarRow({this.item});

  final SidebarItem? item;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            width: 42,
            height: 42,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                gradient: item!.background),
            child: item!.icon),
        SizedBox(
          width: 12,
        ),
        Container(
          child: Text(
            item!.title,
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w800, color: Colors.black),
          ),
        )
      ],
    );
  }
}