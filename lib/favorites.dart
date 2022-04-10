// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class FavoutitesPage extends StatelessWidget {
  List<String> specialImages = [
    "images/hotel2.jpg",
    "images/coffee.jpg",
    "images/lattee.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue.shade400,
        appBar: AppBar(
          title: Text("favorites"),
          centerTitle: true,
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
        ),
        body: ListView(
          padding: EdgeInsets.all(20),
          children: [
            Container(
              height: 250,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.cyan.shade100, borderRadius: BorderRadius.circular(20)),
              child: Container(
                padding: EdgeInsets.all(10),
                height: 250,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage("images/hotel4.jpg"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 250,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.cyan.shade100, borderRadius: BorderRadius.circular(20)),
              child: Container(
                padding: EdgeInsets.all(10),
                height: 250,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage('images/hotel8.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),

            Container(
              height: 250,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.cyan.shade100, borderRadius: BorderRadius.circular(20)),
              child: Container(
                padding: EdgeInsets.all(10),
                height: 250,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage('images/hotel9.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),

            Container(
              height: 250,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.cyan.shade100, borderRadius: BorderRadius.circular(20)),
              child: Container(
                padding: EdgeInsets.all(10),
                height: 250,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage('images/hotel5.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ],
        ));    
  }
}