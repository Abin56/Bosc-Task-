import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:noteapp/view/home/home_screen.dart';
  final _titlecontroller = TextEditingController();
final _descriptioncontroller = TextEditingController();
final _notescontroller = TextEditingController();


getBottomSheet({required context }) {

  return showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (ctx) {
        // ignore: sized_box_for_whitespace
        return Container(
          height: 1000.h,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 50.h,
                ),
                TextField(
                  controller: _titlecontroller,
                  decoration: const InputDecoration(
                      border: InputBorder.none, hintText: 'Title'),
                  style: const TextStyle(
                      fontSize: 28.0, fontWeight: FontWeight.bold),
                ),
                TextField(
                  controller: _descriptioncontroller,
                  decoration: const InputDecoration(
                      border: InputBorder.none, hintText: 'Description'),
                  style: const TextStyle(
                      fontSize: 28.0, fontWeight: FontWeight.bold),
                ),
                Expanded(
                  child: TextField(
                    controller: _notescontroller,
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    decoration: const InputDecoration(
                        border: InputBorder.none, hintText: 'Your Notes\n(Note:>>The card will generate the length of title)'),
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 40, bottom: 0),
                      child: SizedBox(
                        width: 240.w,
                        height: 60.h,
                        child: ElevatedButton.icon(
                          onPressed: () {
                            log('GOing');
                          Get.offAll(ScreenHome(title: _titlecontroller.text, descr: _descriptioncontroller.text, notes: _notescontroller.text));
                          
                    
                          },
                          icon: const Icon(Icons.add),
                          label: Text(
                            'Add Note',
                            style: GoogleFonts.montserrat(),
                          ),
                          style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all(Colors.white),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.black),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    side: const BorderSide(
                                        color: Color.fromARGB(
                                            255, 25, 205, 202)))),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        );
      });
}

