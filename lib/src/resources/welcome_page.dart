import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

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
        alignment: Alignment.bottomCenter,
        padding: EdgeInsets.all(20),
        constraints: BoxConstraints.expand(),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                env['NAME'].toString(),
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 50,
              ),
              Image.asset('assets/images/illustration.png'),
              SizedBox(
                height: 20,
              ),
              Text(
                'Let\'s talk with your friends and family',
                style: TextStyle(fontSize: 18, color: Color(0xff9e9e9e)),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'wherever and whenever',
                style: TextStyle(fontSize: 18, color: Color(0xff9e9e9e)),
              ),
              SizedBox(height: 90,),
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
                    'Continue with phone',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }
}
