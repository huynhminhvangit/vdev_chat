import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:vdev_chat/src/helpers/validator.dart';
import 'package:vdev_chat/src/resources/setup_photo_page.dart';

class SetupNamePage extends StatefulWidget {
  const SetupNamePage({Key? key}) : super(key: key);

  @override
  _SetupNamePageState createState() => _SetupNamePageState();
}

class _SetupNamePageState extends State<SetupNamePage> {
  final env = dotenv.env;

  final GlobalKey<FormState> _globalFormKey = GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController();

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
              '1 of 2',
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
                  'Create your name',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Get more people to know your name.',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xff9f9f9f),
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                TextFormField(
                  validator: (String? value) => Validator.isValidName(value),
                  controller: _nameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    prefixIcon: Icon(Icons.person_outline),
                  ),
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                  onFieldSubmitted: (String? value) {
                    print('VANG: ' + value.toString());
                    _onNext();
                  },
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.black,
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

  _onNext() {
    if (_globalFormKey.currentState!.validate()) {
      Navigator.push(context, MaterialPageRoute(builder: gotoSetupPhoto));
    }
  }

  Widget gotoSetupPhoto(BuildContext context) {
    return const SetupPhotoPage();
  }
}
