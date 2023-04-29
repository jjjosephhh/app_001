import 'package:flutter/material.dart';

class ImageChanger extends StatefulWidget {
  const ImageChanger({super.key});

  @override
  State<ImageChanger> createState() {
    return _ImageChangerState();
  }
}

class _ImageChangerState extends State<ImageChanger> {
  var activeImage = 'assets/images/oh.png';
  void changeImage() {
    setState(() {
      switch (activeImage) {
        case 'assets/images/oh.png':
          activeImage = 'assets/images/ah.png';
          break;
        case 'assets/images/ah.png':
          activeImage = 'assets/images/oh.png';
          break;
        default:
          break;
      }
    });
  }

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            activeImage,
            width: 200,
          ),
          Container(
            margin: const EdgeInsets.only(top: 32),
            child: TextButton(
              onPressed: changeImage,
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 16),
              ),
              child: const Text("Show 'oh'"),
            ),
          ),
        ],
      ),
    );
  }
}
