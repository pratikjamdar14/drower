import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
//import 'package:flutter/src/widgets/placeholder.dart';

class MyHomepage extends StatefulWidget {
  const MyHomepage({super.key});

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  int _selected = 0;
  void changeSelected(int index) {
    setState(() {
      _selected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'Navigation Drawer',
          style: TextStyle(fontSize: 25),
        )),
      ),
      body: Center(
        child: Text(
          'Home page',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
      drawer: Container(
        width: 320,
        child: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('image/love.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(
                      image: AssetImage('image/you.png'),
                      height: 60,
                    ),
                    Text(
                      'Pratik Jamdar',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      children: const [
                        Text(
                          'Pratik_jamdar14@gmail.com',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          color: Colors.white,
                        )
                      ],
                    )
                  ],
                ),
              ),
              ListTile(
                selected: _selected == 0,
                leading: Icon(
                  Icons.folder,
                  size: 28,
                ),
                title: Text(
                  'My files',
                  style: TextStyle(
                    fontSize: 23,
                  ),
                ),
                onTap: () {
                  changeSelected(0);
                },
              ),
              ListTile(
                selected: _selected == 1,
                leading: Icon(
                  Icons.share,
                  size: 28,
                ),
                title: Text(
                  'Share',
                  style: TextStyle(
                    fontSize: 23,
                  ),
                ),
                onTap: () {
                  changeSelected(1);
                },
              ),
              ListTile(
                selected: _selected == 2,
                leading: Icon(
                  Icons.star,
                  size: 28,
                ),
                title: Text(
                  'Starred',
                  style: TextStyle(
                    fontSize: 23,
                  ),
                ),
                onTap: () {
                  changeSelected(2);
                },
              ),
              new Divider(
                thickness: 3,
                indent: 10,
                endIndent: 10,
              ),
              ListTile(
                selected: _selected == 3,
                leading: Icon(
                  Icons.file_upload,
                  size: 28,
                ),
                title: Text(
                  'Upload',
                  style: TextStyle(
                    fontSize: 23,
                  ),
                ),
                onTap: () {
                  changeSelected(3);
                },
              ),
              ListTile(
                selected: _selected == 4,
                leading: Icon(
                  Icons.settings,
                  size: 28,
                ),
                title: Text(
                  'Setting',
                  style: TextStyle(
                    fontSize: 23,
                  ),
                ),
                onTap: () {
                  changeSelected(4);
                },
              ),
              new Divider(
                thickness: 3,
                indent: 10,
                endIndent: 10,
              ),
              ListTile(
                selected: _selected == 5,
                leading: Icon(
                  Icons.info,
                  size: 28,
                ),
                title: Text(
                  'About',
                  style: TextStyle(
                    fontSize: 23,
                  ),
                ),
                onTap: () {
                  changeSelected(5);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
