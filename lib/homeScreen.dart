import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Padding(
        padding: EdgeInsets.all(50.0),
        child: Column(children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('/video');
            },
            child: Container(
              margin: EdgeInsets.only(bottom: 20),
              width: 500,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.deepOrangeAccent,
                  borderRadius: BorderRadius.circular(15)),
              child: Center(
                child: Text(
                  'API VIDEO',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('/photo');
            },
            child: Container(
              margin: EdgeInsets.only(bottom: 20),
              width: 500,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.deepOrangeAccent,
                  borderRadius: BorderRadius.circular(15)),
              child: Center(
                child: Text(
                  'API PHOTO',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('/textoanimado');
            },
            child: Container(
              margin: EdgeInsets.only(bottom: 20),
              width: 500,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.deepOrangeAccent,
                  borderRadius: BorderRadius.circular(15)),
              child: Center(
                child: Text(
                  'API TEXTO ANIMADO',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('/loading');
            },
            child: Container(
              margin: EdgeInsets.only(bottom: 20),
              width: 500,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.deepOrangeAccent,
                  borderRadius: BorderRadius.circular(15)),
              child: Center(
                child: Text(
                  'API LOADING',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('/emailvalidator');
            },
            child: Container(
              margin: EdgeInsets.only(bottom: 20),
              width: 500,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.deepOrangeAccent,
                  borderRadius: BorderRadius.circular(15)),
              child: Center(
                child: Text(
                  'API VALIDADOR EMAIL',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
