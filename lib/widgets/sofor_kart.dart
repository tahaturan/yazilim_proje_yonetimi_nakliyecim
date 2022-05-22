import 'package:flutter/material.dart';

class MyCard extends StatefulWidget {
  String title;
  String subTitle;
  Widget durumIcon;
  bool soforDurum;
  MyCard(
      {Key? key,
      required this.title,
      required this.subTitle,
      required this.durumIcon,
      required this.soforDurum})
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
            leading: CircleAvatar(
              child: IconButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: widget.soforDurum
                          ? const Text(
                              "Konusma Sayfasina Yonlendiriliyor...",
                              style: TextStyle(color: Colors.blue),
                            )
                          : const Text(
                              "Sofor Musait Degil",
                              style: TextStyle(color: Colors.red),
                            ),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      duration: const Duration(seconds: 3),
                    ),
                  );
                },
                icon: const Icon(Icons.message),
              ),
            ),
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
