import 'package:get/get.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Screen'),),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('IsDarkMode on :' + Get.isDarkMode.toString()),SizedBox(height: 20,),
            Text('Anroid Platfom :' + GetPlatform.isAndroid.toString()),SizedBox(height: 20,),
            Text('Height :'+Get.height.toString()),SizedBox(height: 20,),
            Text('Width :'+Get.width.toString()),SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }

}