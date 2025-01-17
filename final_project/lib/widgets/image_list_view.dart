import 'dart:async';
import 'dart:math';

import 'package:final_project/data/data.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';


class ImageListView extends StatefulWidget {
  final int startIndex;
  const ImageListView({super.key, required this.startIndex});

  @override
  State<ImageListView> createState() => _ImageListViewState();
}

class _ImageListViewState extends State<ImageListView> {
 
 final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (!_scrollController.position.atEdge) {
        // implemnet scroll of list
        _autoScroll();
      }
      // adding to list
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _autoScroll();
      });
    });
  }

  void _autoScroll() {
    final currentScrollPosition = _scrollController.offset;
    final scrollEndPosition = _scrollController.position.maxScrollExtent;
    scheduleMicrotask(
      () {
        _scrollController.animateTo(
            currentScrollPosition == scrollEndPosition ? 0 : scrollEndPosition,
            duration: const Duration(seconds: 10),
            curve: Curves.linear);
      },
    );
  }


  Widget build(BuildContext context) {
    return Transform.rotate(angle: 1.9*pi,
    child: SizedBox(
width: MediaQuery.of(context).size.width *0.60,
height: MediaQuery.of(context).size.height *0.60,
child: ListView.builder(
controller: _scrollController,
itemCount: 5,
itemBuilder: (context, index) {

return CachedNetworkImage(
 imageUrl: products[widget.startIndex + index].productImageUrl,
  imageBuilder: (con5text, ImageProvider){

return Container(
margin: EdgeInsets.only(

right: 8.0,
left: 8.0,
top: 10.0,
),
height: MediaQuery.of(context).size.height * 0.40,
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(20.0),

image:
  DecorationImage(
  
  image: ImageProvider, 
fit: BoxFit.cover,
),


),
);
},
);
}
),
),
);
}
}