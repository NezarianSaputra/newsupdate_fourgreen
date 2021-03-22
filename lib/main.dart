import 'package:flutter/material.dart';
import 'package:newsupdate_fourgreen/newsupdate.dart';

void main() {
  runApp(Newsupdate());
}

class Newsupdate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NewsUpdate(),
    );
  }
}
