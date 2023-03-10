import 'package:flutter/material.dart';

import '../custom_widgets/note_widget.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'HomeScreen';

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: size.height * 0.2 ,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text('NotePad', style: TextStyle(
          fontWeight: FontWeight.w300,
          fontSize: 38,
          color: Colors.black
        ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: Column(
          children: [
            Container(
              height: size.height * 0.05,
              width: size.width,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(25)
              ),
              child: Row(
                children: [
                  IconButton(onPressed: (){}, icon: const Icon(Icons.search_sharp, size: 26,color: Colors.grey,)),
                  const Text('search notes', style: TextStyle(
                    fontSize: 18, color: Colors.grey
                  ),),
                ],
              ),
            ),
            SizedBox(height: size.height * 0.07,),
            NoteWidget(title: "Today's grocery List",time:"March 7, 2023 9:50 PM" ,color: 0xff82FFB0),
            NoteWidget(title: "Rich dad Poor dad quotes",time:"March 7, 2023 9:50 PM" ,color: 0xffFFFB82),
          ],
        ),
      ),
      floatingActionButton:FloatingActionButton(
        onPressed: (){},
        backgroundColor: const Color(0xffFEDE3F),
        child: const Icon(Icons.add_outlined, size: 46,color: Colors.black,),
      ) ,
    );
  }
}