// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mentalhealth_app/util/emotion_faces.dart';
import 'package:mentalhealth_app/util/excercise_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[700],
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
      ]),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Hi, Kezia!',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 8,
                          ),
                          Text('14 Oct, 2024',
                              style: TextStyle(
                                  color: Colors.blue[100], fontSize: 15))
                        ],
                      ),
                      Container(
                          decoration: BoxDecoration(
                              color: Colors.blue[600],
                              borderRadius: BorderRadius.circular(12)),
                          padding: EdgeInsets.all(12),
                          child: Icon(Icons.notifications,
                              color: Colors.white, size: 25)),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(12)),
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Search',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('How do you feel?',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                      Icon(Icons.more_horiz, color: Colors.white, size: 25)
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          EmotionFaces(
                            emotionFaces: '😒',
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text('Bad', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      Column(
                        children: [
                          EmotionFaces(
                            emotionFaces: '🙂',
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text('Fine', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      Column(
                        children: [
                          EmotionFaces(
                            emotionFaces: '😁',
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text('Well', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      Column(
                        children: [
                          EmotionFaces(
                            emotionFaces: '🥳',
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text('Excellent',
                              style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(30),
                color: Colors.grey[100],
                child: Center(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Excercises',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              )),
                          Icon(Icons.more_horiz)
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Expanded(
                        child: ListView(
                          children: [
                            ExcerciseTile(
                              icon: Icons.favorite,
                              ExcerciseName: 'Speaking Skills',
                              ExcerciseTime: '10',
                              color: Colors.orange,
                            ),
                            ExcerciseTile(
                              icon: Icons.star,
                              ExcerciseName: 'Writing Skills',
                              ExcerciseTime: '4',
                              color: Colors.green,
                            ),
                            ExcerciseTile(
                              icon: Icons.person,
                              ExcerciseName: 'Reading Skills',
                              ExcerciseTime: '9',
                              color: Colors.pink,
                            ),
                            ExcerciseTile(
                              icon: Icons.emoji_emotions,
                              ExcerciseName: 'Emotional Skills',
                              ExcerciseTime: '10',
                              color: Colors.blue,
                            ),
                            ExcerciseTile(
                              icon: Icons.numbers,
                              ExcerciseName: 'test Skills',
                              ExcerciseTime: '99',
                              color: Colors.yellow,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
