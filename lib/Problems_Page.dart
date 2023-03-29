import 'package:acm_application/box.dart';
import 'package:flutter/material.dart';

import 'level.dart';

class Problems extends StatelessWidget {
  final List prob = ['problem 1', 'problem 2', 'problem 3', 'problem 4',];
  final List lvl=['easy','medium','hard',];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            // levels
            Container(
              height: 100,
              child: ListView.builder(
                  itemCount: lvl.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index){
                    return Level(
                      child:lvl[index],
                    );
                  }
              ),
            ),
            // problems
            Expanded(
              child: ListView.builder(
                  itemCount: prob.length,
                  itemBuilder: (context, index) {
                    return Mybox(child: prob[index]);
                  }
              ),
            )
          ],
        )
    );
  }
}
