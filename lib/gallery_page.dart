import 'package:flutter/material.dart';

class GalleryPage extends StatefulWidget {
  const GalleryPage({Key? key}) : super(key: key);

  @override
  State<GalleryPage> createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Row(
          //   children: [
          //     Image.asset('assets/images/img1.JPG'),
          //     SizedBox(width: 15.0,),
          //     Image.asset('assets/images/img1.JPG'),
          //   ],
          // ),
        ],
      ),
    );
  }
}
