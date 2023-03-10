import 'package:flutter/material.dart';

class NoteWidget extends StatelessWidget {
  String title;
  String time;
  int color;


  NoteWidget({required this.title, required this.time, required this.color});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(bottom: 20 ),
      padding: const EdgeInsets.all(20),
      width: size.width,
      height: size.height * 0.1,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color:Color(color)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: const TextStyle(
              fontSize: 18
          ),),
          Text(time, style: const TextStyle(
              fontSize: 14
          ),),
        ],
      ),
    );
  }
}
