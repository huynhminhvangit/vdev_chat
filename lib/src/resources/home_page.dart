import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final env = dotenv.env;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(env['NAME'].toString()),
        elevation: 0,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                title: Padding(
                  padding: EdgeInsets.only(bottom: 7),
                  child: Text(
                    'David Vang',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                subtitle: Text(
                    'Hello Charly Dang, ....',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xff9f9f9f),
                  ),
                ),
                leading: Stack(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      child: FlutterLogo(),
                    ),
                    Positioned(
                      child: Container(
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(6)
                        ),
                      ),
                      bottom: 0,
                      right: 5,
                    ),
                  ],
                ),
                trailing: Column(
                  children: [
                    Text('9:30'),
                    SizedBox(height: 5,),
                    Container(
                      alignment: Alignment.center,
                      width: 26,
                      height: 26,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(13)
                      ),
                      child: Text(
                        '2',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    )
                  ],
                ),
              ),
              ListTile(
                title: Padding(
                  padding: EdgeInsets.only(bottom: 7),
                  child: Text(
                    'David Vang',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                subtitle: Text(
                  'Hello Charly Dang, ....',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xff9f9f9f),
                  ),
                ),
                leading: Stack(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      child: FlutterLogo(),
                    ),
                    Positioned(
                      child: Container(
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(6)
                        ),
                      ),
                      bottom: 0,
                      right: 5,
                    ),
                  ],
                ),
                trailing: Column(
                  children: [
                    Text('9:30'),
                    SizedBox(height: 5,),
                    Container(
                      alignment: Alignment.center,
                      width: 26,
                      height: 26,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(13)
                      ),
                      child: Text(
                        '2',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    )
                  ],
                ),
              ),
              ListTile(
                title: Padding(
                  padding: EdgeInsets.only(bottom: 7),
                  child: Text(
                    'David Vang',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                subtitle: Text(
                  'Hello Charly Dang, ....',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xff9f9f9f),
                  ),
                ),
                leading: Stack(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      child: FlutterLogo(),
                    ),
                    Positioned(
                      child: Container(
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(6)
                        ),
                      ),
                      bottom: 0,
                      right: 5,
                    ),
                  ],
                ),
                trailing: Column(
                  children: [
                    Text('9:30'),
                    SizedBox(height: 5,),
                    Container(
                      alignment: Alignment.center,
                      width: 26,
                      height: 26,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(13)
                      ),
                      child: Text(
                        '2',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    )
                  ],
                ),
              ),
              ListTile(
                title: Padding(
                  padding: EdgeInsets.only(bottom: 7),
                  child: Text(
                    'David Vang',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                subtitle: Text(
                  'Hello Charly Dang, ....',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xff9f9f9f),
                  ),
                ),
                leading: Stack(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      child: FlutterLogo(),
                    ),
                    Positioned(
                      child: Container(
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(6)
                        ),
                      ),
                      bottom: 0,
                      right: 5,
                    ),
                  ],
                ),
                trailing: Column(
                  children: [
                    Text('9:30'),
                    SizedBox(height: 5,),
                    Container(
                      alignment: Alignment.center,
                      width: 26,
                      height: 26,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(13)
                      ),
                      child: Text(
                        '2',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    )
                  ],
                ),
              ),
              ListTile(
                title: Padding(
                  padding: EdgeInsets.only(bottom: 7),
                  child: Text(
                    'David Vang',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                subtitle: Text(
                  'Hello Charly Dang, ....',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xff9f9f9f),
                  ),
                ),
                leading: Stack(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      child: FlutterLogo(),
                    ),
                    Positioned(
                      child: Container(
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(6)
                        ),
                      ),
                      bottom: 0,
                      right: 5,
                    ),
                  ],
                ),
                trailing: Column(
                  children: [
                    Text('9:30'),
                    SizedBox(height: 5,),
                    Container(
                      alignment: Alignment.center,
                      width: 26,
                      height: 26,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(13)
                      ),
                      child: Text(
                        '2',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    )
                  ],
                ),
              ),
              ListTile(
                title: Padding(
                  padding: EdgeInsets.only(bottom: 7),
                  child: Text(
                    'David Vang',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                subtitle: Text(
                  'Hello Charly Dang, ....',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xff9f9f9f),
                  ),
                ),
                leading: Stack(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      child: FlutterLogo(),
                    ),
                    Positioned(
                      child: Container(
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(6)
                        ),
                      ),
                      bottom: 0,
                      right: 5,
                    ),
                  ],
                ),
                trailing: Column(
                  children: [
                    Text('9:30'),
                    SizedBox(height: 5,),
                    Container(
                      alignment: Alignment.center,
                      width: 26,
                      height: 26,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(13)
                      ),
                      child: Text(
                        '2',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    )
                  ],
                ),
              ),
              ListTile(
                title: Padding(
                  padding: EdgeInsets.only(bottom: 7),
                  child: Text(
                    'David Vang',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                subtitle: Text(
                  'Hello Charly Dang, ....',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xff9f9f9f),
                  ),
                ),
                leading: Stack(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      child: FlutterLogo(),
                    ),
                    Positioned(
                      child: Container(
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(6)
                        ),
                      ),
                      bottom: 0,
                      right: 5,
                    ),
                  ],
                ),
                trailing: Column(
                  children: [
                    Text('9:30'),
                    SizedBox(height: 5,),
                    Container(
                      alignment: Alignment.center,
                      width: 26,
                      height: 26,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(13)
                      ),
                      child: Text(
                        '2',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    )
                  ],
                ),
              ),
              ListTile(
                title: Padding(
                  padding: EdgeInsets.only(bottom: 7),
                  child: Text(
                    'David Vang',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                subtitle: Text(
                  'Hello Charly Dang, ....',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xff9f9f9f),
                  ),
                ),
                leading: Stack(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      child: FlutterLogo(),
                    ),
                    Positioned(
                      child: Container(
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(6)
                        ),
                      ),
                      bottom: 0,
                      right: 5,
                    ),
                  ],
                ),
                trailing: Column(
                  children: [
                    Text('9:30'),
                    SizedBox(height: 5,),
                    Container(
                      alignment: Alignment.center,
                      width: 26,
                      height: 26,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(13)
                      ),
                      child: Text(
                        '2',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    )
                  ],
                ),
              ),
              ListTile(
                title: Padding(
                  padding: EdgeInsets.only(bottom: 7),
                  child: Text(
                    'David Vang',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                subtitle: Text(
                  'Hello Charly Dang, ....',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xff9f9f9f),
                  ),
                ),
                leading: Stack(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      child: FlutterLogo(),
                    ),
                    Positioned(
                      child: Container(
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(6)
                        ),
                      ),
                      bottom: 0,
                      right: 5,
                    ),
                  ],
                ),
                trailing: Column(
                  children: [
                    Text('9:30'),
                    SizedBox(height: 5,),
                    Container(
                      alignment: Alignment.center,
                      width: 26,
                      height: 26,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(13)
                      ),
                      child: Text(
                        '2',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    )
                  ],
                ),
              ),
              ListTile(
                title: Padding(
                  padding: EdgeInsets.only(bottom: 7),
                  child: Text(
                    'David Vang',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                subtitle: Text(
                  'Hello Charly Dang, ....',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xff9f9f9f),
                  ),
                ),
                leading: Stack(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      child: FlutterLogo(),
                    ),
                    Positioned(
                      child: Container(
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(6)
                        ),
                      ),
                      bottom: 0,
                      right: 5,
                    ),
                  ],
                ),
                trailing: Column(
                  children: [
                    Text('9:30'),
                    SizedBox(height: 5,),
                    Container(
                      alignment: Alignment.center,
                      width: 26,
                      height: 26,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(13)
                      ),
                      child: Text(
                        '2',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    )
                  ],
                ),
              ),
              ListTile(
                title: Padding(
                  padding: EdgeInsets.only(bottom: 7),
                  child: Text(
                    'David Vang',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                subtitle: Text(
                  'Hello Charly Dang, ....',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xff9f9f9f),
                  ),
                ),
                leading: Stack(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      child: FlutterLogo(),
                    ),
                    Positioned(
                      child: Container(
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(6)
                        ),
                      ),
                      bottom: 0,
                      right: 5,
                    ),
                  ],
                ),
                trailing: Column(
                  children: [
                    Text('9:30'),
                    SizedBox(height: 5,),
                    Container(
                      alignment: Alignment.center,
                      width: 26,
                      height: 26,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(13)
                      ),
                      child: Text(
                        '2',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    )
                  ],
                ),
              ),
              ListTile(
                title: Padding(
                  padding: EdgeInsets.only(bottom: 7),
                  child: Text(
                    'David Vang',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                subtitle: Text(
                  'Hello Charly Dang, ....',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xff9f9f9f),
                  ),
                ),
                leading: Stack(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      child: FlutterLogo(),
                    ),
                    Positioned(
                      child: Container(
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(6)
                        ),
                      ),
                      bottom: 0,
                      right: 5,
                    ),
                  ],
                ),
                trailing: Column(
                  children: [
                    Text('9:30'),
                    SizedBox(height: 5,),
                    Container(
                      alignment: Alignment.center,
                      width: 26,
                      height: 26,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(13)
                      ),
                      child: Text(
                        '2',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    )
                  ],
                ),
              ),
              ListTile(
                title: Padding(
                  padding: EdgeInsets.only(bottom: 7),
                  child: Text(
                    'David Vang',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                subtitle: Text(
                  'Hello Charly Dang, ....',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xff9f9f9f),
                  ),
                ),
                leading: Stack(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      child: FlutterLogo(),
                    ),
                    Positioned(
                      child: Container(
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(6)
                        ),
                      ),
                      bottom: 0,
                      right: 5,
                    ),
                  ],
                ),
                trailing: Column(
                  children: [
                    Text('9:30'),
                    SizedBox(height: 5,),
                    Container(
                      alignment: Alignment.center,
                      width: 26,
                      height: 26,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(13)
                      ),
                      child: Text(
                        '2',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    )
                  ],
                ),
              ),
              ListTile(
                title: Padding(
                  padding: EdgeInsets.only(bottom: 7),
                  child: Text(
                    'David Vang',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                subtitle: Text(
                  'Hello Charly Dang, ....',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xff9f9f9f),
                  ),
                ),
                leading: Stack(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      child: FlutterLogo(),
                    ),
                    Positioned(
                      child: Container(
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(6)
                        ),
                      ),
                      bottom: 0,
                      right: 5,
                    ),
                  ],
                ),
                trailing: Column(
                  children: [
                    Text('9:30'),
                    SizedBox(height: 5,),
                    Container(
                      alignment: Alignment.center,
                      width: 26,
                      height: 26,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(13)
                      ),
                      child: Text(
                        '2',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    )
                  ],
                ),
              ),
              ListTile(
                title: Padding(
                  padding: EdgeInsets.only(bottom: 7),
                  child: Text(
                    'David Vang',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                subtitle: Text(
                  'Hello Charly Dang, ....',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xff9f9f9f),
                  ),
                ),
                leading: Stack(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      child: FlutterLogo(),
                    ),
                    Positioned(
                      child: Container(
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(6)
                        ),
                      ),
                      bottom: 0,
                      right: 5,
                    ),
                  ],
                ),
                trailing: Column(
                  children: [
                    Text('9:30'),
                    SizedBox(height: 5,),
                    Container(
                      alignment: Alignment.center,
                      width: 26,
                      height: 26,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(13)
                      ),
                      child: Text(
                        '2',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    )
                  ],
                ),
              ),
              ListTile(
                title: Padding(
                  padding: EdgeInsets.only(bottom: 7),
                  child: Text(
                    'David Vang',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                subtitle: Text(
                  'Hello Charly Dang, ....',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xff9f9f9f),
                  ),
                ),
                leading: Stack(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      child: FlutterLogo(),
                    ),
                    Positioned(
                      child: Container(
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(6)
                        ),
                      ),
                      bottom: 0,
                      right: 5,
                    ),
                  ],
                ),
                trailing: Column(
                  children: [
                    Text('9:30'),
                    SizedBox(height: 5,),
                    Container(
                      alignment: Alignment.center,
                      width: 26,
                      height: 26,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(13)
                      ),
                      child: Text(
                        '2',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    )
                  ],
                ),
              ),
              ListTile(
                title: Padding(
                  padding: EdgeInsets.only(bottom: 7),
                  child: Text(
                    'David Vang',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                subtitle: Text(
                  'Hello Charly Dang, ....',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xff9f9f9f),
                  ),
                ),
                leading: Stack(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      child: FlutterLogo(),
                    ),
                    Positioned(
                      child: Container(
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(6)
                        ),
                      ),
                      bottom: 0,
                      right: 5,
                    ),
                  ],
                ),
                trailing: Column(
                  children: [
                    Text('9:30'),
                    SizedBox(height: 5,),
                    Container(
                      alignment: Alignment.center,
                      width: 26,
                      height: 26,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(13)
                      ),
                      child: Text(
                        '2',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
