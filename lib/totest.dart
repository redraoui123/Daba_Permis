import 'dart:async';
import 'dart:io';

import 'package:dabaPermis/OnBoardingPages/onBoardingPageOne.dart';
import 'package:dabaPermis/totest.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(Totest());
}

class Totest extends StatefulWidget {
  @override
  _TotestState createState() => _TotestState();
}

class _TotestState extends State<Totest> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Daba Permis',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MyHomePage(title: 'Home'),
      ),
      designSize: Size(375, 812),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PickedFile _image;
  File _selectedImage;
  Future getImage() async {
    try {
      final image = await ImagePicker().getImage(source: ImageSource.gallery);

      setState(() {
        _image = image;
        _selectedImage = File(_image.path);
      });
    } on PlatformException catch (e) {
      print('Failed to pick image : $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    // make app not rotatable
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(51, 139, 226, 1),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: ElevatedButton(
                  onPressed: () {
                    getImage();
                  },
                  child: Text('Click me'),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.center,
                width: 240,
                height: 300,
                color: Colors.blue[400],
                child: _image == null
                    ? Text('No image has been selected !')
                    : Image.file(
                        _selectedImage,
                        fit: BoxFit.fill,
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
