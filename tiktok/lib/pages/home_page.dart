import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../widgets/profile_page.dart';
import '../widgets/controls/onscreen_controls.dart';
import 'package:tiktok/play_video/first_vid.dart';
import 'package:tiktok/play_video/fourth_vid.dart';
import 'package:tiktok/play_video/second_vid.dart';
import 'package:tiktok/play_video/third_vid.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final scaffold = Scaffold.of(context);

    return PageView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        Container(
          color: Colors.black,
          child: Stack(
            children: <Widget>[
              FirstVideoPlayer(),
              onScreenControls(),
              GestureDetector(
                onHorizontalDragUpdate: (dis) {
                  if (dis.delta.dx > 0) {
                    scaffold.showSnackBar(
                      SnackBar(
                        content: Text(
                          'SUBSCRIBED!',
                          textAlign: TextAlign.center,
                        ),
                        duration: Duration(seconds: 1),
                        backgroundColor: Colors.red,
                      ),
                    );
                    debugPrint(
                        'left to right'); //User swiped from left to right
                  }
                  if (dis.delta.dx < 0) {
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.rightToLeft,
                            child: NextPage()));
                    debugPrint(
                        'right to left'); //User swiped from right to left
                  }
                },
              ),
            ],
          ),
        ),
        Container(
          color: Colors.black,
          child: Stack(
            children: <Widget>[
              SecondVideoPlayer(),
              onScreenControls(),
              GestureDetector(
                onPanUpdate: (dis) {
                  if (dis.delta.dx > 0) {
                    scaffold.showSnackBar(
                      SnackBar(
                        content: Text(
                          'SUBSCRIBED!',
                          textAlign: TextAlign.center,
                        ),
                        duration: Duration(seconds: 1),
                        backgroundColor: Colors.red,
                      ),
                    );
                    debugPrint(
                        'left to right'); //User swiped from left to right
                  }
                  if (dis.delta.dx < 0) {
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.rightToLeft,
                            child: NextPage()));
                    debugPrint(
                        'right to left'); //User swiped from right to left
                  }
                },
              ),
            ],
          ),
        ),
        Container(
          color: Colors.black,
          child: Stack(
            children: <Widget>[
              ThirdVideoPlayer(),
              onScreenControls(),
              GestureDetector(
                onPanUpdate: (dis) {
                  if (dis.delta.dx > 0) {
                    scaffold.showSnackBar(
                      SnackBar(
                        content: Text(
                          'SUBSCRIBED!',
                          textAlign: TextAlign.center,
                        ),
                        duration: Duration(seconds: 1),
                        backgroundColor: Colors.red,
                      ),
                    );
                    debugPrint(
                        'left to right'); //User swiped from left to right
                  }
                  if (dis.delta.dx < 0) {
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.rightToLeft,
                            child: NextPage()));
                    debugPrint(
                        'right to left'); //User swiped from right to left
                  }
                },
              ),
            ],
          ),
        ),
        Container(
          color: Colors.black,
          child: Stack(
            children: <Widget>[
              FourthVideoPlayer(),
              onScreenControls(),
              GestureDetector(
                onPanUpdate: (dis) {
                  if (dis.delta.dx > 0) {
                    scaffold.showSnackBar(
                      SnackBar(
                        content: Text(
                          'SUBSCRIBED!',
                          textAlign: TextAlign.center,
                        ),
                        duration: Duration(seconds: 1),
                        backgroundColor: Colors.red,
                      ),
                    );
                    debugPrint(
                        'left to right'); //User swiped from left to right
                  }
                  if (dis.delta.dx < 0) {
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.rightToLeft,
                            child: NextPage()));
                    debugPrint(
                        'right to left'); //User swiped from right to left
                  }
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
