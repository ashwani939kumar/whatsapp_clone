import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utils/chat_model.dart';
import 'package:whatsapp_clone/utils/colors.dart';

class CallsScreen extends StatefulWidget {
  const CallsScreen({super.key});

  @override
  State<CallsScreen> createState() => _CallsScreenState();
}

class _CallsScreenState extends State<CallsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: bodyColor,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: chatList.length,
        itemBuilder: (context, index) {
          return ListTile(
              contentPadding: EdgeInsets.only(left: 20),
              textColor: dullWhite,
              leading: CircleAvatar(
                foregroundImage: NetworkImage(chatList[index].image),
              ),
              title: Text(
                chatList[index].userName,
                style: TextStyle(color: brightWhite),
              ),
              subtitle: Row(
                children: [
                  Transform.rotate(
                    angle: 210,
                    child: Icon(
                      Icons.arrow_forward,
                      color: brightGreen,
                    ),
                  ),
                  Text('${chatList[index].date}, ${chatList[index].time} PM'),
                ],
              ),
              trailing: TextButton(
                  onPressed: () {
                    // _deleteEvent(index);
                  },
                  child: Icon(
                    Icons.videocam_rounded,
                    color: tealGreen,
                    size: 28,
                  ))
              // Text(1
              //   messageList[index].time,
              //   style: TextStyle(color: Colors.black45),
              // ),

              );
          // Divider();
        },
      ),
    ));
  }
}
