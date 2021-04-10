import 'package:Chatty/widgets/chat_tile.dart';
import 'package:flutter/material.dart';
import 'package:Chatty/theme.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8FAFC),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(30),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(40),
                  ),
                ),
                child: Row(
                  children: <Widget>[
                    Image.asset(
                      "assets/images/group3.png",
                      height: 55,
                      width: 55,
                    ),
                    SizedBox(
                      width: 18,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Berlin Trip",
                          style: titleTextStyle,
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "240.171 Members",
                          style: subtitleTextStyle,
                        ),
                      ],
                    ),
                    Spacer(),
                    Container(
                      height: 44,
                      width: 44,
                      child: FloatingActionButton(
                        backgroundColor: greenColor,
                        onPressed: () {},
                        child: Icon(
                          Icons.call,
                          size: 24,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                width: double.infinity,
                child: Column(
                  children: <Widget>[
                    ChatTile(
                      imageUrl: "assets/images/friend1.png",
                      chat: "How are you guys?",
                      time: "4:30",
                      send: false,
                    ),
                    ChatTile(
                      imageUrl: "assets/images/friend3.png",
                      chat: "We should go somewhere",
                      time: "7:18",
                      send: false,
                    ),
                    ChatTile(
                      imageUrl: "assets/images/me.png",
                      chat:
                          "Thinking about how to deal\nwith this client from hell...",
                      time: "21:50",
                      send: true,
                    ),
                    ChatTile(
                      imageUrl: "assets/images/friend2.png",
                      chat: "Love you guys",
                      time: "10:21",
                      send: false,
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 22,
                      ),
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(
                          30,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Type Message",
                            style: subtitleTextStyle.copyWith(
                              fontSize: 16,
                            ),
                          ),
                          Container(
                            height: 34,
                            width: 34,
                            child: FloatingActionButton(
                              onPressed: () {},
                              backgroundColor: lightGreyColor,
                              child: Icon(
                                Icons.send,
                                size: 20,
                                color: greyColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
