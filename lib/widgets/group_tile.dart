import 'package:flutter/material.dart';
import 'package:Chatty/theme.dart';

class GroupTile extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String message;
  final String time;
  final bool unread;

  GroupTile({this.imageUrl, this.name, this.message, this.time, this.unread});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 16,
      ),
      child: Row(
        children: <Widget>[
          Image.asset(
            imageUrl,
            height: 55,
            width: 55,
          ),
          SizedBox(
            width: 16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                name,
                style: titleTextStyle,
              ),
              Text(
                message,
                style: unread
                    ? subtitleTextStyle.copyWith(
                        fontWeight: FontWeight.w400,
                        color: darkblueColor,
                      )
                    : subtitleTextStyle,
              ),
            ],
          ),
          Spacer(),
          Text(
            time,
            style: subtitleTextStyle,
          ),
        ],
      ),
    );
  }
}
