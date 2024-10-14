// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ExcerciseTile extends StatelessWidget {
  final icon;
  final String ExcerciseName;
  final String ExcerciseTime;

  const ExcerciseTile(
      {required this.icon,
      required this.ExcerciseName,
      required this.ExcerciseTime,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                  padding: EdgeInsets.all(10),
                  color: Color(Colors.orange.value),
                  child: Icon(
                    icon,
                    color: Colors.white,
                    size: 30,
                  )),
            ),
            title: Text(ExcerciseName),
            subtitle: Text(
              ExcerciseTime.toString() + " Excercise",
              style: TextStyle(color: Colors.grey),
            ),
            trailing: Container(child: Icon(Icons.more_horiz))),
      ),
    );
  }
}
