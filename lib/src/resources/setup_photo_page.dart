import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class SetupPhotoPage extends StatefulWidget {
  const SetupPhotoPage({Key? key}) : super(key: key);

  @override
  _SetupPhotoPageState createState() => _SetupPhotoPageState();
}

class _SetupPhotoPageState extends State<SetupPhotoPage> {

  final env = dotenv.env;

  GlobalKey<FormState> _globalFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Container(
            padding: EdgeInsets.only(right: 20),
            alignment: Alignment.center,
            child: Text(
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
        padding: EdgeInsets.all(20),
        constraints: BoxConstraints.expand(),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Form(
            key: _globalFormKey,
            autovalidateMode: AutovalidateMode.always,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Add your photo',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Get more people to know you better.',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xff9f9f9f),
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
                CircleAvatar(
                  backgroundColor: Colors.blue.shade200,
                  
                ),
                SizedBox(
                  height: 80,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff303030),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {},
                  child: Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    height: 60,
                    child: Text(
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
}
