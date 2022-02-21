import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("いいね"),
        ),
        body: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              bool isLiked = false;
              return Card(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                    Text(
                      index.toString() + "番目",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    LikeButton(likeCount: 665, isLiked: isLiked)
                  ]));
            }));
  }
}
