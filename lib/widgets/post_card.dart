import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:instagram_ui/utils/color.dart';

class PostCard extends StatelessWidget {
  const PostCard({super.key});

  final realMadrid =
      "https://www.realmadrid.com/img/cc_1920px/_av18089__20230109035507.jpg";

  @override
  Widget build(BuildContext context) {
    return Container(
      color: mobileBackgroundColor,
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16)
                .copyWith(right: 0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 16,
                  backgroundImage: NetworkImage(realMadrid),
                ),
                 Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Maazjnr', style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),
                        ),
                      ],
                    ),
                  ),
                  
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
