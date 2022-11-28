import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:whatsapp_clone/main.dart';
import 'package:whatsapp_clone/screens/calls_screen.dart';
import 'package:whatsapp_clone/screens/camera_screen.dart';
import 'package:whatsapp_clone/screens/chat_screen.dart';
import 'package:whatsapp_clone/screens/status_screen.dart';
import 'package:whatsapp_clone/utils/colors.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({super.key});
  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

var indexTapped = 0;

final List<Widget> tabItems = [
  // const Tab(child: Icon(Icons.camera_alt)),
  const Tab(
    child: Text(
      'CHATS',
      style: TextStyle(),
    ),
  ),
  const Tab(
    child: Text(
      'STATUS',
      style: TextStyle(),
    ),
  ),
  const Tab(
    child: Text(
      'CALLS',
      style: TextStyle(),
    ),
  ),
];

class _TabBarScreenState extends State<TabBarScreen>
    with SingleTickerProviderStateMixin {
  static final List<Widget> tabsCat = <Widget>[
    // const CameraScreen(),
    const ChatScreen(),
    const StatusScreen(),
    const CallsScreen(),
  ];

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
  bool showFab = false;
  late TabController _tabController;
  @override
  void initState() {
    super.initState();

    _tabController = TabController(
      initialIndex: 0,
      length: 3,
      vsync: this,
    );
    _tabController.addListener(() {
      setState(() {
        if (_tabController.index == 0) {
          showFab = true;
        } else {
          showFab = false;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabsCat.length,
      child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            elevation: 10,
            actions: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                        onTap: () {},
                        child: const Icon(Icons.search,
                            size: 25, color: dullWhite)),
                    const Gap(15),
                    DropdownButton(
                      isDense: true,
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
                        color: dullWhite,
                      ),
                    ),
                  ],
                ),
              )
            ],
            title: const Text(
              'WhatsApp',
              style: TextStyle(color: dullWhite),
            ),
            backgroundColor: tabColor,
            bottom: TabBar(
                indicatorColor: tealGreen,
                indicatorWeight: 3,
                labelColor: tealGreen,
                unselectedLabelColor: dullWhite,
                controller: _tabController,
                tabs: [
                  tabItems[0],
                  tabItems[1],
                  tabItems[2],
                ]),
          ),
          body: TabBarView(controller: _tabController, children: const [
            // Center(
            //   child: CameraScreen(),
            // ),
            Center(
              child: ChatScreen(),
            ),
            Center(
              child: StatusScreen(),
            ),
            Center(
              child: CallsScreen(),
            ),
          ]),
          floatingActionButton: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              showFab
                  ? Column(
                      children: [
                        FloatingActionButton(
                          onPressed: (() {}),
                          elevation: 5,
                          heroTag: null,
                          backgroundColor: tealGreen,
                          child: const Icon(
                            Icons.message,
                          ),
                        ),
                        const Gap(20),
                      ],
                    )
                  : Column(
                      children: [
                        FloatingActionButton(
                          onPressed: (() {}),
                          mini: true,
                          elevation: 5,
                          heroTag: null,
                          backgroundColor: tabColor,
                          child: const Icon(
                            Icons.edit,
                          ),
                        ),
                        const Gap(20),
                        FloatingActionButton(
                          onPressed: (() {}),
                          elevation: 5,
                          heroTag: null,
                          backgroundColor: tealGreen,
                          child: const Icon(
                            Icons.camera_alt,
                          ),
                        ),
                        const Gap(20),
                      ],
                    )
            ],
          )),
    );
  }
}
