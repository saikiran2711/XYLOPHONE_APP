import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final player = AudioCache();
  void onTap(int i) {
    setState(() {
      player.play("note$i.wav");
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Xylophone",
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black45,
          title: Text(
            "XYLOPHONE",
            style: TextStyle(fontWeight: FontWeight.w300, fontSize: 28),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: 200,
              height: 50,
              margin: EdgeInsets.only(bottom: 20),
              color: Colors.amberAccent,
              padding: EdgeInsets.all(5),
              child: Center(
                child: Text(
                  "Tap Below To Play",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              color: Colors.redAccent,
              height: 80,
              child: MaterialButton(
                onPressed: () {
                  onTap(1);
                },
              ),
            ),
            Container(
              width: double.infinity,
              color: Colors.orangeAccent,
              height: 80,
              child: MaterialButton(
                onPressed: () {
                  onTap(2);
                },
              ),
            ),
            Container(
              width: double.infinity,
              color: Colors.greenAccent,
              height: 80,
              child: MaterialButton(
                onPressed: () {
                  onTap(3);
                },
              ),
            ),
            Container(
              width: double.infinity,
              color: Colors.purple,
              height: 80,
              child: MaterialButton(
                onPressed: () {
                  onTap(4);
                },
              ),
            ),
            Container(
              width: double.infinity,
              color: Colors.yellow,
              height: 80,
              child: MaterialButton(
                onPressed: () {
                  onTap(5);
                },
              ),
            ),
            Container(
              width: double.infinity,
              color: Colors.blue,
              height: 80,
              child: MaterialButton(
                onPressed: () {
                  onTap(6);
                },
              ),
            ),
            Container(
              width: double.infinity,
              color: Colors.pink,
              height: 80,
              child: MaterialButton(
                onPressed: () {
                  onTap(7);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
