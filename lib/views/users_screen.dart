import 'package:flutter/material.dart';
import 'package:yazilim_proje_yonetimi/views/mezun.dart';
import 'package:yazilim_proje_yonetimi/widgets/sofor_kart.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kullanici Ekrani"),
        backgroundColor: Colors.blue[300],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: SizedBox(
                width: 400,
                child: FadeInImage.assetNetwork(
                    placeholder: "assets/images/loading-buffering.gif",
                    image:
                        "https://storage.googleapis.com/gweb-uniblog-publish-prod/original_images/Keyword_post_hero.gif"),
              ),
            ),
            Container(
              height: 20,
              color: Colors.blue[300],
            ),
            MyCard(
              title: "Taha Turan",
              subTitle: "Musait",
              soforDurum: true,
              money: 200,
            ),
            MyCard(
              title: "Ibrahim Canbudak",
              subTitle: "Musait Degil",
              soforDurum: false,
              money: 100,
            ),
            MyCard(
              title: "Mustafa Cavlak",
              subTitle: "Musait",
              soforDurum: true,
              money: 300,
            ),
            MyCard(
              title: "Mustafa Toguslu",
              subTitle: "Musait Degil",
              soforDurum: false,
              money: 200,
            ),
            MyCard(
              title: "Sofor 1",
              subTitle: "Musait Degil",
              soforDurum: false,
              money: 200,
            ),
            MyCard(
              title: "Sofor 2",
              subTitle: "Musait",
              soforDurum: true,
              money: 200,
            ),
            MyCard(
              title: "Sofor 3",
              subTitle: "Musait",
              soforDurum: true,
              money: 200,
            ),
            MyCard(
              title: "Sofor 4",
              subTitle: "Musait Degil",
              soforDurum: false,
              money: 200,
            ),
            MyCard(
                title: "Sofor 5",
                subTitle: "Musait",
                soforDurum: true,
                money: 400),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Mezun(),
            ),
          );
        },
        child: const Icon(Icons.arrow_forward_sharp),
      ),
    );
  }
}
