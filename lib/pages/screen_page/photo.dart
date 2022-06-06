import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class PhotoPage extends StatefulWidget {
  const PhotoPage({Key? key}) : super(key: key);

  @override
  State<PhotoPage> createState() => _PhotoPageState();
}

class _PhotoPageState extends State<PhotoPage> {
  File? image;

  Future pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;

      final imageTemporary = File(image.path);
      setState(() => this.image = imageTemporary);
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: const BoxDecoration(color: Colors.white),
        padding: const EdgeInsets.only(top: 20.0),
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                  ),
                  const Center(
                    child: Text("Select Source",
                        style: TextStyle(color: Colors.black, fontSize: 14.0)),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            ElevatedButton.icon(
              onPressed: () => pickImage(ImageSource.camera),
              icon: const Icon(Icons.camera_alt_outlined),
              label: const Padding(
                padding: const EdgeInsets.all(16),
                child: Text("Camera"),
              ),
              style: ElevatedButton.styleFrom(
                  onSurface: Colors.green,
                  textStyle:
                      const TextStyle(fontSize: 20, color: Colors.black)),
            ),
            const SizedBox(
              height: 10.0,
            ),
            ElevatedButton.icon(
              onPressed: () => pickImage(ImageSource.gallery),
              icon: const Icon(Icons.image_outlined),
              label: const Padding(
                padding: const EdgeInsets.all(16),
                child: Text("Gallery"),
              ),
              style: ElevatedButton.styleFrom(
                onSurface: Colors.green,
                textStyle: const TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
