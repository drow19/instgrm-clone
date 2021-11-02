import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBarDM extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var paddingTop = MediaQuery.of(context).padding.top;

    return Container(
      height: 50 + paddingTop,
      padding: EdgeInsets.only(left: 12, right: 16, top: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 30,
            width: 30,
            child: IconButton(
              onPressed: () => Navigator.pop(context),
              padding: EdgeInsets.zero,
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
                size: 22,
              ),
            ),
          ),
          Text(
            'drow',
            style: GoogleFonts.roboto(fontSize: 22, color: Colors.black),
          ),
          Icon(Icons.keyboard_arrow_down),
          Spacer(),
          Container(
            height: 30,
            width: 30,
            child: Image.asset('assets/icon/ic_video.png'),
          ),
          SizedBox(width: 20),
          Container(
            height: 25,
            width: 25,
            child: Image.asset('assets/icon/ic_write.png'),
          ),
        ],
      ),
    );
  }
}
