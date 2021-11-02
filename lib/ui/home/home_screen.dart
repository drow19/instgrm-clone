import 'package:clone_instagram/ui/content_home/content_home.dart';
import 'package:clone_instagram/ui/content_profile/content_profile.dart';
import 'package:clone_instagram/ui/content_reels/content_reels.dart';
import 'package:clone_instagram/ui/content_search/content_search.dart';
import 'package:clone_instagram/ui/content_shop/content_shop.dart';
import 'package:clone_instagram/ui/home/widget/bottom_navigation_menu.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _indexTab = 0;
  var _page = [
    {
      'pages': ContentHome(),
    },
    {
      'pages': ContentSearch(),
    },
    {
      'pages': ContentReels(),
    },
    {
      'pages': ContentShop(),
    },
    {
      'pages': ContentProfile(),
    },
  ];

  void selectedTab(index){
    setState(() {
      _indexTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _page[_indexTab]['pages'],
      bottomNavigationBar: CustomBottomAppBar(
        onTabSelected: selectedTab,
        items: [
          CustomBottomAppBarItem(iconData: 'assets/icon/ic_home.png'),
          CustomBottomAppBarItem(iconData: 'assets/icon/ic_search.png'),
          CustomBottomAppBarItem(iconData: 'assets/icon/ic_reels.jpg'),
          CustomBottomAppBarItem(iconData: 'assets/icon/ic_shopping_bag.png'),
          CustomBottomAppBarItem(iconData: 'assets/icon/ic_avatar.png'),
        ],
      ),
    );
  }
}
