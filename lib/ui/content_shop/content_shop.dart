import 'package:clone_instagram/ui/content_shop/widget/custom_search_shop.dart';
import 'package:clone_instagram/ui/content_shop/widget/list_item.dart';
import 'package:clone_instagram/ui/content_shop/widget/section_filter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContentShop extends StatefulWidget {
  @override
  _ContentShopState createState() => _ContentShopState();
}

class _ContentShopState extends State<ContentShop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Shop',
          style: GoogleFonts.roboto(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.w500),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.date_range, color: Colors.black),
          ),


          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu, color: Colors.black),
          ),
        ],
      ),
      body: Column(
        children: [
          CustomSearchShop(),
          SectionFilterShop(),
          SizedBox(height: 10),
          Expanded(child: SectionListItem())
        ],
      ),
    );
  }
}
