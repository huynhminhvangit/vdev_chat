import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:vdev_chat/src/resources/login_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final env = dotenv.env;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(20),
        constraints: const BoxConstraints.expand(),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                env['NAME'].toString(),
                style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 50,
              ),
              Image.asset('assets/images/illustration.png'),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Let\'s talk with your friends and family',
                style: TextStyle(fontSize: 18, color: Color(0xff9e9e9e)),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'wherever and whenever',
                style: TextStyle(fontSize: 18, color: Color(0xff9e9e9e)),
              ),
              const SizedBox(
                height: 120,
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
                    'Continue with phone',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }

  _onLogin() {
    Navigator.push(context, MaterialPageRoute(builder: gotoLogin));
  }

  Widget gotoLogin(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: env['NAME'].toString(),
      theme:
          ThemeData(fontFamily: 'Roboto', primaryColor: Colors.blue.shade100),
      home: const LoginPage(),
    );
  }
}
