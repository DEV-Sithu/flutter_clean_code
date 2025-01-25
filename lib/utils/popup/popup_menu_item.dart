import 'package:flutter/material.dart';

class MKPopUpMenuItem
{
  static PopupMenuItem buildPopupMenuItem(
      String title, IconData iconData, int position) {
    return PopupMenuItem(
      value: position,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            iconData,
          ),
          Text(title),
        ],
      ),
    );
  }

  static PopupMenuItem buildPopupMenuItemIcon(
      String title, IconData iconData, int position,Color color) {
    return PopupMenuItem(
      value: position,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            iconData,
            color: color,
          ),
          Text(title),
        ],
      ),
    );
  }
}