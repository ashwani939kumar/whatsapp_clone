import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:whatsapp_clone/screens/single_chat_screen.dart';
import 'package:whatsapp_clone/utils/chat_model.dart';
import 'package:whatsapp_clone/utils/colors.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
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
          return InkWell(
            onTap: () {
              setState(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SingleChatScreen()),
                );
              });
            },
            child: ListTile(
                textColor: dullWhite,
                leading: InkWell(
                  onTap: () {
                    setState(() {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              actionsPadding: EdgeInsets.zero,
                              titleTextStyle:
                                  TextStyle(color: brightWhite, fontSize: 22),
                              backgroundColor: Colors.transparent,
                              alignment: Alignment.topCenter,
                              insetPadding: EdgeInsets.only(
                                left: 30,
                                right: 30,
                                top: 100,
                              ),
                              actions: [
                                Stack(children: [
                                  Image(
                                    image: NetworkImage(chatList[index].image),
                                    fit: BoxFit.cover,
                                    semanticLabel: 'Ashwani',
                                    height: 300,
                                    width: 300,
                                    isAntiAlias: true,
                                  ),
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.04,
                                    width: MediaQuery.of(context).size.width,
                                    alignment: Alignment.centerLeft,
                                    padding: EdgeInsets.only(left: 10),
                                    color: Colors.black26,
                                    child: Text(
                                      '${chatList[index].userName}',
                                      style: TextStyle(
                                          color: brightWhite,
                                          fontSize: 20,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  )
                                ]),
                                Container(
                                  color: tabColor,
                                  padding: EdgeInsets.symmetric(vertical: 13),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            print('hi');
                                          });
                                        },
                                        child: Icon(
                                          Icons.message,
                                          color: tealGreen,
                                        ),
                                      ),
                                      Icon(
                                        Icons.call,
                                        color: tealGreen,
                                      ),
                                      Icon(
                                        Icons.videocam,
                                        color: tealGreen,
                                      ),
                                      Icon(
                                        Icons.info,
                                        color: tealGreen,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                              // icon: Icon(Icons.thumb_up),
                              // content: Text(
                              //     'You have scored 10 points, Congratulations!!!'),
                            );
                          });
                    });
                  },
                  onLongPress: () {
                    setState(() {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              actionsPadding: EdgeInsets.zero,
                              titleTextStyle:
                                  TextStyle(color: brightWhite, fontSize: 22),
                              backgroundColor: Colors.transparent,
                              alignment: Alignment.topCenter,
                              insetPadding: EdgeInsets.only(
                                left: 30,
                                right: 30,
                                top: 100,
                              ),
                              actions: [
                                Stack(children: [
                                  Image(
                                    image: NetworkImage(chatList[index].image),
                                    fit: BoxFit.cover,
                                    semanticLabel: 'Ashwani',
                                    height: 300,
                                    width: 300,
                                    isAntiAlias: true,
                                  ),
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.04,
                                    width: MediaQuery.of(context).size.width,
                                    alignment: Alignment.centerLeft,
                                    padding: EdgeInsets.only(left: 10),
                                    color: Colors.black26,
                                    child: Text(
                                      '${chatList[index].userName}',
                                      style: TextStyle(
                                          color: brightWhite,
                                          fontSize: 20,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  )
                                ]),
                                Container(
                                  color: tabColor,
                                  padding: EdgeInsets.symmetric(vertical: 13),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            print('hi');
                                          });
                                        },
                                        child: Icon(
                                          Icons.message,
                                          color: tealGreen,
                                        ),
                                      ),
                                      Icon(
                                        Icons.call,
                                        color: tealGreen,
                                      ),
                                      Icon(
                                        Icons.videocam,
                                        color: tealGreen,
                                      ),
                                      Icon(
                                        Icons.info,
                                        color: tealGreen,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                              // icon: Icon(Icons.thumb_up),
                              // content: Text(
                              //     'You have scored 10 points, Congratulations!!!'),
                            );
                          });
                    });
                  },
                  child: CircleAvatar(
                    foregroundImage: NetworkImage(chatList[index].image),
                  ),
                ),
                title: Text(
                  chatList[index].userName,
                  style: TextStyle(color: brightWhite),
                ),
                subtitle: Row(
                  children: [
                    Image(
                      image: NetworkImage(
                          'https://cdn-icons-png.flaticon.com/512/60/60727.png'),
                      height: 15,
                      color: blueTick,
                    ),
                    Gap(2),
                    Text(chatList[index].message),
                  ],
                ),
                trailing: Text(
                  chatList[index].time,
                  style: TextStyle(color: dullWhite),
                )
                // Text(1
                //   messageList[index].time,
                //   style: TextStyle(color: Colors.black45),
                // ),

                ),
          );
          // Divider();
        },
      ),
    ));
  }
}
