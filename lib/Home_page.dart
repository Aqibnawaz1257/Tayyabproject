import 'package:flutter/material.dart';


class Home_page extends StatefulWidget {
  const Home_page({Key? key}) : super(key: key);

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(41, 218, 204,1),
        title: Text("Water Testing App"),
        centerTitle: true,
      ),

      drawer: Drawer(),
      body: Column(
        children: <Widget>[

        ],
      ),
    );
  }
}
