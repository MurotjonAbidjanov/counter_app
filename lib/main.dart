import 'dart:developer';

import 'package:counter_app/next.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Main(),
    );
  }
}

class Main extends StatefulWidget {
  const Main();

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  int san = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Тапшырма 1',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                log(" ===>");
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Next(san: san),
                  ),
                );
              },
              child: Container(
                height: 50,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey,
                ),
                child: Center(
                  child: Text(
                    'Сан: $san',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        san--;
                      });
                    },
                    child: Container(
                      height: 50,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color.fromARGB(255, 6, 67, 117),
                      ),
                      child: Center(
                        child: Text(
                          '-',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      san++;
                    });
                  },
                  child: Container(
                    height: 50,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color.fromARGB(255, 7, 67, 117),
                    ),
                    child: Center(
                      child: Text(
                        '+',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
