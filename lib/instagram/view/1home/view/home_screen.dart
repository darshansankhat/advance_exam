import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Instagram",style: TextStyle(fontSize: 24),),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border,size: 25,)),
          IconButton(onPressed: () {}, icon: Icon(Icons.message_outlined,size: 25)),
        ],
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Text("HomeScreen",style: TextStyle(color: Colors.white,fontSize: 25),),
      ),
    );
  }
}
