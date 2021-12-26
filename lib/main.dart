import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('GridView'),
        ),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: GridView.count(
            crossAxisCount: 4,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            children: List.generate(40, (index) {
              return MaterialButton(
                onPressed: () {},
                color: Colors.teal,
                child: Text(
                  '$index',
                  style: TextStyle(
                    fontSize: 18
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
