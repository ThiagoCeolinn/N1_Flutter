import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:magazine/screens/home/home.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Ofertas do dia",
      home: Home(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
