import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final env = dotenv.env;

  GlobalKey<FormState> _globalFormKey = GlobalKey<FormState>();

  TextEditingController _keywordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Container(
          child: TextFormField(
            controller: _keywordController,
            decoration: InputDecoration(
                labelText: 'Search...',
                labelStyle: TextStyle(
                  fontSize: 20,
                  color: Color(0xff9f9f9f),
                )),
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
            textInputAction: TextInputAction.search,
            onFieldSubmitted: (String? value) {},
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        constraints: BoxConstraints.expand(),
        child: SingleChildScrollView(
          child: Stack(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      height: 42,
                      width: 107,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xffeeeeee),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.messenger_outline,
                            size: 18,
                          ),
                          Text(
                            'Chats',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      height: 42,
                      width: 107,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xffeeeeee),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.image_outlined,
                            size: 18,
                          ),
                          Text(
                            'Photos',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      height: 42,
                      width: 107,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xffeeeeee),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.videocam_outlined,
                            size: 18,
                          ),
                          Text(
                            'Videos',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      height: 42,
                      width: 107,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xffeeeeee),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.headset_outlined,
                            size: 18,
                          ),
                          Text(
                            'Audios',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
