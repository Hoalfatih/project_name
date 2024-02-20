import 'package:flutter/material.dart';
import 'package:project_name/screan/list.dart';

// ignore: must_be_immutable
class Weeks extends StatelessWidget {
  Weeks({super.key, required this.babyweek});
  
  BabyWeek babyweek;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .06,
      width: MediaQuery.of(context).size.height * .2,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 171, 99, 185),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(child: Text(babyweek.text,style: TextStyle(fontSize: 18),)),
    );
  }
}
