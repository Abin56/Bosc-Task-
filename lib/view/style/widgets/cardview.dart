import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:noteapp/view/style/appstyle.dart';

class CardView extends StatelessWidget {
  int index;
  final title;
  final descr;
  final notes;

  var colorindex;
  CardView(
      {Key? key,
      required this.index,
      required this.colorindex,
      required this.title,
      required this.descr,
      required this.notes})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Container(
          height: 500,
          width: double.infinity,
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
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "Note:${index + 1}",
                style: const TextStyle(
                    overflow: TextOverflow.ellipsis,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              
              Text(
                "Notes:",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
               Text(
                notes,
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
