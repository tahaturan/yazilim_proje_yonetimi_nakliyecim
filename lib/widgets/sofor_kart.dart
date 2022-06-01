import 'package:flutter/material.dart';

class MyCard extends StatefulWidget {
  String title;
  String subTitle;
  bool soforDurum;
  int money;
  MyCard(
      {Key? key,
      required this.title,
      required this.subTitle,
      required this.soforDurum,
      required this.money})
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
            trailing: widget.soforDurum
                ? const Icon(Icons.done_all_outlined)
                : const Icon(Icons.cancel),
            iconColor: Colors.teal,
            onLongPress: () {
              _alertDialogIslemi(context, widget.title, widget.subTitle,
                  widget.money, widget.soforDurum);
            },
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

  void _alertDialogIslemi(BuildContext myContex, String isim, String durum,
      int ucret, bool goster) {
    showDialog(
      context: myContex,
      builder: (contex) {
        return AlertDialog(
          title: Row(
            children: [
              Text(isim),
              const SizedBox(width: 5),
              Icon(widget.soforDurum ? Icons.done_sharp : Icons.cancel),
            ],
          ),
          content: SizedBox(
            height: 75,
            child: Column(
              children: [
                Text("Durum: $durum"),
                Text("100Km Uceti: ${ucret.toString()}TL"),
                const SizedBox(
                  height: 10,
                ),
                Visibility(
                  visible: goster,
                  child: Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "Mesajiniz",
                        icon: IconButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text("Mesaj Gonderiliyor..."),
                              ),
                            );
                          },
                          icon: const Icon(Icons.message),
                        ),
                        border: const OutlineInputBorder(),
                        suffixIcon: const Icon(Icons.drafts_outlined),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                "Kapat",
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                "Tamam",
              ),
            ),
          ],
        );
      },
    );
  }
}
