import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyIconPage(),
    );
  }
}

class MyIconPage extends StatefulWidget {
  @override
  _MyIconPageState createState() => _MyIconPageState();
}

class _MyIconPageState extends State<MyIconPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfcfaf4e7),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SvgPicture.asset(
                "images/man.svg",
                height: 100,
                width: 100,
              ),
              Text('SVG Images In Flutter'),
              Container(
                height: 180,
                width: 180,
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 10,
                      offset: Offset(8, 8),
                    )
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    SvgPicture.asset(
                      "images/lion.svg",
                      height: 100,
                      width: 100,
                    ),
                    SvgPicture.asset(
                      "images/house.svg",
                      height: 40,
                      width: 40,
                    ),
                  ],
                ),
              ),
              Container(
                height: 150,
                width: 300,
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 2,
                      offset: Offset(4, 5),
                    )
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    SvgPicture.asset(
                      "images/man.svg",
                      height: 50,
                      width: 50,
                    ),
                    SvgPicture.asset(
                      "images/house.svg",
                      height: 50,
                      width: 50,
                    ),
                    SvgPicture.asset(
                      "images/rocket.svg",
                      height: 50,
                      width: 50,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
