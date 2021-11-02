import 'package:clone_instagram/ui/direct_message/direct_message.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widget/list_story.dart';
import 'widget/section_body.dart';

class ContentHome extends StatelessWidget {
  final listImages = [
    'assets/images/tl_1.jpg',
    'assets/images/tl_2.jpg',
    'assets/images/tl_3.jpg',
    'assets/images/tl_4.jpg',
    'assets/images/tl_5.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Instagram',
          style: GoogleFonts.grandHotel(
            fontSize: 34,
            color: Colors.black,
          ),
        ),
        actions: [
          //ICON ADD
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add_box_outlined,
              color: Colors.black87,
            ),
          ),

          //ICON FAVORITE
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite_border,
              color: Colors.black87,
            ),
          ),

          //ICON DM
          IconButton(
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => DirectMessageScreen())),
            icon: Icon(
              Icons.send,
              color: Colors.black87,
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  top: BorderSide(
                      color: Colors.grey.withOpacity(0.5), width: 0.1),
                  bottom: BorderSide(
                      color: Colors.grey.withOpacity(0.5), width: 0.1),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    //STORIES
                    ListStory(),

                    //LIST ITEM 1
                    SectionBody(
                      isList: true,
                      listImages: listImages,
                      avatar: 'assets/images/tahilalats.jpg',
                      userName: 'tahilalats',
                      caption: 'Sosmed - 11102021 - tahilalats.com',
                      likes: '28.139',
                      totalComments: '276',
                      comment: 'Sosmed = ....?',
                      times: '4 hours ago',
                    ),

                    //LIST ITEM 2
                    SectionBody(
                      isList: false,
                      isLike: true,
                      avatar: 'assets/images/tahilalats.jpg',
                      userName: 'FlutterDevs',
                      caption: 'Instagram Clone For Fun ~',
                      likes: '0',
                      images: 'assets/images/flutter_1.png',
                      totalComments: '0',
                      comment: 'Sosmed = ....?',
                      times: '4 hours ago',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
