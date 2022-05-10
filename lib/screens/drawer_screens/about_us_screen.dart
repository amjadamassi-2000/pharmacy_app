import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../components/constant.dart';

class AboutUsScreen extends StatefulWidget {
  @override
  _AboutUsScreenState createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: primaryColor,
          centerTitle: true,
          elevation: 0.0,
          title: Text(
            "معلومات عنا",
            style: GoogleFonts.cairo(
              color: Colors.white,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: 20.h,
            ),
            Text(
              'اعرف اكثر عن فارما كير',
              style: GoogleFonts.cairo(
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              " تطبيق شفاء لطلب كل احتياجاتك من الصيدلية ، وسيصلك الطلب من أقرب صيدلية لعنوانك ، حيث يوفر لك التطبيق طلب بكل سهولة في أي وقت",
              style: GoogleFonts.cairo(
                color: Colors.black,
                fontSize: 15.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Text(
              'طلب الأدوية : ',
              style: GoogleFonts.cairo(
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "طلب الأدوية -طلب الأدوية بالروشتة أو صورة الدواء ، ويمكنك رفع أكثر من صورة وإضافة ملاحظاتك الخاصة مع الطلب -جدولة لأدويتك في الوقت المناسب لك ، أو طلبها في الحال لتصلك في أسرع وقت ممكن من أقرب صيدلية -سجل لكل طلباتك القديمة حتى تتمكن من مراجعته ومتابعة حالتك ، وإعادة الطلب منه بسهولة ",
              style: GoogleFonts.cairo(
                color: Colors.black,
                fontSize: 15.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              'طلب كل احتياجاتك من المتجر : ',
              style: GoogleFonts.cairo(
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              " بحث عن المنتجات التي تريدها بسهولة -متابعة أحدث العروض والخصومات من متجر فارما كير على كل منتجات العناية ومنتجات الصيدلية غير الدوائية",
              style: GoogleFonts.cairo(
                color: Colors.black,
                fontSize: 15.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'تابعونا على : ',
              style: GoogleFonts.cairo(
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: (10)),
                  padding: EdgeInsets.all((12)),
                  height: (50),
                  width: (50),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset("assets/images/twitter.svg"),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: (10)),
                  padding: EdgeInsets.all((12)),
                  height: (50),
                  width: (50),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset("assets/images/facebook-2.svg"),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: (10)),
                  padding: EdgeInsets.all((12)),
                  height: (50),
                  width: (50),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset(
                    "assets/images/instagram.svg",
                    width: 40,
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
