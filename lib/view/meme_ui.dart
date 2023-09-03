import 'package:flutter/material.dart';
import 'package:ironyapp/controller/getdata.dart';

class Meme extends StatefulWidget {
  const Meme({super.key});

  @override
  State<Meme> createState() => _MemeState();
}

class _MemeState extends State<Meme> {
  String imgUrl = "https://meme-api.com/gimme";

  void updateImg() async {
    String getImgUrl = await getMeme().getNewmeme();
    setState(() async {
      imgUrl = await getImgUrl;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 53, 31, 33),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Image.network(imgUrl),
            ElevatedButton(
                onPressed: () {
                  updateImg();
                },
                child: Text("Next"))
          ],
        ),
      ),
    );
  }
}
