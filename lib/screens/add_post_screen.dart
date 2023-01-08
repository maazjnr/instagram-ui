import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:instagram_ui/utils/color.dart';
import 'package:instagram_ui/utils/utils.dart';

class AddPostScreen extends StatefulWidget {
  const AddPostScreen({super.key});

  @override
  State<AddPostScreen> createState() => _AddPostScreenState();
}

class _AddPostScreenState extends State<AddPostScreen> {

  final muftiimage =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfnaJnuZ4HAuDFCzMcZyxjjh6XNXfsxlO5j1vLxxOAD8M1iFu3";

    _selectImage(BuildContext context) async {
    return showDialog(context: context, builder: (context) {
      return SimpleDialog(
        title: Text('Create a Post'),
        children: [
          SimpleDialogOption(
            padding: const EdgeInsets.all(20),
            child: const Text('Take a Photo'),
            onPressed: () async {
              Navigator.of(context).pop();
              // ignore: unused_local_variable
              Uint8List file = await pickImage(ImageSource.camera);
            },
          )
        ],
      );
    } );
  }

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