import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:whatsapp_clone/screens/tab_bar_screen.dart';
import 'package:whatsapp_clone/utils/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToTabBar();
  }

  _navigateToTabBar() async {
    await Future.delayed(Duration(milliseconds: 1000), () {});
    Navigator.push(context,
        PageTransition(type: PageTransitionType.fade, child: TabBarScreen()));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 40),
        color: bodyColor,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.abc,
              color: Colors.transparent,
            ),
            Center(
              child: Icon(
                Icons.whatsapp,
                color: brightWhite,
                size: 80,
              ),
            ),
            Column(
              children: [
                Text(
                  'from',
                  style: TextStyle(color: dullWhite),
                ),
                Image(
                  image: AssetImage(
                    'assets/images/metaLogo.png',
                  ),
                  height: 30,
                  color: brightWhite,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
