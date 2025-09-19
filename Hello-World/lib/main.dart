import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xffff0000),
        appBar: AppBar(
          title: const Text('Song Lyrics'),
          backgroundColor: const Color(0xffff6600),
          foregroundColor: Colors.white,
        ),
        body: Stack(
          children: [
            // Line 1 (Top Center)
            const Positioned(
              top: 100,
              left: 0,
              right: 0,
              child: AutoSizeText(
                "Baby, baby, baby oh",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.pinkAccent,
                  shadows: [
                    Shadow(
                      offset: Offset(2, 2),
                      blurRadius: 6,
                      color: Colors.black54,
                    ),
                  ],
                ),
                maxLines: 1,
                textAlign: TextAlign.center,
              ),
            ),

            // Line 2 (Middle Left) with width constraint
            Positioned(
              top: 250,
              left: 20,
              child: SizedBox(
                width: 250, //  Constrains width
                child: const AutoSizeText(
                  "Thought you'd always be mine",
                  style: TextStyle(
                    fontSize: 18,
                    fontStyle: FontStyle.italic,
                    color: Colors.lightBlueAccent,
                    fontFamily: 'Courier',
                  ),
                  maxLines: 2,
                ),
              ),
            ),

            // Line 3 (Bottom Right) with width constraint
            Positioned(
              bottom: 100,
              right: 20,
              child: SizedBox(
                width: 250, //  Constrains width
                child: const AutoSizeText(
                  "For you, I would have done whatever, and i just can't believe we ain't together.",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    color: Color(0xff1eff00),
                    letterSpacing: 2,
                    shadows: [
                      Shadow(
                        offset: Offset(3, 3),
                        blurRadius: 10,
                        color: Colors.yellow,
                      ),
                    ],
                  ),
                  maxLines: 3,
                  textAlign: TextAlign.right,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
