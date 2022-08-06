import 'package:flutter/material.dart';

class tab extends StatefulWidget {
  const tab({Key? key}) : super(key: key);

  @override
  State<tab> createState() => _tabState();
}

class _tabState extends State<tab> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
            appBar: AppBar(
              title: Text("WhatsApp"),
              bottom: TabBar(
                tabs: [
                  Tab(
                    icon: Icon(Icons.search),
                  ),
                  Tab(
                    text: "one",
                  ),
                  Tab(
                    text: "two",
                  ),
                  Tab(
                    text: "three",
                  )
                ],
              ),
            ),
            body: Center(
              child: TabBarView(children: [
                Text("zero"),
                Text("one"),
                Text("two"),
                Text("three")
              ]),
            )));
  }
}
