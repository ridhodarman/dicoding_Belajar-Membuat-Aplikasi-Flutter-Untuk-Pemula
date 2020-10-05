import 'package:flutter/material.dart';
import 'package:kota_padang/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kota Padang',
      theme: ThemeData.light(),
      home: HomeScreen(),
    );
  }
}
