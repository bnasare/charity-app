import 'dart:async';
import 'dart:io';

import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'welcomepage.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  File? _imageFile;
  final picker = ImagePicker();

  Future<void> showOptionsDialog() {
    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          color: Colors.white,
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: const Icon(Icons.camera),
                title: const Text('Take a photo'),
                onTap: () async {
                  final pickedFile =
                      await picker.pickImage(source: ImageSource.camera);
                  setState(() {
                    _imageFile = File(pickedFile!.path);
                  });
                },
              ),
              const Divider(
                color: Colors.black,
                thickness: 1,
              ),
              ListTile(
                leading: const Icon(Icons.image_rounded),
                title: const Text('Choose from gallery'),
                onTap: () async {
                  final pickedFile =
                      await picker.pickImage(source: ImageSource.gallery);
                  setState(() {
                    _imageFile = File(pickedFile!.path);
                  });
                },
              ),
              const Divider(
                color: Colors.black,
                thickness: 1,
              ),
              ListTile(
                leading: const Icon(Icons.delete_rounded),
                title: const Text('Remove picture'),
                onTap: () {
                  setState(() {
                    _imageFile = null;
                  });
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: SizedBox(
        height: MediaQuery.of(context).orientation == Orientation.portrait
            ? MediaQuery.of(context).size.height
            : MediaQuery.of(context).size.width,
        width: MediaQuery.of(context).orientation == Orientation.portrait
            ? MediaQuery.of(context).size.width
            : MediaQuery.of(context).size.height,
        child: ColorfulSafeArea(
          color: Colors.white,
          child: Stack(
            children: <Widget>[
              ListView(
                children: <Widget>[
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.25,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 90),
                      child: Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.arrow_back_ios_new_rounded),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const WelcomePage();
                                  },
                                ),
                              );
                            },
                          ),
                          const SizedBox(width: 113),
                          const Text(
                            'Profile',
                            style: TextStyle(
                                fontWeight: FontWeight.normal, fontSize: 25),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.75,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(70),
                      ),
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
              Stack(
                children: <Widget>[
                  Positioned(
                    left: 120,
                    right: 120,
                    top: 120,
                    child: DottedBorder(
                      radius: const Radius.circular(100),
                      strokeWidth: 2,
                      dashPattern: const [6],
                      borderType: BorderType.Circle,
                      color: Colors.black,
                      padding: const EdgeInsets.all(10),
                      child: CircleAvatar(
                        radius: 80,
                        backgroundColor: Colors.white,
                        child: _imageFile == null
                            ? const Icon(
                                Icons.person,
                                size: 60.0,
                                color: Colors.blue,
                              )
                            : Container(
                                clipBehavior: Clip.antiAlias,
                                decoration:
                                    const BoxDecoration(shape: BoxShape.circle),
                                child: Image.file(
                                  _imageFile!,
                                  //width: 120.0,
                                  //height: 120.0,
                                  //fit: BoxFit.cover,
                                ),
                              ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 255,
                    right: 20,
                    left: 20,
                    child: GestureDetector(
                      onTap: () async {
                        showOptionsDialog();
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 155),
                        child: Container(
                          height: 36,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.orange,
                          ),
                          child: const Icon(
                            Icons.camera_alt,
                            size: 25,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const Center(child: Text('Hello'))
            ],
          ),
        ),
      ),
    );
  }
}
