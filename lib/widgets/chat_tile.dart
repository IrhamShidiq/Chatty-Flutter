import 'package:flutter/material.dart';
import 'package:Chatty/theme.dart';

class ChatTile extends StatelessWidget {
  final String imageUrl;
  final String chat;
  final String time;
  final bool send;

  ChatTile({this.imageUrl, this.chat, this.time, this.send});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 30,
      ),
      child: send
          ? Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 20,
                      ),
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16),
                          bottomLeft: Radius.circular(16),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            chat,
                            style: titleTextStyle.copyWith(
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            time,
                            style: subtitleTextStyle,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 14,
                ),
                Image.asset(
                  imageUrl,
                  height: 40,
                  width: 40,
                ),
              ],
            )
          : Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Image.asset(
                  imageUrl,
                  height: 40,
                  width: 40,
                ),
                SizedBox(
                  width: 14,
                ),
                Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 20,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xffEAEFF3),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16),
                          bottomRight: Radius.circular(16),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            chat,
                            style: titleTextStyle.copyWith(
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            time,
                            style: subtitleTextStyle,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
    );
  }
}
