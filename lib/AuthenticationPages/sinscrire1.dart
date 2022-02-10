import 'package:dabaPermis/AuthenticationPages/sinscrire2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:page_transition/page_transition.dart';

Color phoneColor = Colors.grey[400];

class Sinscrire1 extends StatefulWidget {
  const Sinscrire1({Key key}) : super(key: key);

  @override
  _Myapp3State createState() => _Myapp3State();
}

DateTime _datetime;

final items = ['Homme', 'Femme'];

class _Myapp3State extends State<Sinscrire1> {
  String vvalue;
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
                      child: Text(
                        '1',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w800,
                          fontSize: 18,
                        ),
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
                        color: Colors.grey[500],
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      height: 35,
                      width: 35,
                      alignment: Alignment.center,
                      child: Text(
                        '2',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w800,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[500],
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    height: 5,
                    width: 100.w,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5.w),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[500],
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
              'Veuillez compléter votre profil pour une meilleure expérience',
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
                      keyboardType: TextInputType.text,
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
                          hintText: 'Nom complet'),
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
                          hintText: 'Ville'),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: 25.h, left: 20.w, right: 20.w),
                    child: InkWell(
                      onTap: () {
                        showDatePicker(
                          context: context,
                          initialDate: DateTime(DateTime.now().year - 1),
                          firstDate: DateTime(1940),
                          lastDate: DateTime(2022),
                        ).then((date) {
                          setState(() {
                            _datetime = date;
                          });
                        });
                      },
                      child: Container(
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
                              padding: EdgeInsets.only(left: 14, right: 24),
                              child: Icon(
                                FeatherIcons.calendar,
                                size: 30,
                                color: Colors.grey[500],
                              ),
                            ),
                            Text(
                              _datetime == null
                                  ? 'Date de naisance'
                                  : '${_datetime.day.toString() + " / " + _datetime.month.toString() + " / " + _datetime.year.toString()}',
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w500,
                                fontSize: 17,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  // drop down gender
                  Padding(
                    padding:
                        EdgeInsets.only(top: 25.h, left: 20.w, right: 20.w),
                    child: Container(
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
                            padding: EdgeInsets.only(left: 14, right: 24),
                            child: Icon(
                              FeatherIcons.tag,
                              size: 30,
                              color: Colors.grey[500],
                            ),
                          ),
                          Expanded(
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                value: vvalue,
                                iconSize: 36,
                                hint: Text(
                                  'Sexe ',
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 17,
                                  ),
                                ),
                                iconDisabledColor:
                                    Color.fromRGBO(51, 139, 226, 1),
                                iconEnabledColor: Colors.grey[600],
                                items: items.map(buildMenuITem).toList(),
                                onChanged: (value) {
                                  setState(() {
                                    this.vvalue = value;
                                  });
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // next button
                  Padding(
                    padding: EdgeInsets.only(
                        top: 25.h, left: 20.w, right: 20.w, bottom: 25.h),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.fade,
                                duration: Duration(milliseconds: 500),
                                child: Sinscrire2()));
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
                          'Suivant',
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
            ),
          ],
        ),
      ),
    );
  }

  DropdownMenuItem<String> buildMenuITem(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: TextStyle(
            color: Colors.grey[600],
            fontFamily: 'Lato',
            fontWeight: FontWeight.w800,
            fontSize: 18.sp,
            height: 1.5,
          ),
        ),
      );
}
