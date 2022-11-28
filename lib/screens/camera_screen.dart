import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utils/colors.dart';

class CameraScreen extends StatefulWidget {
  const CameraScreen({super.key});

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: bodyColor,
            child: Text(
              'Camera is not functional yet due to some error!',
              style: TextStyle(color: dullWhite, fontSize: 20),
              textAlign: TextAlign.center,
            )));
  }
}
