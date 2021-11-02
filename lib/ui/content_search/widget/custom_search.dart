import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomSearchS extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
          color: Colors.grey[300], borderRadius: BorderRadius.circular(10)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.search, color: Colors.grey, size: 16),
          SizedBox(width: 8),
          Flexible(
            child: TextField(
              decoration: InputDecoration(
                  isDense: true,
                  hintText: 'Search',
                  contentPadding: EdgeInsets.zero,
                  hintStyle:
                  GoogleFonts.roboto(fontSize: 12, color: Colors.black38),
                  border: InputBorder.none),
            ),
          )
        ],
      ),
    );
  }
}
