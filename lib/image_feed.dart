import 'package:app_001/image_card.dart';
import 'package:flutter/material.dart';

class ImageFeed extends StatefulWidget {
  const ImageFeed({Key? key}) : super(key: key);

  @override
  State createState() => _ImageFeedState();
}

class _ImageFeedState extends State<ImageFeed> {
  List<String> imageUrls = [
    'https://picsum.photos/id/10/600/300',
    'https://picsum.photos/id/11/600/300',
    'https://picsum.photos/id/12/600/300',
    'https://picsum.photos/id/13/600/300',
    'https://picsum.photos/id/14/600/300',
    'https://picsum.photos/id/15/600/300',
    'https://picsum.photos/id/16/600/300',
    'https://picsum.photos/id/17/600/300',
    'https://picsum.photos/id/18/600/300',
    'https://picsum.photos/id/19/600/300',
    'https://picsum.photos/id/20/600/300',
    'https://picsum.photos/id/21/600/300',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: imageUrls.length,
        itemBuilder: (context, index) {
          return ImageCard(imageUrl: imageUrls[index]);
        },
      ),
    );
  }
}
