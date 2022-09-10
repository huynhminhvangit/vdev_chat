import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:vdev_chat/src/helpers/validator.dart';
import 'package:vdev_chat/src/resources/dialogs/loading_dialog.dart';
import 'package:vdev_chat/src/resources/verify_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final List<String> _options = ['Vietnam (+84)', 'Indonesia (+62)', 'Japan(+81)'];
  String _dropdownValue = 'Vietnam (+84)';

  final env = dotenv.env;

  final TextEditingController _phoneController = TextEditingController();

  final GlobalKey<FormState> _globalFormKey = GlobalKey<FormState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        alignment: Alignment.center,
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Form(
            key: _globalFormKey,
            autovalidateMode: AutovalidateMode.always,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Enter your phone number',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Please confirm your region and enter your',
                  style: TextStyle(fontSize: 18, color: Color(0xff9f9f9f)),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'phone number.',
                  style: TextStyle(fontSize: 18, color: Color(0xff9f9f9f)),
                ),
                const SizedBox(
                  height: 80,
                ),
                DropdownButtonFormField(
                  items: _options.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    prefixIcon: Icon(Icons.language),
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _dropdownValue = value.toString();
                    });
                  },
                  value: _dropdownValue,
                  style: const TextStyle(fontSize: 18, color: Colors.black),
                  iconSize: 0,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  validator: (String? value) => Validator.isValidPhone(value),
                  controller: _phoneController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    prefixIcon: Icon(Icons.phone),
                  ),
                  keyboardType: TextInputType.phone,
                  textInputAction: TextInputAction.send,
                  onFieldSubmitted: (String? value) {
                    print('VANG: ' + value.toString());
                    _onLogin();
                  },
                  style: const TextStyle(fontSize: 18, color: Colors.black),
                ),
                const SizedBox(
                  height: 100,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xff303030),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: _onLogin,
                  child: Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    height: 60,
                    child: const Text(
                      'Continue',
                      style: TextStyle(fontSize: 18, color: Colors.white),
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

  _onLogin() async {

    if (_globalFormKey.currentState!.validate()) {
      LoadingDialog.show(context);
      await Future.delayed(const Duration(seconds: 1));
      LoadingDialog.hide(context);
      Navigator.push(context, MaterialPageRoute(builder: gotoVerifyCode));
    }

  }

  Widget gotoVerifyCode(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: env['NAME'].toString(),
      theme:
          ThemeData(fontFamily: 'Roboto', primaryColor: Colors.blue.shade100),
      home: const VerifyCodePage(),
    );
  }
}
