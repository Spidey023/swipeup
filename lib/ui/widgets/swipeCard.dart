import 'package:flutter/material.dart';

class SwipeCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 0, top: 10),
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 5,
            offset: Offset.zero,
          ),
        ],
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(
              height: 6,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 12,
                    top: 5,
                  ),
                  child: CircleAvatar(
                    backgroundImage:
                        NetworkImage('https://picsum.photos/250?image=9'),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 10),
                      child: Text(
                        "Raghavi Sarathy",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 10),
                      child: Text(
                        "student",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Text(
                  "Follow",
                  style: TextStyle(
                      color: Colors.blue[500],
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                IconButton(
                  icon: Icon(
                    Icons.add_circle_outline,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            Divider(),
            Container(
              height: MediaQuery.of(context).size.height * 0.6,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
                // border: Border.all(color: Colors.lightBlueAccent),
                image: DecorationImage(
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Align(
              alignment: Alignment(-0.8, 1),
              child: Flexible(
                child: Text(
                  "ur caption",
                  softWrap: true,
                  maxLines: 4,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FlatButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                  ),
                  label: Text(
                    "40 Likes",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                FlatButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.message),
                  label: Text(
                    "40 Comments",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                FlatButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.redo,
                    color: Colors.white,
                  ),
                  label: Text(
                    "Share",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
