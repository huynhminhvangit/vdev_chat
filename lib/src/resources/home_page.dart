import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:vdev_chat/src/resources/search_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final env = dotenv.env;


  _onSearch() {
    Navigator.push(context, MaterialPageRoute(builder: gotoSearch));
  }

  Widget gotoSearch(BuildContext context) {
    return SearchPage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(env['NAME'].toString()),
        elevation: 0,
        actions: [IconButton(onPressed: _onSearch, icon: Icon(Icons.search))],
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
                subtitle: Row(
                  children: [
                    Icon(
                      Icons.check_outlined,
                      color: Color(0xff9f9f9f),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Hello Charly Dang, ....',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff9f9f9f),
                      ),
                    ),
                  ],
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
                          borderRadius: BorderRadius.circular(6),
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
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 26,
                      height: 26,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(13),
                      ),
                      child: Text(
                        '2',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
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
                subtitle: Row(
                  children: [
                    Icon(
                      Icons.done_all_outlined,
                      color: Color(0xff9f9f9f),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Hello Charly Dang, ....',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff9f9f9f),
                      ),
                    ),
                  ],
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
                          borderRadius: BorderRadius.circular(6),
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
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 26,
                      height: 26,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(13),
                      ),
                      child: Text(
                        '2',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
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
                subtitle: Row(
                  children: [
                    Icon(
                      Icons.image_outlined,
                      color: Color(0xff9f9f9f),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Photo',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff9f9f9f),
                      ),
                    ),
                  ],
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
                          borderRadius: BorderRadius.circular(6),
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
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 26,
                      height: 26,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(13),
                      ),
                      child: Text(
                        '2',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
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
                subtitle: Row(
                  children: [
                    Icon(
                      Icons.videocam_outlined,
                      color: Color(0xff9f9f9f),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Video',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff9f9f9f),
                      ),
                    ),
                  ],
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
                          borderRadius: BorderRadius.circular(6),
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
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 26,
                      height: 26,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(13),
                      ),
                      child: Text(
                        '2',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
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
                subtitle: Row(
                  children: [
                    Icon(
                      Icons.check_outlined,
                      color: Color(0xff9f9f9f),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.headset_outlined,
                      color: Color(0xff9f9f9f),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Audio',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff9f9f9f),
                      ),
                    ),
                  ],
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
                          borderRadius: BorderRadius.circular(6),
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
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 26,
                      height: 26,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(13),
                      ),
                      child: Text(
                        '2',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
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
                subtitle: Row(
                  children: [
                    Text(
                      'Hello!',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff9f9f9f),
                      ),
                    ),
                  ],
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
                          borderRadius: BorderRadius.circular(6),
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
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 26,
                      height: 26,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(13),
                      ),
                      child: Text(
                        '2',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
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
                subtitle: Row(
                  children: [
                    Text(
                      'Hello!',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff9f9f9f),
                      ),
                    ),
                  ],
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
                          borderRadius: BorderRadius.circular(6),
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
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 26,
                      height: 26,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(13),
                      ),
                      child: Text(
                        '2',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
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
                subtitle: Row(
                  children: [
                    Text(
                      'Hello!',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff9f9f9f),
                      ),
                    ),
                  ],
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
                          borderRadius: BorderRadius.circular(6),
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
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 26,
                      height: 26,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(13),
                      ),
                      child: Text(
                        '2',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
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
                subtitle: Row(
                  children: [
                    Text(
                      'Hello!',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff9f9f9f),
                      ),
                    ),
                  ],
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
                          borderRadius: BorderRadius.circular(6),
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
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 26,
                      height: 26,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(13),
                      ),
                      child: Text(
                        '2',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.edit,
          color: Colors.white,
        ),
        backgroundColor: Colors.black,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedIconTheme: IconThemeData(
          color: Colors.black,
        ),
        unselectedIconTheme: IconThemeData(
          color: Color(0xff9f9f9f),
        ),
        selectedLabelStyle: TextStyle(
          fontSize: 14,
          color: Colors.black,
        ),
        unselectedLabelStyle: TextStyle(
          fontSize: 14,
          color: Color(0xff9f9f9f),
        ),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: Colors.black,
        unselectedItemColor: Color(0xff9f9f9f),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.messenger_outline,
            ),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.contacts_outlined,
            ),
            label: 'Contacts',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.call_outlined,
            ),
            label: 'Calls',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle_outlined,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
