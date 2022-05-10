import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:pharm_care/screens/drawer_screens/illnesses_screen.dart';
import 'package:pharm_care/screens/ineer_screens/search_screen.dart';


import '../../components/constant.dart';
import '../../components/global_componnets.dart';
import '../../data.dart';
import '../../items/brand_item.dart';
import '../../items/category_item.dart';
import '../../items/product_item.dart';
import '../drawer_screens/about_us_screen.dart';
import '../drawer_screens/nearest _pharm_screen.dart';
import '../drawer_screens/orders_screen.dart';
import '../drawer_screens/saved_screen.dart';
import '../ineer_screens/all_brands_screen.dart';
import '../ineer_screens/offer_screen.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {



  List _carouselImages = [
    'assets/images/slider_5.jpeg',
    'assets/images/slider_2.jpg',
    'assets/images/slider_1.jpeg',
    'assets/images/slider_4.jpg',
    'assets/images/slider_3.jpeg',
  ];


  List _offerImages = [
    "https://img.freepik.com/free-psd/beauty-spa-banner-template_23-2148623659.jpg?t=st=1649922677~exp=1649923277~hmac=03fcc4d05e5412bb69f5c9af2caa2d5fdac5c727d2d21cb41f785c2ec074af56&w=826",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCHOv13ipMV5tavmGAO1xchfPLEzGerQGDzg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSya8XzsQoDnRsC0frxnByHqh6lbhPJsryWiw&usqp=CAU",

  ];






  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,

 //==================================================  APP BAR  =========================================================================================

        appBar: AppBar(
        title: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "        care",
                  textDirection: TextDirection.rtl,

                  style: GoogleFonts.cairo(
                    //textStyle: Theme.of(context).textTheme.headline4,
                    color: Color(0xffffbd22),
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  " Pharama ",
                  textDirection: TextDirection.rtl,
                  style: GoogleFonts.cairo(
                      fontSize: 18.sp,
                      color: subPrimaryColor,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),

          ],
        ),
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
         // iconTheme: IconThemeData(color: primaryColor),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: CircleAvatar(
                    child: const Icon(Icons.menu , color: primaryColor,),
                  backgroundColor: Colors.grey.shade200,
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),



      ),

//==================================================  DRAWER  =========================================================================================


        drawer: Padding(
          padding:  EdgeInsets.only(top: 33.h , bottom: 1.h),
          child: ClipRRect (
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.r),
              bottomLeft: Radius.circular(20.r),
            ),

            child: Drawer(
              child: Column(
                children: [

                  SizedBox(height: 50.h,),

                  Image.asset("assets/images/drawer_logo.png" ,width: 120,),
                  Text(
                    "pharmacy care",
                    style: GoogleFonts.cairo(
                      color: Colors.black,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),

                  SizedBox(height: 50.h,),

                  myListTiel(
                      "طلباتك",
                      Icon(Icons.fact_check_outlined , color: Colors.black), (){
                    To(context , OrdersScreen());

                  },
                  ),

                  myListTiel("المحفوظات" , Icon(Icons.download_outlined , color: Colors.black),(){
                    To(context , SavedProductScreen());

                  }),



                  myListTiel("الأمراض الشائعة" , Icon(Icons.masks , color: Colors.black),(){
                    To(context , IllnessesScreen());

                  }),



                  myListTiel("اقرب صيدلية" , Icon(Icons.location_on_outlined , color: Colors.black),(){
                    To(context , NearestPharmScreen());

                  }),



                  myListTiel("معلومات عنا" , Icon(Icons.info_outline , color: Colors.black),(){
                    To(context , AboutUsScreen());
                  }),

                  myListTiel("تسجيل خروج" , Icon(Icons.logout_outlined , color: Colors.black),(){}),

                ],
              ),
            ),

          ),
        ),

        body: SingleChildScrollView(

          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 10.w),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

//==================================================  SEARCH BAR  =========================================================================================


                DelayedDisplay(
                  delay: Duration(milliseconds: 200),
                  child: Padding(
                    padding:  EdgeInsets.only(left: 10.w , right: 10 , top: 20.h , bottom: 20.h),
                    child: InkWell(
                      onTap: (){
                        To(context, SearchScreen());
                      } ,
                      child: Container(
                        height: 43.h,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                       child:  Row(
                         children: [
                           SizedBox(width: 10.w),
                           Icon(Icons.search , color: Colors.grey,),
                           SizedBox(width: 10.w),
                           Text(
                             "ما الذي تبحث عنه",
                             style: GoogleFonts.cairo(
                               color: Colors.grey,
                               fontSize: 18.sp,
                             ),
                           ),
                         ],
                       ),
                      ),
                    ),
                  ),
                ),


 //==================================================  SLIDER  =========================================================================================


                DelayedDisplay(
                  delay: Duration(milliseconds: 300),


                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 8.w),
                    child: Container(
                      height: 160.h,
                      width: MediaQuery.of(context).size.width * 0.93,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Carousel(
                        autoplay: true,
                        animationCurve: Curves.easeInCirc,
                        animationDuration: Duration(milliseconds: 1000),
                        dotSize: 5,
                        dotIncreasedColor: Colors.white70,
                        dotPosition: DotPosition.bottomCenter,
                        showIndicator: true,
                        indicatorBgPadding: 5,
                        images: [
                          ExactAssetImage(_carouselImages[0]),
                          ExactAssetImage(_carouselImages[1]),
                          ExactAssetImage(_carouselImages[2]),
                          ExactAssetImage(_carouselImages[3]),
                          ExactAssetImage(_carouselImages[4]),
                        ],
                      ),
                    ),
                  ),
                ),

 //==================================================  CATEGORIES  =========================================================================================


                DelayedDisplay(
                  delay: Duration(milliseconds: 400),



                  child: Padding(
                    padding:  EdgeInsets.only( top: 8.h, bottom: 8.h ),
                    child: homeScreenHeaders("الأقسام"),
                  ),
                ),

                DelayedDisplay(
                  delay: Duration(milliseconds: 500),
                  child: Container(
                    alignment: Alignment.center,
                    child: AnimationLimiter(
                      child: GridView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        padding: EdgeInsets.symmetric(horizontal: 18)
                            .add(EdgeInsets.only(bottom:20)),

                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 0.4.h,
                          // number of items per row
                          crossAxisCount: 4,
                          // vertical spacing between the items
                          mainAxisSpacing: 2.h,
                          // horizontal spacing between the items
                          crossAxisSpacing: 10.w ,
                        ),
                        // number of items in your list
                        itemCount: 8,
                        itemBuilder: (context, index) {
                          return categores.map((e) => CategoryItem(categores[index])).toList()[index];
                        }
                      ),
                    ),
                  ),
                ),


//==================================================  Brands  =========================================================================================


                DelayedDisplay(
                  delay: Duration(milliseconds: 600),

                  child: Padding(
                    padding:  EdgeInsets.only(bottom: 8.h ),
                    child: homeScreenHeaders("ماركات مميزة"),
                  ),
                ),

                Container(
                  alignment: Alignment.center,
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.symmetric(horizontal: 18)
                        .add(EdgeInsets.only(bottom: 20)),

                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 2,
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 8,
                    ),
                    itemCount: 4,
                    itemBuilder: (context, index) => BrandItem(),
                  ),
                ),



                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 20.w),
                  child: InkWell(
                    onTap: (){
                          To(context , AllBrandsScreen());
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      height: 50.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        border: Border.all(color: primaryColor),
                        color: Colors.white,
                      ),
                      child: Text(
                        "عرض كل الماركات",
                        style: GoogleFonts.cairo(
                            fontSize: 16.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),


 //==================================================  OFFERS  =========================================================================================




                DelayedDisplay(
                  delay: Duration(milliseconds: 700),

                  child: Padding(
                    padding:  EdgeInsets.only(left: 220.w, bottom: 8.h ),
                    child: homeScreenHeaders("عروض"),
                  ),
                ),


                Container(
                  height: 120.h,
                  width: MediaQuery.of(context).size.width * 0.95.w,
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 10.w),
                    child: Swiper(
                      itemCount: _offerImages.length,
                      autoplay: true,
                      viewportFraction: 0.80,
                      scale: 0.7.r,
                      onTap: (index) {},
                      itemBuilder: (BuildContext ctx, int index) {
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(10.r),
                          child: InkWell(
                            onTap: (){
                              To(context , OfferScreen());
                            },
                            child: Container(
                              child: Image.network(
                                _offerImages[index],
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),


//==================================================  BEST SELLER  =========================================================================================


                Padding(
                  padding:  EdgeInsets.only(left: 200.w,top: 10.h , bottom: 5.h ),
                  child: homeScreenHeaders("الأكثر مبيعا"),
                ),

                Container(
                  height:MediaQuery.of(context).size.height * 0.40,
                  child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                    //  shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding:  EdgeInsets.only(left: 8.w  , bottom: 15.h , right: 5.w),
                          child: ProductItem(),
                        );
                      }),
                ),












              ],
            ),
          ),
        ),
      ),
    );
  }
}
