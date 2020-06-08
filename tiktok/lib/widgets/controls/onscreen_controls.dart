import 'package:flutter/material.dart';
import 'package:tiktok/animations/spinner_animation.dart';
import 'package:tiktok/resources/assets.dart';
import 'package:tiktok/widgets/audio_spinner_icon.dart';
import 'package:tiktok/widgets/controls/video_control_action.dart';
import 'package:tiktok/widgets/videoMetadata/user_profile.dart';
import 'package:tiktok/widgets/videoMetadata/video_desc.dart';

Widget onScreenControls() {
  return Container(
    child: Row(
      children: <Widget>[
        Expanded(flex: 5, child: videoDesc()),
        Expanded(
          flex: 1,
          child: Container(
            padding: EdgeInsets.only(bottom: 60, right: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                userProfile(),
                videoControlAction(icon: AppIcons.heart, label: "100M"),
                videoControlAction(icon: AppIcons.chat_bubble, label: "100M"),
                videoControlAction(
                    icon: AppIcons.reply, label: "Share", size: 27),
                SpinnerAnimation(body: audioSpinner())
              ],
            ),
          ),
        )
      ],
    ),
  );
}
