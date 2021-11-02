import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardItemDM extends StatelessWidget {
  final String images;
  final String name;
  final String chat;
  final String time;
  final bool isStories;
  final bool isRead;

  const CardItemDM(
      {Key key,
      this.images,
      this.name,
      this.chat,
      this.time,
      this.isStories = false,
      this.isRead = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12),
      child: Row(
        children: [
          !isStories
              ? Container(
                  height: 52,
                  width: 52,
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(shape: BoxShape.circle),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: images != null && images != ''
                          ? Colors.white
                          : Colors.grey[300],
                      shape: BoxShape.circle,
                      image: images != null && images != ''
                          ? DecorationImage(image: AssetImage('$images'))
                          : null,
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                  ),
                )
              : Container(
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
                      color: images != null && images != ''
                          ? Colors.white
                          : Colors.grey[300],
                      shape: BoxShape.circle,
                      image: images != null && images != ''
                          ? DecorationImage(image: AssetImage('$images'))
                          : null,
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                  ),
                ),
          SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$name',
                  style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: !isRead ? Colors.grey : Colors.black,
                  ),
                ),
                SizedBox(height: 2),
                Row(
                  children: [
                    Flexible(
                      child: Text(
                        '$chat',
                        style: GoogleFonts.roboto(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: !isRead ? Colors.grey : Colors.black,
                        ),
                        maxLines: 1,
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Container(
                      height: 4,
                      width: 4,
                      margin: EdgeInsets.symmetric(horizontal: 4),
                      decoration: BoxDecoration(
                          color: Colors.grey, shape: BoxShape.circle),
                    ),
                    Text(
                      '$time',
                      style: GoogleFonts.roboto(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: !isRead ? Colors.grey : Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(width: 10),
          Container(
            height: 8,
            width: 8,
            decoration: BoxDecoration(
                color: !isRead ? Colors.transparent : Colors.blue,
                shape: BoxShape.circle),
          ),
          SizedBox(width: 10),
          Container(
            height: 25,
            width: 25,
            child: Image.asset('assets/icon/ic_camera.png'),
          ),
          SizedBox(width: 10)
        ],
      ),
    );
  }
}
