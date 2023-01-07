import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


// for picking up image from gallery
pickImage(ImageSource source) async {
  
  final ImagePicker _imagePicker = ImagePicker();
  XFile? _file = await _imagePicker.pickImage(source: source);
  if (_file != null) {
    return await _file.readAsBytes();
  }
  print('No Image Selected');
}

class XFile {
  readAsBytes() {}
  
}

// for displaying snackbars
showSnackBar(BuildContext context, String text) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(text),
    ),
  );
}




  _selectImage(BuildContext context) async {
    return showDialog(context: context, builder: (context) {
      return SimpleDialog(
        title: Text('Create a Post'),
        children: [
          SimpleDialogOption(
            padding: EdgeInsets.all(20),
            child: const Text('Take a Photo'),
            onPressed: () async {
              Navigator.of(context).pop();
              Uint8List file = await 
            },
          )
        ],
      );
    } );
  }
