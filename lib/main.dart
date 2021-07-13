//IconThemeData _customIconTheme(IconThemeData original) //메인 color를 삽입
//ThemeData _buildShrineTheme()//전체적인 테마 설정
//TextTheme _buildShrineTextTheme(TextTheme base) //텍스트 테마 설정

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Fixed Tabs'),
            automaticallyImplyLeading: false,
            backgroundColor: Color(0xf0f0f0f),
          ),
          body: Column(
            children: [
              TextFormField(
                //cursorColor: Theme.of(context).cursorColor,
                initialValue: 'Input text',
                maxLength: 20,

                decoration: InputDecoration(
                  icon: Icon(
                    Icons.calculate,
                    color: Colors.amber,
                    size: 50.0,
                  ),
                  labelText: 'Label text',
                  labelStyle: TextStyle(
                    color: Color(0xFF000000),
                  ),
                  helperText: 'Helper text',
                  suffixIcon: Icon(
                    Icons.check_circle,
                    color: Colors.amberAccent,
                    size: 40.0,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(2.0)),
                    borderSide: BorderSide(color: Colors.blue, width: 10.0),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
              ),
              TextFormField(
                initialValue: 'Input text',
                maxLength: 20,
                decoration: InputDecoration(
                  icon: Icon(Icons.favorite),
                  labelText: 'Label text',
                  labelStyle: TextStyle(
                    color: Color(0xFF6200EE),
                  ),
                  helperText: 'Helper text',
                  suffixIcon: Icon(
                    Icons.check_circle,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF6200EE)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
