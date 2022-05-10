
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants/theme_data.dart';
import '../data.dart';
import '../enums.dart';
import '../models/menu_info.dart';
import 'alarm_page.dart';
import 'clock_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      backgroundColor: CustomColors.pageBackgroundColor.withGreen(20),
    backgroundColor: Colors.white,
      body: DelayedDisplay(
        delay: Duration(milliseconds:500),

        child: Row(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: menuItems
                  .map((currentMenuInfo) => buildMenuButton(currentMenuInfo))
                  .toList(),
            ),
            VerticalDivider(
              color: Colors.black,
              width: 1,
              indent: 40,
            ),
            Expanded(
              child: Consumer<MenuInfo>(
                builder: (BuildContext context, MenuInfo value, Widget child) {
                  if (value.menuType == MenuType.clock)
                    return ClockPage();
                  else if (value.menuType == MenuType.alarm)
                    return AlarmPage();


                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMenuButton(MenuInfo currentMenuInfo) {
    return Consumer<MenuInfo>(
      builder: (BuildContext context, MenuInfo value, Widget child) {
        return FlatButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(topRight: Radius.circular(32))),
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 0),
          color: currentMenuInfo.menuType == value.menuType
              ? CustomColors.menuBackgroundColor
              : Colors.transparent,
          onPressed: () {
            var menuInfo = Provider.of<MenuInfo>(context, listen: false);
            menuInfo.updateMenu(currentMenuInfo);
          },
          child: Column(
            children: <Widget>[
              Container(
                height: 20,
                width: 20,
                child: Image.asset(
                  currentMenuInfo.imageSource,
                  scale: 1.5,
                ),
              ),
              SizedBox(height: 16),
              Text(
                currentMenuInfo.title ?? '',
                style: TextStyle(
                    fontFamily: 'avenir',
                    color: Colors.black,
                    fontSize: 14),
              ),
            ],
          ),
        );
      },
    );
  }
}
