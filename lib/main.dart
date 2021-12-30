import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: MyHero(),
    ));

class MyHero extends StatefulWidget {
  const MyHero({Key? key}) : super(key: key);

  @override
  _MyHeroState createState() => _MyHeroState();
}

class _MyHeroState extends State<MyHero> {
  int likes = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
            Colors.blueGrey,
            Colors.black,
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(
            "PROFILE",
            // style: TextStyle(
            //   fontFamily: 'RoboSlab'
            //   )
          ),
          centerTitle: true,
          backgroundColor: Colors.blueGrey[900],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              likes += 1;
            });
          },
          backgroundColor: Colors.white,
          child: Icon(
            Icons.favorite,
            color: Colors.pink,
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(60.0),
          child: Column(
            children: [
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 20, color: Colors.grey, spreadRadius: 10)
                    ],
                  ),
                  // child: CircleAvatar(
                  //   radius: 82.0,
                  //   backgroundColor: Colors.white,
                  //   child: CircleAvatar(
                  //     radius: 80.0,
                  //     backgroundImage: AssetImage("assets/iron.jpg"),
                  //   ),
                  // ),
                  child: CircleAvatar(
                    radius: 80.0,
                    backgroundImage: AssetImage("assets/iron.jpg"),
                  ),
                ),
              ),
              SizedBox(height: 60.0),
              Text(
                "Iron Man",
                style: TextStyle(
                    fontFamily: "RoboMono",
                    fontWeight: FontWeight.bold,
                    fontSize: 32.0,
                    color: Colors.white),
              ),
              SizedBox(height: 10.0),
              Text(
                "Marvel Comics | New York | Tony Strak",
                style: TextStyle(
                    fontFamily: "RoboMono",
                    fontSize: 14.0,
                    color: Colors.white),
              ),
              Divider(
                color: Colors.amber,
                height: 100.0,
              ),
              Center(
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.favorite,
                        color: Colors.pink,
                        size: 45,
                      ),
                      SizedBox(width: 10.0),
                      Text(
                        '$likes',
                        style: TextStyle(
                            fontFamily: "RoboMono",
                            fontSize: 45.0,
                            color: Colors.amber),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Center(
                child: Text(
                  "Iron Man is a superhero appearing in American comic books published by Marvel Comics. The character was co-created by writer and editor Stan Lee, developed by scripter Larry Lieber, and designed by artists Don Heck and Jack Kirby.",
                  style: TextStyle(
                    fontSize: 14.0,
                    fontFamily: "RoboMono",
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
