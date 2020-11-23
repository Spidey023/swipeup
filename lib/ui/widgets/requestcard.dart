import 'package:flutter/material.dart';

class Requestcard extends StatefulWidget {
  @override
  _RequestcardState createState() => _RequestcardState();
}

class _RequestcardState extends State<Requestcard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 7,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 100,
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(''),
                    radius: 30,
                  ),
                  VerticalDivider(
                    color: Colors.white,
                  ),
                  Text(
                    "Raghavi Sarathy",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  FlatButton(
                      onPressed: () {},
                      child: Text("Accept",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 12,
                          )))
                ],
              ),
            );
          }),
    );
  }
}
