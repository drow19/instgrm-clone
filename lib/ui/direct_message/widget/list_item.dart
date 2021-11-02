import 'package:flutter/material.dart';

import 'card_item.dart';

class ListItemDM extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 12),
      children: [
        CardItemDM(
            images: 'assets/images/ava1.jpg',
            name: 'drow',
            chat: 'HAHAHA',
            time: '3d',
            isRead: true,
            isStories: true),


        CardItemDM(
            images: '',
            name: 'Person A',
            chat: 'Nice one !',
            time: '2m',
            isRead: false,
            isStories: false),

        CardItemDM(
            images: '',
            name: 'Person B',
            chat: 'Nice two !',
            time: '1m',
            isRead: false,
            isStories: true),

        CardItemDM(
            images: '',
            name: 'Person C',
            chat: 'Nice three !',
            time: '2m',
            isRead: true,
            isStories: false),

        CardItemDM(
            images: '',
            name: 'Person D',
            chat: 'Nice four !',
            time: '3m',
            isRead: false,
            isStories: true),

        CardItemDM(
            images: '',
            name: 'Person E',
            chat: 'Nice five !',
            time: '4m',
            isRead: false,
            isStories: false),

        CardItemDM(
            images: '',
            name: 'Person F',
            chat: 'Nice six !',
            time: '5m',
            isRead: false,
            isStories: false),

        CardItemDM(
            images: '',
            name: 'Person G',
            chat: 'Nice seven !',
            time: '6m',
            isRead: false,
            isStories: false),
      ],
    );
  }
}
