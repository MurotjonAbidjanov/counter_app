import 'package:flutter/material.dart';

class Next extends StatefulWidget {
  Next({this.san}) : super();

  final int san;

  @override
  _NextState createState() => _NextState();
}

class _NextState extends State<Next> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Тапшырма 2',
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
              onTap: () {},
              child: Container(
                height: 50,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey,
                ),
                child: Center(
                  child: Text(
                    'Сан: ${widget.san}',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
