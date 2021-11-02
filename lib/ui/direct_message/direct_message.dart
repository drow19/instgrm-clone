import 'package:clone_instagram/ui/direct_message/widget/custom_appbar.dart';
import 'package:clone_instagram/ui/direct_message/widget/custom_search_bar.dart';
import 'package:clone_instagram/ui/direct_message/widget/list_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DirectMessageScreen extends StatefulWidget {
  @override
  _DirectMessageScreenState createState() => _DirectMessageScreenState();
}

class _DirectMessageScreenState extends State<DirectMessageScreen> {
  int _currentTab = 0;
  var listTab = ['All', 'Rooms', '0 Request'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBarDM(),
          customTab(),
          SizedBox(height: 16),
          CustomSearchBarDM(),
          SizedBox(height: 16),
          Expanded(child: ListItemDM())
        ],
      ),
    );
  }

  Widget customTab() {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: listTab.map((e) {
          var _index = listTab.indexOf(e);

          return Expanded(
            child: InkWell(
              onTap: () {
                setState(() => _currentTab = _index);
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: _currentTab == _index
                      ? Border(
                          bottom: BorderSide(color: Colors.black, width: 1.5))
                      : Border(
                          bottom:
                              BorderSide(color: Colors.black12, width: 1.5)),
                ),
                child: Text(
                  e,
                  style: GoogleFonts.roboto(fontSize: 14, color: Colors.black),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

}
