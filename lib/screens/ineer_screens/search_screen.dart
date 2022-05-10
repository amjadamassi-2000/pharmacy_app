import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:pharm_care/components/constant.dart';
import 'package:pharm_care/components/global_componnets.dart';
import 'package:speech_to_text/speech_to_text.dart'  as stt ;


class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {


  String _scanBarcode = '';
  TextEditingController search   = TextEditingController();

//  stt.SpeechToText _speech;
//  bool _isListening = false;
//  String recordedText = '';
//  double _confidence = 1.0;

  @override
  void initState() {
    super.initState();
//    _speech = stt.SpeechToText();

  }

//===================================== SEARCH USING BAR CODE ==================================================

  Future<void> scanBarcodeNormal() async {
    String barcodeScanRes;
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.BARCODE);
      print(barcodeScanRes);
    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
    }

    if (!mounted) return;
    setState(() {
      _scanBarcode = barcodeScanRes;
    });

    search.text = _scanBarcode;


  }

//===================================== SEARCH USING RECORDING ==================================================


//  void _listen() async {
//    if (!_isListening) {
//      bool available = await _speech.initialize(
//        onStatus: (val) => print('onStatus: $val'),
//        onError: (val) => print('onError: $val'),
//      );
//      if (available) {
//        setState(() => _isListening = true);
//        _speech.listen(
//          onResult: (val) => setState(() {
//            recordedText = val.recognizedWords;
//            if (val.hasConfidenceRating && val.confidence > 0) {
//              _confidence = val.confidence;
//            }
//          }),
//        );
//
//
//      }
//    } else {
//      setState(() => _isListening = false);
//      _speech.stop();
//
//      setState(() {
//        search.text = recordedText;
//      });
//    }
//
////    search.clear();
//
//  }



  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 50.h,
            ),
            Padding(
              padding:  EdgeInsets.only(right: 10.w),
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(50.r),
                      ),
                      child: TextFormField(
                        controller: search,
                        decoration: InputDecoration(
//                          hintText: "ما الذي تبحث عنه؟",
                          hintStyle: defaultTextStyleHint(),
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(right: 10.w),
                            child: Icon(
                              Icons.search_outlined,
                              color: Colors.black38,
                              size: 30,
                            ),
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),

                  Expanded(
                    flex: 1,
                    child:  InkWell(
                      onTap: (){
                        scanBarcodeNormal();
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.grey.shade200,
                        radius: 23.r,
                        child: Padding(
                          padding: EdgeInsets.only(right: 0.w),
                          child: Image.asset("assets/images/barcode.png"),
                        ),
                      ),
                    ),
                  ),
                ],
              ),


            ),

            SizedBox(
              height:3.h,
            ),

            LinearProgressIndicator(
              color: primaryColor,
            ),


          ],
        ),
      ),
    );


  }
}
