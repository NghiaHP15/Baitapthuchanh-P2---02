import 'dart:html';
import 'dart:ui';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    bool value = false;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 250, 250, 250),
          title: Text.rich(TextSpan(
              text: 'sign in to your account'.toUpperCase(),
              style: TextStyle(
                  letterSpacing: 2,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'RobotoMono',
                  fontSize: 18,
                  color: Color.fromARGB(255, 54, 54, 54)))),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
          children: [
            _textFile("Username"),
            _textFile("Password"),
            CheckboxListTile(
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
              controlAffinity: ListTileControlAffinity.leading,
              value: value,
              onChanged: null,
              title: const Text(
                'Keep me signed in',
                style: TextStyle(
                    color: Color.fromARGB(255, 163, 163, 163), fontSize: 14),
              ),
              checkColor: Colors.greenAccent,
              activeColor: Colors.red,
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 10)),
            ElevatedButton(
                style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 117, 107, 222),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 25)),
                onPressed: () {},
                child: Text('Sign In'.toUpperCase(),
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1))),
            Padding(padding: EdgeInsets.all(10)),
            Text(
              "Forget your password?",
              textAlign: TextAlign.center,
              style: TextStyle(color: Color.fromARGB(255, 163, 163, 163)),
            ),
          ],
        ),
      ),
    );
  }

  Widget _textFile(String context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextField(
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 25),
            filled: true,
            fillColor: Color.fromARGB(255, 229, 232, 237),
            border: OutlineInputBorder(borderSide: BorderSide.none),
            hintText: context,
            hintStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color.fromARGB(255, 128, 137, 153))),
      ),
    );
  }
}
