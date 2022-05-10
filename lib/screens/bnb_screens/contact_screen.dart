import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:url_launcher/url_launcher.dart';
import 'package:rating_dialog/rating_dialog.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../items/doctor_item.dart';


class ContactScreen extends StatefulWidget {
  @override
  _ContactScreenState createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  openwhatsapp() async {
    var whatsapp = "+972597667284";
    var whatsappURl_android = "whatsapp://send?phone=" + "${whatsapp}";
    var whatappURL_ios = "https://wa.me/$whatsapp";
    if (Platform.isIOS) {
      // for iOS phone only
      if (await canLaunch(whatappURL_ios)) {
        await launch(whatappURL_ios, forceSafariVC: false);
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: new Text("whatsapp no installed")));
      }
    } else {
      // android , web
      if (await canLaunch(whatsappURl_android)) {
        await launch(whatsappURl_android);
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("whatsapp no installed")));
      }
    }
  }







  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar:  AppBar(
          title:Column(
            children: [
              SizedBox(height: 10.h,),
              Text(
                " تواصل",
                style: GoogleFonts.cairo(
                  color: Color(0xffffbd22),
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          elevation: 0.0,
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        body: Padding(
          padding:  EdgeInsets.only(top: 20.h),
          child: ListView.builder(
            itemCount: 4,
            itemBuilder: (context , index){
              return InkWell(
                onTap: (){
                  openwhatsapp();
                },
                  child: DoctorItem());
            }
          ),
        ),
      ),
    );
  }
}
