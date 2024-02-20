// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:project_name/screan/list.dart';
import 'package:project_name/screan/weeks.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // ignore: non_constant_identifier_names
  var week_list = BabyWeek.list_week();

  // ignore: unused_field
  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'AiXYheXasnI',
    flags: YoutubePlayerFlags(
      autoPlay: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Center(
                child: Text(
                  '''Newborn and 1-Week-Old-Baby''',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 171, 99, 185),
                  ),
                  textAlign: TextAlign.right,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .02,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  diplayweks(0),
                  diplayweks(0),
                  diplayweks(0),
                  diplayweks(0),
                  diplayweks(0),
                  diplayweks(0),
                  diplayweks(0),
                  diplayweks(0),
                  diplayweks(0),
                  diplayweks(0),

                  // Weeks(text: "Newborn and Week1"),
                  // Weeks(text: "Week2"),
                  // Weeks(text: "Week2"),
                  // Weeks(text: "Week2"),
                  // Weeks(text: "Week2"),
                  // Weeks(text: "Week2"),
                  // Weeks(text: "Week2"),
                  // Weeks(text: "Week2"),
                  // Weeks(text: "Week2"),
                  // Weeks(text: "Week2"),
                ]),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              YoutubePlayer(
                controller: _controller,
                showVideoProgressIndicator: true,
                progressIndicatorColor: Color.fromARGB(255, 171, 99, 185),
                topActions: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("SEE MONTH 1 VIDEOS"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 7, 199, 189),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0))
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  '''How can such a little thing make such a big noise? aside from crying, here's what your 1-week-old newborn menna238 is up to''',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 4, 0, 5),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  '''your baby is finally here! after nine months of waiting, wondering and anticipating, that sweet-smelling dle of cuteness is in your arms.''',
                  style: TextStyle(
                      fontSize: 18,
                      // fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 85, 83, 83)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  diplayweks(int i) {
    return Weeks(babyweek: week_list[i]);
  }
}
