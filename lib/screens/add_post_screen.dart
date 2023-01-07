import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:instagram_ui/utils/color.dart';

class AddPostScreen extends StatefulWidget {
  const AddPostScreen({super.key});

  @override
  State<AddPostScreen> createState() => _AddPostScreenState();
}

class _AddPostScreenState extends State<AddPostScreen> {

  final muftiimage =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfnaJnuZ4HAuDFCzMcZyxjjh6XNXfsxlO5j1vLxxOAD8M1iFu3";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mobileBackgroundColor,
        leading:
            IconButton(onPressed: (() {}), icon: const Icon(Icons.arrow_back)),
        title: Text('Post to'),
        centerTitle: false,
        actions: [
          TextButton(
            onPressed: (() {}),
            child: const Text(
              'Post',
              style: TextStyle(
                color: Colors.blueAccent,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(muftiimage),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.45,
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: "Write a caption...",
                    border: InputBorder.none,
                  ),
                  maxLines: 8,
                ),
              ),
              SizedBox(
                height: 45,
                width: 45,
                child: AspectRatio(
                  aspectRatio: 487 / 451,
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(muftiimage),
                          fit: BoxFit.fill,
                          alignment: FractionalOffset.topCenter),
                    ),
                  ),
                ),
              ),
              const Divider(),
            ],
          )
        ],
      ),
    );
  }
}

//return Center(
   //   child: IconButton(onPressed: (() {
        
    //  }), icon: const Icon(Icons.upload)),
   // );