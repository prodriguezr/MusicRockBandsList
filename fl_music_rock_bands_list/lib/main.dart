import 'package:fl_music_rock_bands_list/ui/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music Rock Bands List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(title: 'Music Rock Bands List'),
      debugShowCheckedModeBanner: false, // Hides the banner indicating that you are in debug mode
    );
  }
}