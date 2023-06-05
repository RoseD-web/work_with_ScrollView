import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.lightGreen,
    ),
    home: Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(top: 70),
            ),
            Container(
              width: 300,
              height: 200,
              color: Colors.red,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 40),
            ),
            Container(
              width: 300,
              height: 200,
              color: Colors.yellow,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 230),
            ),
            Container(
              width: 300,
              height: 50,
              color: Colors.green,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                      if (states.contains(MaterialState.pressed)) {
                        return Colors.greenAccent;
                      }
                      return null;
                    },
                  ),
                ),
                child: const Text(
                  'Button',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            )
          ]),
        ),
      ),
    ),
  ));
}
