import 'package:flutter/material.dart';

class Followingcard extends StatefulWidget {
  @override
  _FollowingcardState createState() => _FollowingcardState();
}

class _FollowingcardState extends State<Followingcard> {
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
                      child: Text("Unfollow",
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
