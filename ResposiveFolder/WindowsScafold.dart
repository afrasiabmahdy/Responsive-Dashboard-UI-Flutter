import 'package:flutter/material.dart';
import 'package:flutter_project/ResposiveFolder/Constants.dart';
import 'package:flutter_project/main.dart';

import 'my_box.dart';
import 'my_tile.dart';

class WindowsScafold extends StatefulWidget {
  const WindowsScafold({Key? key}) : super(key: key);

  @override
  State<WindowsScafold> createState() => _WindowsScafoldState();
}

class _WindowsScafoldState extends State<WindowsScafold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myBackgroundColor,
      appBar: myAppBar,
      body: Row(
        children: [
          myDrawer,
          Expanded(
            flex: 3,
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 4,
                  child: SizedBox(
                    width: double.infinity,
                    child: GridView.builder(
                      itemCount: 4,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4),
                      itemBuilder: (context, index) {
                        return const MyBox();
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 20,
                    itemBuilder: (context, index) {
                      return const MyTile();
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.blue,

            ),
          ),
        ],
      ),
    );
  }
}
