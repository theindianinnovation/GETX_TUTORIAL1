import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:getx_tutorial_1/secondScreen.dart';

class FirstScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First Screen'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 30),
            RaisedButton(
              onPressed: (){
                //Navigator.push(
                //    context,
                //    MaterialPageRoute(builder: (context) => SecondRoute()),
                Get.to(SecondScreen());
              },
              child: Text('Navigate to next screen .'),
            ),
            const SizedBox(height: 30),
            RaisedButton(
              onPressed: (){
                Get.defaultDialog(title: 'Get Dialog');
              },
              child: Text('Alert Dialog Button'),
            ),
            const SizedBox(height: 30),
            RaisedButton(
              onPressed: (){
                Get.snackbar('Get snackBar', 'Your content');
              },
              child: Text('Snackbar Button'),
            ),
            const SizedBox(height: 30),
            RaisedButton(
              onPressed: (){
                Get.bottomSheet(
                  Container(
                  child: Wrap(
                    children: <Widget>[
                      ListTile(
                          leading: Icon(Icons.music_note,color: Colors.red,),
                          title: Text('Music'),
                          onTap: () => {}),

                      SizedBox(
                        height: 100,
                      ),
                    ],
                  ),
                ),
                  backgroundColor: Colors.white,
                );
              },
              child: Text('Bottom Sheet Button'),
            ),
            const SizedBox(height: 30),
            RaisedButton(
              onPressed: (){
                Get.changeTheme(ThemeData.light());
              },
              child: Text('Change theme to lightMode .'),
            ),
            const SizedBox(height: 30),
            RaisedButton(
              onPressed: (){
                Get.changeTheme(ThemeData.dark());
              },
              child: Text('Change theme to darkMode .'),
            ),
            const SizedBox(height: 30),

          ],
        ),
      ),
    );
  }

}