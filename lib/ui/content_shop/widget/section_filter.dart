import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SectionFilterShop extends StatelessWidget {
  var listFilter = [
    'Shops',
    "Editors' Picks",
    'Collections',
    'Guides',
    'Videos'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      margin: EdgeInsets.only(top: 8),
      child: ListView.builder(
          itemCount: listFilter.length,
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(horizontal: 12),
          scrollDirection: Axis.horizontal,
          itemBuilder: (c, i) => cardItem(listFilter[i])),
    );
  }

  Widget cardItem(String data) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      margin: EdgeInsets.only(right: 8),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black)
      ),
      child: Text(
        data,
        style: GoogleFonts.roboto(
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
