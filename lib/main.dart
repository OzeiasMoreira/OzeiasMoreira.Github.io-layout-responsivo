import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Responsive App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ResponsiveHomePage(),
    );
  }
}

class ResponsiveHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: Text('Responsive Layout')),
      body: Center(
        child: screenWidth > 600
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Tela grande', style: TextStyle(fontSize: 24)),
                  SizedBox(width: 20),
                  Icon(Icons.desktop_windows, size: 50),
                ],
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Tela pequena', style: TextStyle(fontSize: 24)),
                  SizedBox(height: 20),
                  Icon(Icons.phone_android, size: 50),
                ],
              ),
      ),
    );
  }
}
