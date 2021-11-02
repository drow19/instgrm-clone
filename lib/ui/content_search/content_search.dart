import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'widget/custom_search.dart';

class ContentSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var paddingTop = MediaQuery.of(context).padding.top;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: paddingTop),
          CustomSearchS(),
          Expanded(
            child: StaggeredGridView.countBuilder(
              itemCount: 51,
              crossAxisCount: 3,
              crossAxisSpacing: 2.0,
              mainAxisSpacing: 2.0,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) => cardImage(index),
              staggeredTileBuilder: (index) => StaggeredTile.count(
                  (index % 7 == 0) ? 2 : 1, (index % 7 == 0) ? 2 : 1),
            ),
          ),
        ],
      ),
    );
  }

  Widget cardImage(var index) {
    var i = index + 1;
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: Image.network('https://picsum.photos/seed/image00$i/500/500'),
    );
  }
}
