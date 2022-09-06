import 'dart:math';

import 'package:flutter/material.dart';
import 'package:noteapp/view/home/widgets/get_bottomsheet.dart';
import 'package:noteapp/view/style/appstyle.dart';
import 'package:noteapp/view/style/widgets/card_note.dart';
var list =[

  
];

class ScreenHome extends StatelessWidget {
  const ScreenHome(
      {Key? key, required this.title, required this.descr, required this.notes})
      : super(key: key);
  final String title;
  final String descr;
  final String notes;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.mainColor,
      appBar: AppBar(
        elevation: 0.0,
        title: const Text('Bosc Notes'),
        centerTitle: true,
        backgroundColor: AppStyle.mainColor,
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 15,
                childAspectRatio: 1.2 / 1.4,
                shrinkWrap: true,
                children: List.generate(title.length, (index) {
                  return Builder(builder: (context) {
                    var rnd = Random();
                    var r = 1 + rnd.nextInt(5 - 1);
                    return GridContainer(
                        index: index,
                        colorindex: r,
                        title: title,
                        descr: descr,
                        notes: notes);
                  });
                }),
              ),
            )
          ]),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          getBottomSheet(context: context);
        },
        label: const Text("Add Note"),
        icon: const Icon(Icons.add),
      ),
    );
  }
}
