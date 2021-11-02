import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class SectionListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
        itemCount: 10,
        crossAxisCount: 2,
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
        itemBuilder: (context, index)=> cardItem(index),
        staggeredTileBuilder: (index) => StaggeredTile.count(1, 1));
  }

  Widget cardItem(int index){
    int i = index + 1;
    return Container(
      child: Image.network('https://picsum.photos/id/4$i/200/200'),
    );
  }
}
