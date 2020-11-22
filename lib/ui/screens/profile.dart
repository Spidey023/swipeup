import 'package:flutter/material.dart';

class Profilepage extends StatefulWidget {
  @override
  _ProfilepageState createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Divider(
            height: 30,
          ),
          Align(
            alignment: Alignment.center,
            child: InkWell(
              onTap: () {},
              child: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(''),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 70),
                child: Text(
                  "Raghavi Sarathy",
                  style: TextStyle(fontSize: 22),
                ),
              ),
              IconButton(
                  padding: EdgeInsets.only(left: 40),
                  icon: Icon(Icons.edit),
                  onPressed: () {}),
            ],
          ),
          Text(
            "Student",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      "8",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Divider(),
                    Text(
                      "Following",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Divider(),
                Column(
                  children: [
                    Text(
                      "8",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Divider(),
                    Text(
                      "Followers",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Divider(),
                Column(
                  children: [
                    Text(
                      "8",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Divider(),
                    Text(
                      "Posts",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ],
            ),
            height: 100,
            margin: EdgeInsets.all(30),
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(15)),
          ),
          DefaultTabController(
            length: 2,
            child: Column(
              children: [
                Container(
                  color: Colors.black,
                  child: TabBar(tabs: [
                    Tab(
                      text: "Phone",
                    ),
                    Tab(
                      text: "Videos",
                    ),
                  ]),
                ),
                Container(
                  color: Colors.grey,
                  height: MediaQuery.of(context).size.height - 500,
                  child: TabBarView(children: [
                    CustomScrollView(
                      slivers: [
                        SliverGrid(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2),
                          delegate: SliverChildListDelegate([
                            Container(),
                            Container(),
                            Container(),
                            Container(),
                          ]),
                        )
                      ],
                    )
                  ]),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
