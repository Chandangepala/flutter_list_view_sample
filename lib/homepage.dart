import 'package:flutter/material.dart';
import 'MySquare.dart';
import 'circle.dart';

class homepage extends StatelessWidget{

  //creating a list of strings '_posts'
  final List _posts = [
    'Chandan',
    'Loves',
    'Sona',
    'Loves',
    'Chandan',
    'Loves',
    'Sona'
  ];

  //creating a list of strings '_stories'
  final List _stories = [
    'Love',
    'you',
    'my',
    'Sona',
    'Love',
    'you',
    'so',
    'much'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //body of the homepage
      //creating a column widget with multiple children widgets
      body: Column(
        children: [
          //container widget for instagram instagram stories
          //To define custom height for stories container widget has been chosen
          //instagram stories
          Container(
              height: 160,
              //Listview builder as child to populate list '_stories'
              child: ListView.builder(
              itemCount: _stories.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index){
                return MyCircle(_stories[index]);
              })),
          //Expanded widget cover all the remaining height of the screen
          //instagram posts
          Expanded(
            //Listview builder as child populate list '_posts' data using MySquare class
            //Expanded widget wrapped to fill the remaining screen with '_posts' list data
            child: ListView.builder(
                itemCount: _posts.length,
                itemBuilder: ( context, index){
                    return MySquare(_posts[index]);
                }),
          ),
        ],
      ),
      );
  }
  
}