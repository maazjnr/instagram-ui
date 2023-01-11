import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_ui/utils/color.dart';
import 'package:instagram_ui/widgets/post_card.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mobileBackgroundColor,
        centerTitle: false,
        title: SvgPicture.asset(
          'assets/ic_instagram.svg',
          color: Colors.white,
          height: 34,
        ),
        actions: [
          IconButton(
            onPressed: (() {}),
            icon: const Icon(Icons.message),
          ),
        ],
      ),
      body: const PostCard(),
    );
  }
}
