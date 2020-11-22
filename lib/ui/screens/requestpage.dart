import 'package:flutter/material.dart';
import 'package:swipeup/ui/screens/profile.dart';

class Requestpage extends StatefulWidget {
  @override
  _RequestpageState createState() => _RequestpageState();
}

class _RequestpageState extends State<Requestpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(52, 58, 64, 1),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromRGBO(52, 58, 64, 1),
        leading: IconButton(
          icon: Icon(
            Icons.add,
          ),
          onPressed: () {},
        ),
        centerTitle: true,
        title: IconButton(
          icon: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.home,
            ),
          ),
          onPressed: () {},
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Requestpage();
                      },
                    ),
                  );
                },
                child: Icon(
                  Icons.people,
                ),
              ),
              onPressed: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Profilepage();
                    },
                  ),
                );
              },
              child: CircleAvatar(
                backgroundImage:
                    NetworkImage('https://picsum.photos/250?image=9'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
