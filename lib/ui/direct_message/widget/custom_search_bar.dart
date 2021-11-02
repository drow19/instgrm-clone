import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomSearchBarDM extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 14),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
          color: Colors.grey[300], borderRadius: BorderRadius.circular(10)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.search, color: Colors.grey),
          SizedBox(width: 8),
          Flexible(
            child: TextField(
              decoration: InputDecoration(
                  isDense: true,
                  hintText: 'Search',
                  hintStyle:
                      GoogleFonts.roboto(fontSize: 14, color: Colors.black38),
                  border: InputBorder.none),
            ),
          )
        ],
      ),
    );
  }
}
