import 'package:flutter/material.dart';

void main() {
  runApp(basketball_points_counter());
}

class basketball_points_counter extends StatefulWidget {
  @override
  _basketball_points_counterState createState() => _basketball_points_counterState();
}

class _basketball_points_counterState extends State<basketball_points_counter> {
  int teamA=0;

  int teamB=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFF4527A0),
            title: Text("Basketball Score Counter"),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 400,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "TEAM A",
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                        Text(
                          "$teamA",
                          style: TextStyle(fontSize: 50,),
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                teamA++;
                              });
                              },
                            child: Text("+1 point"),
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(120,40),
                            )),
                        ElevatedButton(
                            onPressed: () {setState(() {
                              teamA+=2;
                            });},
                            child: Text("+2 points"),
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(120,40),
                            )),
                        ElevatedButton(
                            onPressed: () {setState(() {
                              teamA+=3;
                            });},
                            child: Text("+3 points"),
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(120,40),
                            )),
                      ],
                    ),
                  ),
                  Container(
                    height: 400,
                    child: VerticalDivider(
                      thickness: 2,
                      endIndent: 20,
                      color: Color.fromRGBO(211, 211, 211, 1),
                    ),
                  ),
                  Container(
                    height: 400,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "TEAM B",
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                        Text(
                          "$teamB",
                          style: TextStyle(fontSize: 50,),
                        ),
                        ElevatedButton(
                            onPressed: () {setState(() {
                              teamB++;
                            });},
                            child: Text("+1 point"),
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(120,40),
                            )),
                        ElevatedButton(
                            onPressed: () {setState(() {
                              teamB+=2;
                            });},
                            child: Text("+2 points"),
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(120,40),
                            )),
                        ElevatedButton(
                            onPressed: () {setState(() {
                              teamB+=3;
                            });},
                            child: Text("+3 points"),
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(120,40),
                            )),
                      ],
                    ),
                  ),
                      // Padding(padding: EdgeInsets.all(8)),
                ],
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      teamA=0;
                      teamB=0;
                    });
                  },
                  child: Text("RESET",style: TextStyle(fontWeight: FontWeight.bold),),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(120,40),
                    primary: Color.fromRGBO(211, 211, 211, 1),
                    onPrimary: Colors.black,
                  )),
            ],
          ),
        ));
  }
}
