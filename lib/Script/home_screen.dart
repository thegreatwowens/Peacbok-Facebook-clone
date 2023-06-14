import 'package:Team_Asia_App/Script/friends_feed.dart';
import 'package:Team_Asia_App/Script/home_feed.dart';
import 'package:Team_Asia_App/Script/notification_feed.dart';
import 'package:Team_Asia_App/Script/profile_feed.dart';
import 'package:Team_Asia_App/Script/videos_feed.dart';
import 'package:flutter/material.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            foregroundColor: Colors.blueAccent,
            title: Text("Peacebok"),
            actions: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.add),
                  color: Colors.black,
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: Colors.black,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.message_rounded,
                    color: Colors.black,
                  ))
            ],
            bottom: TabBar(
              indicatorColor: Colors.blueAccent,
              unselectedLabelColor: Colors.black54,
              labelColor: Colors.blueAccent,
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.home,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.group,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.ondemand_video,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.notifications,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.person,
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              buildpage(1),
              buildpage(2),
              buildpage(3),
              buildpage(4),
              buildpage(5)
            ],
          )),
    );
  }

  Widget buildpage(int value) {
    var returnvalue;
    switch (value) {
      case 1:
        returnvalue = HomeFeed();
      case 2:
        returnvalue = FriendFeed();
      case 3:
        returnvalue = VideoFeed();
      case 4:
        returnvalue = NotificationFeed();
      case 5:
        returnvalue = ProfileFeed();
      default:
        break;
    }
    return returnvalue;
  }
}
