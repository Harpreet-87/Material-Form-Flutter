import 'package:flutter/material.dart';
import 'package:flutter_application_1/mobile_dev/home_view.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black87,
            title: Title(
              color: Colors.white,
              child: Center(
                child: Text(
                  'App',
                  style: TextStyle(fontSize: 50.0),
                ),
              ),
            ),
          ),
          body: MyHomeView())));
}
