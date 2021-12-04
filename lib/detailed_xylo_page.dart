import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class DetailedXyloPage extends StatefulWidget {
  const DetailedXyloPage({Key? key}) : super(key: key);



  @override
  _DetailedXyloPageState createState() => _DetailedXyloPageState();
}

class _DetailedXyloPageState extends State<DetailedXyloPage> {
  void playmusic(int soundNumber) async{
    final player = AudioPlayer();
    var duration = await player.setAsset('assets/assets_note$soundNumber.wav');
    player.play();
  }
  Expanded buildKey(Color color,int soundNumber){
   return Expanded(
      child: TextButton(onPressed :() async {
        playmusic(soundNumber);
      },
          child: Container(
        color: color,
      )),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  title: Text('Xylophone App'),
),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildKey(Colors.red,1),
            buildKey(Colors.orange,2),
            buildKey(Colors.yellow,3),
            buildKey(Colors.green,4),
            buildKey(Colors.blue.shade800,5),
            buildKey(Colors.blue,6),
            buildKey(Colors.purple,7),

          ],
        ),
      ),
    );
  }
}
