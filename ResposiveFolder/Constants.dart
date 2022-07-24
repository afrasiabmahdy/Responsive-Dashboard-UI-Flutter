import 'package:flutter/material.dart';
var myAppBar = AppBar(
  backgroundColor: Colors.grey[600],
);
var myDrawer = Drawer(
  backgroundColor: Colors.grey[500],
  child: Column(
    children: const [
      DrawerHeader(
        child: Icon(
          Icons.dashboard,
          color: Colors.white,
          size: 30,
        ),
      ),
      ListTile(
        leading: Icon(
          Icons.home,
          color: Colors.white,
        ),
        title: Text(
          'D A S H B O A R D',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      ListTile(
        leading: Icon(
          Icons.chat,
          color: Colors.white,
        ),
        title: Text(
          'M E S S A G E',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      ListTile(
        leading: Icon(
          Icons.settings,
          color: Colors.white,
        ),
        title: Text(
          'S E T T I N G S',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      ListTile(
        leading: Icon(
          Icons.logout,
          color: Colors.white,
        ),
        title: Text(
          'L O G O U T',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),

    ],
  ),
);
var myBackgroundColor = Colors.grey[200];