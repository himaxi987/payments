import 'package:flutter/material.dart';

class future extends StatefulWidget {
  const future({Key? key}) : super(key: key);

  @override
  State<future> createState() => _futureState();
}

class _futureState extends State<future> {

  test() async {
    await Future.delayed(Duration(seconds: 5));
    return 10;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Future builder"),),
      body: FutureBuilder(
        future: test(),
        builder: (context, snapshot) {
            print(snapshot.connectionState);
            if(snapshot.connectionState==ConnectionState.done){
              return Container(child: Text("Hello, this is testing"),);
            }
            else
              {
                return CircularProgressIndicator();
              }
      },),
    );
  }
}
