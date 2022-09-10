import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:image_picker/image_picker.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:vdev_chat/src/resources/dialogs/loading_dialog.dart';
import 'package:vdev_chat/src/resources/home_page.dart';

class SetupPhotoPage extends StatefulWidget {
  const SetupPhotoPage({Key? key}) : super(key: key);

  @override
  _SetupPhotoPageState createState() => _SetupPhotoPageState();
}

class _SetupPhotoPageState extends State<SetupPhotoPage> {
  final env = dotenv.env;

  GlobalKey<FormState> _globalFormKey = GlobalKey<FormState>();

  late XFile _image = XFile('');

  bool isLoading = false;

  _chooseImage(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return SafeArea(
            child: Container(
              child: Wrap(
                children: [
                  ListTile(
                    onTap: () {
                      setState(() {
                        isLoading = !isLoading;
                      });
                      _fromCamera();
                      Navigator.of(context).pop();
                    },
                    leading: const Icon(Icons.camera_alt),
                    title: const Text('Camera'),
                  ),
                  ListTile(
                    onTap: () {
                      setState(() {
                        isLoading = !isLoading;
                      });
                      _fromGallery();
                      Navigator.of(context).pop();
                    },
                    leading: const Icon(Icons.image),
                    title: const Text('Gallery'),
                  ),
                ],
              ),
            ),
          );
        });
  }

  _fromCamera() async {
    final image = await ImagePicker()
        .pickImage(source: ImageSource.camera, imageQuality: 60);

    if (image != null) {
      setState(() {
        _image = image;
      });
    }
  }

  _fromGallery() async {
    final image = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      imageQuality: 60,
    );

    if (image != null) {
      setState(() {
        _image = image;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Container(
            padding: const EdgeInsets.only(right: 20),
            alignment: Alignment.center,
            child: const Text(
              '2 of 2',
              style: TextStyle(
                fontSize: 18,
                color: Color(0xff9f9f9f),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        constraints: const BoxConstraints.expand(),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Form(
            key: _globalFormKey,
            autovalidateMode: AutovalidateMode.always,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Add your photo',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Get more people to know you better.',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xff9f9f9f),
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                GestureDetector(
                  onTap: () {
                    _chooseImage(context);
                  },
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 150,
                    child: _image.path == ''
                        ? DottedBorder(
                            color: Colors.grey.shade500,
                            strokeWidth: 1,
                            dashPattern: [16, 8],
                            radius: const Radius.circular(125),
                            borderType: BorderType.RRect,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(125),
                              ),
                              width: 250,
                              height: 250,
                              child: isLoading
                                  ? const CircularProgressIndicator()
                                  : Icon(
                                      Icons.camera_alt_outlined,
                                      color: Colors.grey.shade500,
                                    ),
                            ),
                          )
                        : ClipRRect(
                            borderRadius: BorderRadius.circular(125),
                            child: Image.file(
                              File(_image.path),
                              width: 250,
                              height: 250,
                              fit: BoxFit.cover,
                            ),
                          ),
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xff303030),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: _onNext,
                  child: Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    height: 60,
                    child: const Text(
                      'Next',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _onNext() async {
    LoadingDialog.show(context);
    await Future.delayed(const Duration(seconds: 1));
    LoadingDialog.hide(context);
    Navigator.push(context, MaterialPageRoute(builder: gotoHome));
  }

  Widget gotoHome(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: env['NAME'].toString(),
      theme:
      ThemeData(fontFamily: 'Roboto', primaryColor: Colors.blue.shade100),
      home: const HomePage(),
    );
  }

}
