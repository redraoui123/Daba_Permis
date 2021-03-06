import 'dart:io';
import 'package:dabaPermis/AuthenticationPages/confirmAccount.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:page_transition/page_transition.dart';
import 'package:image_picker/image_picker.dart';

Color phoneColor = Colors.grey[400];

class Sinscrire3 extends StatefulWidget {
  Sinscrire3({Key key}) : super(key: key);

  @override
  _Myapp3State createState() => _Myapp3State();
}

class _Myapp3State extends State<Sinscrire3> {
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
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 150.h,
          centerTitle: true,
          backgroundColor: Color.fromRGBO(51, 139, 226, 1),
          leading: Padding(
            padding: EdgeInsets.only(top: 15.h),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                FeatherIcons.arrowLeft,
                size: 35,
                color: Colors.white,
              ),
            ),
          ),
          title: Image.asset(
            'images/Logo_white.png',
            height: 120.h,
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 28.h, bottom: 30.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 5.w),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(51, 139, 226, 1),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      height: 35,
                      width: 35,
                      alignment: Alignment.center,
                      child: Icon(
                        FeatherIcons.check,
                        size: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(51, 139, 226, 1),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    height: 5,
                    width: 100.w,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5.w, right: 5.w),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(51, 139, 226, 1),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      height: 35,
                      width: 35,
                      alignment: Alignment.center,
                      child: Icon(
                        FeatherIcons.check,
                        size: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(51, 139, 226, 1),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    height: 5,
                    width: 100.w,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5.w),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(51, 139, 226, 1),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      height: 35,
                      width: 35,
                      alignment: Alignment.center,
                      child: Text(
                        '3',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w800,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              'Veuillez compl??ter votre profil pour une meilleure exp??rience',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromRGBO(51, 139, 226, 1),
                fontFamily: 'Lato',
                fontWeight: FontWeight.w800,
                fontSize: 18.sp,
                height: 1.5,
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            Expanded(
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20.w, right: 20.w),
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(left: 14, right: 24),
                            child: Icon(
                              FeatherIcons.user,
                              size: 30,
                              color: Colors.grey[500],
                            ),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          // input border style
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide:
                                BorderSide(color: Colors.grey[400], width: 2.0),
                          ),
                          // focused input border style
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(
                                color: Color.fromRGBO(51, 139, 226, 1),
                                width: 2.0),
                          ),
                          hintText: 'Cin'),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: 25.h, left: 20.w, right: 20.w),
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(left: 14, right: 24),
                            child: Icon(
                              FeatherIcons.mapPin,
                              size: 30,
                              color: Colors.grey[500],
                            ),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          // input border style
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide:
                                BorderSide(color: Colors.grey[400], width: 2.0),
                          ),
                          // focused input border style
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(
                                color: Color.fromRGBO(51, 139, 226, 1),
                                width: 2.0),
                          ),
                          hintText: 'Adresse'),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: 25.h, left: 20.w, right: 20.w),
                    child: InkWell(
                      onTap: () {
                        getImage();
                      },
                      child: _image == null
                          ? Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.grey[400],
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              height: 55,
                              width: 335.w,
                              child: Row(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 14, right: 24),
                                    child: Icon(
                                      FeatherIcons.image,
                                      size: 30,
                                      color: Colors.grey[500],
                                    ),
                                  ),
                                  Text(
                                    'Photo de profile',
                                    style: TextStyle(
                                      color: Colors.grey[600],
                                      fontFamily: 'Lato',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 17,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          : Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              height: 250.h,
                              // child:
                              child: Image.file(
                                _selectedImage,
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 45.h, left: 20.w, right: 20.w, bottom: 25.h),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.rightToLeft,
                                duration: Duration(milliseconds: 500),
                                child: ConfirmAccount()));
                      },
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(51, 139, 226, 1),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        height: 55,
                        width: 335.w,
                        child: Text(
                          'T??rminer',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w700,
                            fontSize: 18.sp,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
