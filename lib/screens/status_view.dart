import 'package:flutter/material.dart';
import 'package:story_view/controller/story_controller.dart';
import 'package:story_view/story_view.dart';
import 'package:whatsapp_clone/utils/chat_model.dart';
import 'package:whatsapp_clone/utils/colors.dart';

class StatusView extends StatefulWidget {
  StatusView({super.key});

  @override
  State<StatusView> createState() => _StatusViewState();
}

final StoryController controller = StoryController();

class _StatusViewState extends State<StatusView> {
  final storyController = StoryController();

  @override
  void dispose() {
    storyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final controller = StoryController();
    final List<StoryItem> storyItem = [
      StoryItem.text(
          title: 'This is first story.',
          backgroundColor: Colors.yellow,
          textStyle: TextStyle(decoration: TextDecoration.none)),
      StoryItem.text(
          title: 'This is second story.',
          backgroundColor: Colors.red,
          textStyle: TextStyle(decoration: TextDecoration.none)),
      StoryItem.text(
          title: 'This is third story.',
          backgroundColor: Colors.blue,
          textStyle: TextStyle(decoration: TextDecoration.none)),
    ];
    return StoryView(
        storyItems: storyItem,
        controller: controller,
        repeat: false,
        inline: false,
        onComplete: () {
          Navigator.pop(context);
        },
        progressPosition: ProgressPosition.top,
        onVerticalSwipeComplete: (direction) {
          if (direction == Direction.down) {
            Navigator.pop(context);
          }
        });
  }
}
