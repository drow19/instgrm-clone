import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListStory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            bottom: BorderSide(color: Colors.grey.withOpacity(0.5)),
          )),
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(
          left: 12,
          right: 12,
          bottom: 4,
        ),
        children: [
          yourStories(),

          //
          SizedBox(width: 10),
          otherStories(
            name: 'Person A',
            images: 'assets/images/ava1.jpg',
          ),

          //
          SizedBox(width: 10),
          otherStories(
            name: 'Person B',
            images: 'assets/images/ava1.jpg',
          ),

          //
          SizedBox(width: 10),
          otherStories(
            name: 'Person C',
            images: 'assets/images/ava1.jpg',
          ),

          //
          SizedBox(width: 10),
          otherStories(
            name: 'Person D',
            images: 'assets/images/ava1.jpg',
          ),

          //
          SizedBox(width: 10),
          otherStories(
            name: 'Person E',
            images: 'assets/images/ava1.jpg',
          ),

          //
          SizedBox(width: 10),
          otherStories(
            name: 'Person F',
            images: 'assets/images/ava1.jpg',
          ),
        ],
      ),
    );
  }

  Widget yourStories() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        //Circle Container
        Stack(
          children: [
            Container(
              height: 52,
              width: 52,
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.5),
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                'assets/icon/ic_profile.png',
                color: Colors.white,
              ),
            ),
            Positioned(
              right: 0,
              bottom: 2,
              child: Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.add_circle,
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),

        //Text
        Text(
          'Your Story',
          style: GoogleFonts.roboto(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Colors.grey,
          ),
        )
      ],
    );
  }

  Widget otherStories({var images, var name}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          height: 52,
          width: 52,
          padding: EdgeInsets.all(2),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xff8a3ab9),
                Color(0xffbc2a8d),
                Color(0xffe95950),
                Color(0xfffccc63),
              ],
            ),
            shape: BoxShape.circle,
          ),
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              image: DecorationImage(image: AssetImage('$images')),
              border: Border.all(color: Colors.white, width: 2),
            ),
          ),
        ),
        Text(
          '$name',
          style: GoogleFonts.roboto(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        )
      ],
    );
  }
}
