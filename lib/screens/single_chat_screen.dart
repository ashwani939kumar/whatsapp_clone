import 'package:bubble/bubble.dart';
import 'package:chat_bubbles/bubbles/bubble_special_three.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:whatsapp_clone/screens/tab_bar_screen.dart';
import 'package:whatsapp_clone/utils/chat_model.dart';
import 'package:whatsapp_clone/utils/colors.dart';
import 'package:whatsapp_clone/utils/message_model.dart';

class SingleChatScreen extends StatefulWidget {
  const SingleChatScreen({super.key});

  @override
  State<SingleChatScreen> createState() => _SingleChatScreenState();
}

String tdata = DateFormat("hh:mm").format(DateTime.now());

String dropdownvalue = 'chat screen drop down';

var dropDownItems = [
  // 'New group',
  // 'New broadcast',
  // 'Linked devices',
  // 'Starred messages',
  // 'Payments',
  // 'Settings'
  '1',
  '2',
  '3',
  '4',
  '5',
];

TextEditingController _messageController = TextEditingController();

class _SingleChatScreenState extends State<SingleChatScreen> {
  @override
  Widget build(BuildContext context) {
    void sendMessage() {
      setState(() {
        messageList.add((messageModel(
          message: _messageController.text,
        )));

        _messageController.clear();
      });
    }

    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 10,
          actions: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(Icons.videocam),
                  const Gap(20),
                  const Icon(Icons.call),
                  const Gap(8),
                  DropdownButton(
                    underline: Container(color: Colors.transparent),
                    dropdownColor: tabColor,
                    items: dropDownItems.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(
                          items,
                          style: const TextStyle(color: brightWhite),
                        ),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalue = newValue!;
                      });
                    },
                    icon: const Image(
                      image: NetworkImage(
                        'https://cdn-icons-png.flaticon.com/512/2311/2311524.png',
                        scale: 25,
                      ),
                      color: brightWhite,
                    ),
                  ),
                ],
              ),
            )
          ],
          title: Row(
            children: [
              InkWell(
                  onTap: () {
                    setState(() {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              actionsPadding: EdgeInsets.zero,
                              titleTextStyle: const TextStyle(
                                  color: brightWhite, fontSize: 22),
                              backgroundColor: Colors.transparent,
                              alignment: Alignment.topCenter,
                              insetPadding: const EdgeInsets.only(
                                left: 30,
                                right: 30,
                                top: 100,
                              ),
                              actions: [
                                Stack(children: [
                                  Image(
                                    image: NetworkImage(chatList[0].image),
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
                                    padding: const EdgeInsets.only(left: 10),
                                    color: Colors.black26,
                                    child: Text(
                                      '${chatList[0].userName}',
                                      style: const TextStyle(
                                          color: brightWhite,
                                          fontSize: 20,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  )
                                ]),
                                Container(
                                  color: tabColor,
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 13),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          setState(() {});
                                        },
                                        child: const Icon(
                                          Icons.message,
                                          color: tealGreen,
                                        ),
                                      ),
                                      const Icon(
                                        Icons.call,
                                        color: tealGreen,
                                      ),
                                      const Icon(
                                        Icons.videocam,
                                        color: tealGreen,
                                      ),
                                      const Icon(
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
                      foregroundImage: NetworkImage(chatList[0].image))),
              const Gap(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${chatList[0].userName}',
                    style: const TextStyle(color: brightWhite),
                    softWrap: false,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const Gap(1),
                  const Text(
                    'Online',
                    style: TextStyle(
                        color: brightWhite,
                        letterSpacing: 1,
                        fontSize: 12,
                        fontWeight: FontWeight.normal),
                    softWrap: false,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ],
          ),
          backgroundColor: tabColor,
        ),
        body: Container(
            padding: const EdgeInsets.only(left: 8, right: 8, bottom: 5),
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://i.pinimg.com/originals/97/c0/07/97c00759d90d786d9b6096d274ad3e07.png'),
                    fit: BoxFit.cover)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  dragStartBehavior: DragStartBehavior.down,
                  child: Column(
                    children: [
                      const Gap(10),
                      Bubble(
                        alignment: Alignment.center,
                        color: const Color.fromRGBO(212, 234, 244, 1),
                        stick: true,
                        child: const Text('TODAY',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 11)),
                      ),
                      const Gap(10),
                      Bubble(
                        elevation: 10,
                        alignment: Alignment.center,
                        color: tabColor,
                        stick: true,
                        child: const Text(
                            'Messages and calls are end-to-end encrypted. No one outside of this chat, not even WhatsApp, can read or listen to them. Tap to learn.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 11,
                                color: Color.fromARGB(255, 219, 182, 71))),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    reverse: true,
                    // physics: const ScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            padding: EdgeInsets.zero,
                            scrollDirection: Axis.vertical,
                            itemCount: messageList.length,
                            itemBuilder: (context, index) {
                              if (messageList[index].message == '') {
                                return Bubble(
                                  margin: const BubbleEdges.only(top: 0),
                                  alignment: Alignment.topRight,
                                  nip: BubbleNip.rightTop,
                                  color: Colors.transparent,
                                  elevation: 0,
                                  padding: const BubbleEdges.all(0),
                                  radius: const Radius.circular(0),
                                  stick: true,
                                  child: Container(
                                    child: Text(''),
                                  ),
                                );
                              } else {
                                return Bubble(
                                  margin: const BubbleEdges.only(top: 10),
                                  alignment: Alignment.topRight,
                                  nip: BubbleNip.rightTop,
                                  color: darkGreen,
                                  elevation: 5,
                                  padding: BubbleEdges.all(8),
                                  radius: Radius.circular(10),
                                  stick: false,
                                  child: Container(
                                    child: Text(
                                      messageList[index].message,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16),
                                    ),
                                  ),
                                );
                              }
                            },
                          ),
                          Gap(10),

                          // ListTile(
                          //   subtitle: null,
                          //   title: null,
                          //   contentPadding: EdgeInsets.zero,
                          //   dense: true,
                          //   trailing: Container(
                          //     alignment: Alignment.centerRight,
                          //     width: 200,
                          //     height: 200,
                          //     child: Row(
                          //       crossAxisAlignment:
                          //           CrossAxisAlignment.end,
                          //       mainAxisAlignment:
                          //           MainAxisAlignment.end,
                          //       children: [
                          //         Flexible(
                          //           child: Text(
                          //             messageList[index].message,
                          //             style: TextStyle(
                          //                 color: Colors.white,
                          //                 fontSize: 16),
                          //           ),
                          //         ),
                          //         Gap(10),
                          //         Text(
                          //           tdata,
                          //           style: TextStyle(color: dullWhite),
                          //         ),
                          //         Gap(5),
                          //         Image(
                          //           image: NetworkImage(
                          //               'https://cdn-icons-png.flaticon.com/512/60/60727.png'),
                          //           height: 15,
                          //           color: blueTick,
                          //         ),
                          //       ],
                          //     ),
                          //   ),
                          // );
                          // Bubble(
                          //   margin: const BubbleEdges.only(top: 2),
                          //   alignment: Alignment.topRight,
                          //   nip: BubbleNip.rightTop,
                          //   showNip: false,
                          //   color: const Color.fromRGBO(225, 255, 199, 1),
                          //   child: const Text('How are you?',
                          //       textAlign: TextAlign.right),
                          // ),
                          // Bubble(
                          //   margin: const BubbleEdges.only(top: 10),
                          //   alignment: Alignment.topLeft,
                          //   nip: BubbleNip.leftTop,
                          //   child: const Text('Hi!'),
                          // ),
                          // Bubble(
                          //   margin: const BubbleEdges.only(top: 2),
                          //   alignment: Alignment.topLeft,
                          //   nip: BubbleNip.leftTop,
                          //   showNip: false,
                          //   child: const Text('Well, see for yourself'),
                          // ),
                        ]),
                  ),
                ),
                TextField(
                  textAlignVertical: TextAlignVertical.center,
                  textAlign: TextAlign.justify,
                  cursorHeight: 15,
                  enableSuggestions: true,
                  controller: _messageController,
                  cursorColor: const Color.fromARGB(255, 26, 92, 28),
                  style: const TextStyle(color: brightWhite),
                  decoration: InputDecoration(
                      isCollapsed: true,
                      prefixIcon: const Icon(
                        Icons.emoji_emotions,
                        color: dullWhite,
                      ),
                      icon: const CircleAvatar(
                        maxRadius: 23,
                        backgroundColor: tealGreen,
                        child: Icon(
                          Icons.mic,
                          size: 25,
                        ),
                      ),
                      suffix: InkWell(
                        onTap: sendMessage,
                        child: const Icon(
                          Icons.send,
                          color: dullWhite,
                        ),
                      ),
                      alignLabelWithHint: true,
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 20),
                      label: const Padding(
                        padding: EdgeInsets.only(
                          left: 10,
                        ),
                        child: Text(
                          'Message',
                          style: TextStyle(color: dullWhite, fontSize: 18),
                        ),
                      ),
                      // contentPadding: EdgeInsets.all(10),
                      filled: true,
                      fillColor: tabColor,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(40),
                      )),
                ),
              ],
            )));
  }
}
