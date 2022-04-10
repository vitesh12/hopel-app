import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'login.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 7), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginSignin()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  height: 300,
                  width: 300,
                  child: Lottie.network(
                      "https://assets4.lottiefiles.com/private_files/lf30_rmipxvc4.json")),
              SizedBox(height: 20),
              Text(
                "HOTEL",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text("welcome"),
            ],
          )),
    );
  }
}
