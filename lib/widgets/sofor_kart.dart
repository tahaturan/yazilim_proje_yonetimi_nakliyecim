import 'package:flutter/material.dart';

class MyCard extends StatefulWidget {
  String title;
  String subTitle;
  Widget durumIcon;
  MyCard(
      {Key? key,
      required this.title,
      required this.subTitle,
      required this.durumIcon})
      : super(key: key);

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          color: Colors.cyan[200],
          shadowColor: Colors.red[300],
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          margin: const EdgeInsets.only(left: 10, right: 10, top: 7),
          child: ListTile(
            title: Text(widget.title),
            subtitle: Text(widget.subTitle),
            leading: const CircleAvatar(child: Icon(Icons.message_sharp)),
            trailing: widget.durumIcon,
            iconColor: Colors.teal,
          ),
        ),
        Divider(
          color: Colors.blueGrey[300],
          thickness: 2,
          indent: 60,
          endIndent: 60,
        )
      ],
    );
  }
}
