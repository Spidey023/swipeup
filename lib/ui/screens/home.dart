import 'package:flutter/material.dart';
import 'package:swipeup/ui/widgets/swipeCard.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(52, 58, 64, 1),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromRGBO(52, 58, 64, 1),
        leading: IconButton(
          icon: Icon(Icons.add,),
          onPressed: () {},
        ),
        centerTitle: true,
        title: IconButton(
          icon: Icon(Icons.home,),
          onPressed: () {},
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon: Icon(Icons.people,),
              onPressed: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage:
                  NetworkImage('https://picsum.photos/250?image=9'),
            ),
          ),
        ],
      ),
      body: Center(
            child: PageView.builder(
      controller: controller,
      scrollDirection: Axis.vertical,
      itemCount: 20,
      itemBuilder: (BuildContext context, int index) {
        return SwipeCard();
      },
            ),
          ),
    );
  }
}
