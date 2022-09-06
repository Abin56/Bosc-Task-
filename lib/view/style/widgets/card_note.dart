import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:noteapp/view/style/appstyle.dart';
import 'package:noteapp/view/style/widgets/cardview.dart';

class GridContainer extends StatelessWidget {
  int index;
  final title;
  final descr;
  final notes;

  var colorindex;
  GridContainer(
      {Key? key,
      required this.index,
      required this.colorindex,
      required this.title,
      required this.descr,
      required this.notes})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.to(CardView(
          index: index,
          colorindex: colorindex,
          title: title,
          descr: descr,
          notes: notes)),
      child: Container(
        // height: .h,
        // width: 200.w,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: listcolors[colorindex].first.withOpacity(0.4),
              blurRadius: 8,
              spreadRadius: 2,
              offset: const Offset(4, 4),
            ),
          ],
          gradient: LinearGradient(
              colors: listcolors[colorindex],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight),
          borderRadius: const BorderRadius.all(
            Radius.circular(22),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                const Text(
                  "Note:",
                  style: const TextStyle(
                      overflow: TextOverflow.ellipsis,
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                Text(
                  ' ${index + 1}',
                  style: const TextStyle(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ],
            ),
            Row(
              children: [
                const Text(
                  "Title:",
                  style: TextStyle(
                      overflow: TextOverflow.ellipsis,
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                Text(
                  title,
                  style: const TextStyle(
                      color:  Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ],
            ),
            Row(
              children: [
                const Text(
                  "Desperction:",
                  style: TextStyle(
                      overflow: TextOverflow.ellipsis,
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
                Text(
                  descr,
                  style: const TextStyle(
                      overflow: TextOverflow.ellipsis,
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.bold,
                      fontSize: 13),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
