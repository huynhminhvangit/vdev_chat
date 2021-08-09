import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class VerifyCodePage extends StatefulWidget {
  const VerifyCodePage({Key? key}) : super(key: key);

  @override
  _VerifyCodePageState createState() => _VerifyCodePageState();
}

class _VerifyCodePageState extends State<VerifyCodePage> {
  final code1Controller = TextEditingController();
  final code2Controller = TextEditingController();
  final code3Controller = TextEditingController();
  final code4Controller = TextEditingController();

  var code1IsEditing = true;
  var code2IsEditing = true;
  var code3IsEditing = true;
  var code4IsEditing = true;

  final code1FocusNode = FocusNode();
  final code2FocusNode = FocusNode();
  final code3FocusNode = FocusNode();
  final code4FocusNode = FocusNode();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Enter code',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'We’ve sent the code via SMS to +84 999',
                  style: TextStyle(fontSize: 18, color: Color(0xff9f9f9f)),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '9999 0000.',
                  style: TextStyle(fontSize: 18, color: Color(0xff9f9f9f)),
                ),
                SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 80,
                      height: 80,
                      child: TextFormField(
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          LengthLimitingTextInputFormatter(1),
                        ],
                        controller: code1Controller,
                        focusNode: code1FocusNode,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(50),
                              ),
                              borderSide: BorderSide(
                                  color: Color(0xffdcdcdc),
                                  style: BorderStyle.solid,
                                  width: 1)),
                        ),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 36, fontWeight: FontWeight.bold),
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.number,
                        onChanged: (String? value) {
                          if(value!.length > 0) {
                            code1FocusNode.nextFocus();
                          }
                        },
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 80,
                      height: 80,
                      child: TextFormField(
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          LengthLimitingTextInputFormatter(1),
                        ],
                        controller: code2Controller,
                        focusNode: code2FocusNode,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(50),
                              ),
                              borderSide: BorderSide(
                                  color: Color(0xffdcdcdc),
                                  style: BorderStyle.solid,
                                  width: 1)),
                        ),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 36, fontWeight: FontWeight.bold),
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.number,
                        onChanged: (String? value) {
                          if(value!.length > 0) {
                            code2FocusNode.nextFocus();
                          } else {
                            code2FocusNode.previousFocus();
                          }
                        },
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 80,
                      height: 80,
                      child: TextFormField(
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          LengthLimitingTextInputFormatter(1),
                        ],
                        controller: code3Controller,
                        focusNode: code3FocusNode,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(50),
                              ),
                              borderSide: BorderSide(
                                  color: Color(0xffdcdcdc),
                                  style: BorderStyle.solid,
                                  width: 1)),
                        ),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 36, fontWeight: FontWeight.bold),
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.number,
                        onChanged: (String? value) {
                          if(value!.length > 0) {
                            code3FocusNode.nextFocus();
                          } else {
                            code3FocusNode.previousFocus();
                          }
                        },
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 80,
                      height: 80,
                      child: TextFormField(
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          LengthLimitingTextInputFormatter(1),
                        ],
                        controller: code4Controller,
                        focusNode: code4FocusNode,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(50),
                              ),
                              borderSide: BorderSide(
                                  color: Color(0xffdcdcdc),
                                  style: BorderStyle.solid,
                                  width: 1)),
                        ),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 36, fontWeight: FontWeight.bold),
                        textInputAction: TextInputAction.send,
                        keyboardType: TextInputType.number,
                        onChanged: (String? value) {
                          if(value!.length > 0) {
                            //
                          } else {
                            code4FocusNode.previousFocus();
                          }
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 100,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Didn't get the code? ",
                      style: TextStyle(fontSize: 18, color: Color(0xff9f9f9f)),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Resent code',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}
