import 'dart:ui';
import "package:youtube_player_flutter/youtube_player_flutter.dart";
import 'package:flutter/material.dart';

class NachosFilmScreen extends StatefulWidget {
  const NachosFilmScreen({Key? key}) : super(key: key);

  @override
  State<NachosFilmScreen> createState() => _NachosFilmScreenState();
}

class _NachosFilmScreenState extends State<NachosFilmScreen> {
  final String videoUrl = "https://www.youtube.com/watch?v=dQw4w9WgXcQ";
  late YoutubePlayerController _controller;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(videoUrl)!,
      flags: YoutubePlayerFlags(autoPlay: false, mute: false),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Stack(
            children: [
              Positioned.fill(
                child: YoutubePlayer(
                  controller: _controller,
                  showVideoProgressIndicator: false,
                ),
              ),
              Positioned.fill(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
                  child: Container(color: Colors.black.withOpacity(0.3)),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Film name', style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.white)),
                  Text('By', style: TextStyle(fontSize: 18, color: Colors.grey)),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: YoutubePlayer(
                      controller: _controller,
                      showVideoProgressIndicator: true,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(onPressed: () {}, child: Text('Watchlist')),
                      ElevatedButton(onPressed: () {}, child: Text('Movie Page')),
                    ],
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Slider(
              min: 0.0,
              value: _controller.value.position.inSeconds.toDouble(),
              max: _controller.metadata.duration.inSeconds.toDouble(),
              onChanged: (value) {
                _controller.seekTo(Duration(seconds: value.toInt()));
              },
            ),
            BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Colors.yellow,
              unselectedItemColor: Colors.grey,
              currentIndex: _selectedIndex,
              onTap: _onItemTapped,
              items: [
                BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/2.png"),size: 70,), label: ' '),
                BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/4.png"),size: 70,), label: ' '),
                BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/1.png"),size: 70,), label: ' '),
                BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/3.png"),size: 70,), label: ' '),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
