import 'package:flutter/material.dart';

class FriendFeed extends StatefulWidget {
  const FriendFeed({super.key});

  @override
  State<FriendFeed> createState() => _FriendFeedState();
}

class _FriendFeedState extends State<FriendFeed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
              height: 50,
              width: double.infinity,
              child: Container(
                color: Colors.red,
                child: Row(
                  children: [
                    Text(
                      'Friends',
                      style: TextStyle(fontSize: 30, fontFamily: 'QuickSand'),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
