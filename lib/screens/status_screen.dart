import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:whatsapp_clone/screens/status_view.dart';
import 'package:whatsapp_clone/screens/tab_bar_screen.dart';
import 'package:whatsapp_clone/utils/chat_model.dart';
import 'package:whatsapp_clone/utils/colors.dart';

class StatusScreen extends StatefulWidget {
  const StatusScreen({super.key});

  @override
  State<StatusScreen> createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  void _viewStory() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: bodyColor,
      child: Column(
        children: [
          // Stack(children: const [
          //   Positioned(
          //     // bottom: 10,
          //     child: Icon(
          //       Icons.add_circle,
          //       color: Color.fromARGB(255, 30, 190, 165),
          //     ),
          //   )
          // ]),
          ListTile(
            textColor: dullWhite,
            leading: Stack(children: [
              Container(
                height: 45,
                width: 50,
                child: CircleAvatar(
                  foregroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),
                ),
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  decoration: BoxDecoration(
                      border:
                          Border.all(width: 1, strokeAlign: StrokeAlign.inside),
                      borderRadius: BorderRadius.circular(22),
                      color: bodyColor),
                  child: Icon(
                    Icons.add_circle,
                    size: 19,
                    color: tealGreen,
                  ),
                ),
              ),
            ]),
            title: Text(
              'Status',
              style: TextStyle(
                color: brightWhite,
              ),
            ),
            subtitle: Text('Tap to add status update'),
          ),
          Container(
            padding: const EdgeInsets.only(left: 15, top: 15),
            alignment: Alignment.centerLeft,
            child: Text(
              'Recent updates',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 14, color: dullWhite),
            ),
          ),
          Container(
              width: MediaQuery.of(context).size.width * 0.97,
              height: MediaQuery.of(context).size.height * 0.695,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: chatList.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.fade,
                                child: StatusView()));
                        // showDialog(
                        //     context: context,
                        //     builder: (context) {
                        //       return AlertDialog(
                        //         actionsPadding: EdgeInsets.zero,
                        //         titleTextStyle:
                        //             TextStyle(color: brightWhite, fontSize: 22),
                        //         backgroundColor: Colors.transparent,
                        //         alignment: Alignment.topCenter,
                        //         insetPadding: EdgeInsets.only(
                        //           left: 0,
                        //           right: 0,
                        //           top: 3,
                        //         ),
                        //         actions: [
                        //           Stack(children: [
                        //             Image(
                        //               image:
                        //                   NetworkImage(chatList[index].image),
                        //               fit: BoxFit.cover,
                        //               semanticLabel: 'Ashwani',
                        //               height:
                        //                   MediaQuery.of(context).size.height *
                        //                       0.9,
                        //               width: MediaQuery.of(context).size.width *
                        //                   0.95,
                        //               isAntiAlias: true,
                        //             ),
                        //             // Container(
                        //             //   height:
                        //             //       MediaQuery.of(context).size.height *
                        //             //           0.04,
                        //             //   width: MediaQuery.of(context).size.width,
                        //             //   alignment: Alignment.centerLeft,
                        //             //   padding: EdgeInsets.only(left: 10),
                        //             //   color: Colors.black26,
                        //             //   child: Text(
                        //             //     '${chatList[index].userName}',
                        //             //     style: TextStyle(
                        //             //         color: brightWhite,
                        //             //         fontSize: 20,
                        //             //         fontWeight: FontWeight.normal),
                        //             //   ),
                        //             // )
                        //           ]),
                        //           // Container(
                        //           //   color: tabColor,
                        //           //   padding: EdgeInsets.symmetric(vertical: 13),
                        //           //   child: Row(
                        //           //     mainAxisAlignment:
                        //           //         MainAxisAlignment.spaceAround,
                        //           //     children: [
                        //           //       InkWell(
                        //           //         onTap: () {
                        //           //           setState(() {
                        //           //             print('hi');
                        //           //           });
                        //           //         },
                        //           //         child: Icon(
                        //           //           Icons.message,
                        //           //           color: tealGreen,
                        //           //         ),
                        //           //       ),
                        //           //       Icon(
                        //           //         Icons.call,
                        //           //         color: tealGreen,
                        //           //       ),
                        //           //       Icon(
                        //           //         Icons.videocam,
                        //           //         color: tealGreen,
                        //           //       ),
                        //           //       Icon(
                        //           //         Icons.info,
                        //           //         color: tealGreen,
                        //           //       ),
                        //           //     ],
                        //           //   ),
                        //           // ),
                        //         ],
                        //         // icon: Icon(Icons.thumb_up),
                        //         // content: Text(
                        //         //     'You have scored 10 points, Congratulations!!!'),
                        //       );
                        //     });
                      });
                    },
                    child: ListTile(
                      textColor: dullWhite,
                      leading: CircleAvatar(
                        child: Container(
                            decoration: BoxDecoration(
                          border: Border.all(
                              width: 2.5,
                              color: brightGreen,
                              strokeAlign: StrokeAlign.outside,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(22),
                        )),
                        foregroundImage: NetworkImage(chatList[index].image),
                      ),
                      title: Text(
                        chatList[index].userName,
                        style: const TextStyle(
                          color: brightWhite,
                        ),
                      ),
                      subtitle: Text(chatList[index].statusTime),
                    ),
                  );
                },
              )),
        ],
      ),
    ));
  }
}
