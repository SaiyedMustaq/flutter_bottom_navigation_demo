import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'music.dart';
import 'camera.dart';
import 'contact.dart';
import 'playlist.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 1;

  Widget callpage(int currentIndex) {
    switch (currentIndex) {
      case 0:
        return HomePage();
      case 1:
        return MusicPage();
      case 2:
        return CameraPage();
      case 3:
        return ContactPage();
      case 4:
        return PlaylistPage();
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: callpage(_currentIndex),
      bottomNavigationBar: CurvedNavigationBar(
          items: <Widget>[
            Icon(Icons.home, size: 20, color: Colors.blue),
            Icon(Icons.music_note, size: 20, color: Colors.blue),
            Icon(Icons.camera_alt, size: 20, color: Colors.blue),
            Icon(Icons.account_circle, size: 20, color: Colors.blue),
            Icon(Icons.exit_to_app, size: 20, color: Colors.blue),
          ],
          buttonBackgroundColor: Colors.white,
          animationCurve: Curves.fastOutSlowIn,
          backgroundColor: Colors.blue,
          color: Colors.white,
          height: 50,
          index: _currentIndex,
          onTap: (index) {
            _currentIndex = index;
            setState(() {});
          }),
    );
  }
}
