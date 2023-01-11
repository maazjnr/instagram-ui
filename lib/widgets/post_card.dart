import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:instagram_ui/utils/color.dart';

class PostCard extends StatelessWidget {
  const PostCard({super.key});

  final desText =
      'An enemy is going to attack you and you know how to deal with that. A friend, on the other hand, can betray you. Betrayal is much worse than an attack from an enemy for two reasonsOne, it catches you by surprise… And the second thing is, your friend knows you well enough to know your weaknesses and knows exactly how to strike';

  final topG =
      'https://images.thewest.com.au/publication/C-8084374/5f8976b6496e8845546bac924bfd7362a2e12965.jpg?imwidth=810&impolicy=wan_v3';

  final tateG =
      "https://pbs.twimg.com/profile_images/1584328878432075776/IRk0LhmQ_400x400.jpg";

  @override
  Widget build(BuildContext context) {
    //Header Section
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
                  backgroundImage: NetworkImage(tateG),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'maazjnr',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                IconButton(
                    onPressed: (() {
                      showDialog(
                        context: context,
                        builder: ((context) => Dialog(
                              child: ListView(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 16),
                                shrinkWrap: true,
                                children: const ['Delete', 'View Profile']
                                    .map(
                                      (e) => InkWell(
                                        onTap: () {},
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 12, horizontal: 16),
                                          child: Text(e),
                                        ),
                                      ),
                                    )
                                    .toList(),
                              ),
                            )),
                      );
                    }),
                    icon: const Icon(Icons.more_vert))
              ],
            ),
            //Image Section
          ),

          SizedBox(
            height: MediaQuery.of(context).size.height * 0.45,
            width: double.infinity,
            child: Image.network(
              topG,
              fit: BoxFit.cover,
            ),
          ),

          //lIKE AND COMMENT Section

          Row(
            children: [
              IconButton(
                onPressed: (() {}),
                icon: const Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
              ),
              IconButton(
                onPressed: (() {}),
                icon: const Icon(
                  Icons.comment_outlined,
                ),
              ),
              IconButton(
                onPressed: (() {}),
                icon: const Icon(
                  Icons.send,
                ),
              ),
              Expanded(
                  child: Align(
                alignment: Alignment.bottomRight,
                child: IconButton(
                  onPressed: (() {}),
                  icon: const Icon(
                    Icons.bookmark_border,
                  ),
                ),
              ))
            ],
          ),

          //DESCRIPTION AND NUMBER OF COMMENTS

          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DefaultTextStyle(
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2!
                      .copyWith(fontWeight: FontWeight.w800),
                  child: Text(
                    '19,231, 483 likes',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(
                    top: 8,
                  ),
                  child: RichText(
                      text: TextSpan(
                          style: const TextStyle(color: Colors.white),
                          children: [
                        const TextSpan(
                          text: 'maazjnr  ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: desText,
                        ),
                      ])),
                )
              ],
            ),
          ),

          InkWell(
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 8,
              ),
              margin: const EdgeInsets.only(right: 200),
              child: const Text(
                'View all 213, 129 comments',
                style: TextStyle(fontSize: 16, color: secondaryColor),
              ),
            ),
          ),
          Container(
              padding: const EdgeInsets.symmetric(
                vertical: 0,
              ),
              margin: const EdgeInsets.only(right: 325),
              child: const Text(
                '10/1/2023',
                style: TextStyle(fontSize: 16, color: secondaryColor),
              ),
            ),
        ],
      ),
    );
  }
}
