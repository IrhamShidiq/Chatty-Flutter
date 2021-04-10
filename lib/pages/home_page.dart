import 'package:Chatty/widgets/friend_tile.dart';
import 'package:Chatty/widgets/group_tile.dart';
import 'chat_page.dart';
import 'package:flutter/material.dart';
import 'package:Chatty/theme.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundBlue,
      floatingActionButton: FloatingActionButton(
        backgroundColor: greenColor,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ChatPage(),
            ),
          );
        },
        child: Icon(
          Icons.add,
          size: 36,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 40,
                ),
                Image.asset(
                  'assets/images/profile.png',
                  height: 100,
                  width: 100,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Jean Cheverlyn",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: whiteColor,
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  "Travel Freelancer",
                  style: subtitleTextStyle.copyWith(
                    fontSize: 16,
                    color: lightBlueColor,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  padding: EdgeInsets.all(defaultMargin),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Friends",
                        style: titleTextStyle,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      FriendTile(
                        imageUrl: "assets/images/friend1.png",
                        name: "Irham",
                        message: "Sorry, you’re not my ty...",
                        time: "Now",
                        unread: false,
                      ),
                      FriendTile(
                        imageUrl: "assets/images/friend2.png",
                        name: "Sarah",
                        message: "I saw it clearly and mig...",
                        time: "2:30",
                        unread: true,
                      ),
                      FriendTile(
                        imageUrl: "assets/images/friend3.png",
                        name: "Naira",
                        message: "Thank you for the drink...",
                        time: "19:45",
                        unread: false,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Groups",
                        style: titleTextStyle,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      GroupTile(
                        imageUrl: "assets/images/group1.png",
                        name: "Jakarta Fanfest",
                        message: "Why does everyone ca...",
                        time: "14:15",
                        unread: false,
                      ),
                      GroupTile(
                        imageUrl: "assets/images/group2.png",
                        name: "Antman Club",
                        message: "Here here we can go...",
                        time: "08:30",
                        unread: true,
                      ),
                      GroupTile(
                        imageUrl: "assets/images/group3.png",
                        name: "Berlin Trip",
                        message: "The car which does not...",
                        time: "11:11",
                        unread: true,
                      ),
                      SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
