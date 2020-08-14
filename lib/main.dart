import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Border Radius Demo",
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.blue,
      colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue),
    ),
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(
          'Border Radius Demo',

        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(

            children: [
              Column(children: [
                Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(color: Color(0xffeeeeee)),
                ),

                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(color: Colors.white),
                ),
              ]
              ),

              Positioned(
                top: 250,
                left: 0,
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50.0),
                        topRight: Radius.circular(50.0),
                      ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xffdddddd),
                        spreadRadius: -10,
                        blurRadius: 10,
                        offset: Offset(0, -15), // changes position of shadow

                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 225,
                right: 50,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(300.0),
                  child: ButtonTheme(
                      minWidth: 50.0,
                      height: 50.0,
                      child: RaisedButton(
                        child: Text("+" ,style: TextStyle( color: Colors.white)),
                        onPressed: () {},
                      )),
                ),

              ),
            ],
          ),
        ),
      ),
    );
  }
}
