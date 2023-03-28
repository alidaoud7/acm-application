import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Competitive Programming Roadmap',
      home: RoadmapScreen(),
    );
  }
}

class RoadmapScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Competitive Programming Roadmap'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.code),
            title: Text('Learn a Programming Language\n',
            style:TextStyle(color: Colors.red,
            fontWeight: FontWeight.bold)),
            subtitle: Text.rich(
              TextSpan(
                text: 'Choose a language to start with like : ',
                style:new TextStyle(fontSize:16,
                color: Colors.black),
                children: [TextSpan(
                  text: '\n Java',
                  style: new TextStyle(color: Colors.blue,
                  fontSize: 15,),
                  recognizer: new TapGestureRecognizer()
                    ..onTap = () { launch('https://www.w3schools.com/java/');
                  },
                ),
                TextSpan(
                  text: '\n Python',
                  style: new TextStyle(color: Colors.blue,
                  fontSize: 15,),
                  recognizer: new TapGestureRecognizer()
                    ..onTap = () { launch('https://www.w3schools.com/python/');
                  },
                ),
                TextSpan(
                  text: '\n C++',
                  style: new TextStyle(color: Colors.blue,
                  fontSize: 15,),
                  recognizer: new TapGestureRecognizer()
                    ..onTap = () { launch('https://www.w3schools.com/cpp/');
                  },
                ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.functions),
            title: Text('Learn Algorithms and Data Structures \n',
            style:TextStyle(color: Colors.red,
            fontWeight: FontWeight.bold)),
            subtitle: Text.rich(
              TextSpan(
                text:'Cover the basic data structures like arrays, linked lists, trees, graphs etc... \nYou can start learning with :',
                style:new TextStyle(fontSize:16,
                color: Colors.black),
                children: [TextSpan(
                  text: '\nAlgorithms & Data Structures for beginners',
                  style: new TextStyle(color: Colors.blue,
                  fontSize: 15,),
                  recognizer: new TapGestureRecognizer()
                    ..onTap = () { launch('https://www.youtube.com/watch?v=8hly31xKli0&ab_channel=freeCodeCamp.org');
                  },
                ),]
            ),)),
          ListTile(
            leading: Icon(Icons.edit),
            title: Text('Practice Coding Problems \n',
            style:TextStyle(color: Colors.red,
            fontWeight: FontWeight.bold)),
            subtitle: Text.rich(
              TextSpan(
                text:'Solve coding problems to build a solid way of thinking and to learn how to use the advanced algorithms.\n',
                style:new TextStyle(fontSize:16,
                color: Colors.black),
                children: [TextSpan(
                  text: 'Problem Page ',
                  style: new TextStyle(color: Colors.blue,
                  fontSize: 15,),
                  recognizer: new TapGestureRecognizer()
                    ..onTap = () { launch('https://www.youtube.com/watch?v=8hly31xKli0&ab_channel=freeCodeCamp.org');
                  },
                ),]
            ),)
          ),
          ListTile(
            leading: Icon(Icons.school),
            title: Text('Participate in Contests \n',
            style:TextStyle(color: Colors.red,
            fontWeight: FontWeight.bold)),
            subtitle: Text.rich(
              TextSpan(
                text:'Compete in our online coding contests to earn a great experience on facing problems to solve in limited duration\n',
                style:new TextStyle(fontSize:16,
                color: Colors.black),
                children: [TextSpan(
                  text: 'Contest Page ',
                  style: new TextStyle(color: Colors.blue,
                  fontSize: 15,),
                  recognizer: new TapGestureRecognizer()
                    ..onTap = () { launch('https://www.youtube.com/watch?v=8hly31xKli0&ab_channel=freeCodeCamp.org');
                  },
                ),]
            ),)
          ),
          ListTile(
            leading: Icon(Icons.remove_red_eye),
            title: Text('Analyze Your Mistakes \n',
            style:TextStyle(color: Colors.red,
            fontWeight: FontWeight.bold)),
            subtitle: Text.rich(
              TextSpan(text:'Analyze your mistakes after contests and try to improve your weak areas.',
              style:new TextStyle(fontSize:16,
              color: Colors.black),),
          ),),
          ListTile(
            leading: Icon(Icons.functions),
            title: Text('Learn Advanced Algorithms and Data Structures \n',
            style:TextStyle(color: Colors.red,
            fontWeight: FontWeight.bold)),
            subtitle: Text.rich(
              TextSpan(
                text:'Study advanced algorithms like AVL trees, tries, Fenwick trees, graph algorithms, etc.\n',
                style:new TextStyle(fontSize:16,
                color: Colors.black),
                children: [TextSpan(
                  text: 'Advanced Algorithms Playlist ',
                  style: new TextStyle(color: Colors.blue,
                  fontSize: 15,),
                  recognizer: new TapGestureRecognizer()
                    ..onTap = () { launch('https://www.youtube.com/watch?v=09_LlHjoEiY&list=PLR69o5h4xAwUgZHf8Y6V-KukXHBlbAcc1&ab_channel=freeCodeCamp.org');
                  },
                ),]
            ),)
          ),
          ListTile(
            leading: Icon(Icons.emoji_events),
            title: Text('Participate in More Advanced Contests \n',
            style:TextStyle(color: Colors.red,
            fontWeight: FontWeight.bold)),
            subtitle: Text.rich(
              TextSpan(
                text:'Take part in the advanced contests like Google Code Jam, Facebook Hacker Cup, ICPC, etc.',
                style:new TextStyle(fontSize:16,
                color: Colors.black),),
          ),),
        ],
      ),
    );
  }
}
