import 'package:flutter/material.dart';
import 'package:flutter_project/ResposiveFolder/Constants.dart';
import 'package:flutter_project/ResposiveFolder/my_box.dart';

import 'my_tile.dart';

class MobilScafold extends StatefulWidget {
  const MobilScafold({Key? key}) : super(key: key);

  @override
  State<MobilScafold> createState() => _MobilScafoldState();
}

class _MobilScafoldState extends State<MobilScafold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myBackgroundColor,
      appBar: myAppBar,
      drawer: myDrawer,
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
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
    );
  }
}
