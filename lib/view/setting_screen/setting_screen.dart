import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:race_timeprediction/view/setting_screen/tabbar_view/long_view.dart';
import 'package:race_timeprediction/view/setting_screen/tabbar_view/middle_view.dart';
import 'package:race_timeprediction/view/setting_screen/tabbar_view/sprint_distance_view.dart';

class Setting_Screen extends StatefulWidget {
  Setting_Screen({super.key});

  @override
  State<Setting_Screen> createState() => _Setting_ScreenState();
}

class _Setting_ScreenState extends State<Setting_Screen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  List<bool> isSelected = [false, false, false];
  List<bool> is_Selected = [
    false,
    false,
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 15.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Image(
                      image: AssetImage("assets/images/setting.png"),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Text(
                      "Settings",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.sp),
                    ),
                  ],
                ),
                SizedBox(height: .03.sh),
                Text(
                  "Prediction formula",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
                ),
                SizedBox(
                  height: 0.02.sh,
                ),
                ToggleButtons(
                  children: [
                    Container(
                        width: (MediaQuery.of(context).size.width - 50) / 3,
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Text(
                              "vo2max",
                            )
                          ],
                        )),
                    Container(
                        width: (MediaQuery.of(context).size.width - 50) / 3,
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Text(
                              "Riegel",
                            )
                          ],
                        )),
                    Container(
                        width: (MediaQuery.of(context).size.width - 50) / 3,
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Text(
                              "Cameron",
                            )
                          ],
                        )),
                  ],
                  onPressed: (int index) {
                    setState(() {
                      isSelected[index] = !isSelected[index];
                    });
                  },
                  isSelected: isSelected,
                  color: Colors.black,
                  selectedColor: Colors.white,
                  fillColor: Color(0xff8338EC),
                  borderColor: Color(0xffE2E2E2),
                  borderWidth: 2,
                  borderRadius: BorderRadius.circular(10),
                ),
                SizedBox(
                  height: 0.03.sh,
                ),
                Text(
                  "Metric System",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
                ),
                SizedBox(
                  height: 0.02.sh,
                ),
                ToggleButtons(
                  children: [
                    Container(
                        height: MediaQuery.sizeOf(context).height * 0.05,
                        width: (MediaQuery.of(context).size.width - 50) / 2,
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Text(
                              "metric",
                            )
                          ],
                        )),
                    Container(
                        height: MediaQuery.sizeOf(context).height * 0.05,
                        width: (MediaQuery.of(context).size.width - 50) / 2,
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Text(
                              "imperial",
                            )
                          ],
                        )),
                  ],
                  onPressed: (int index) {
                    setState(() {
                      is_Selected[index] = !is_Selected[index];
                    });
                  },
                  isSelected: is_Selected,
                  color: Colors.black,
                  selectedColor: Colors.white,
                  fillColor: Color(0xff8338EC),
                  borderColor: Color(0xffE2E2E2),
                  borderWidth: 2,
                  borderRadius: BorderRadius.circular(10),
                ),
                SizedBox(
                  height: 0.03.sh,
                ),
                Row(
                  children: [
                    Text(
                      "Predicted Races",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.sp),
                    ),
                    SizedBox(
                      width: 0.01.sh,
                    ),
                    Icon(
                      Icons.perm_device_info_sharp,
                      color: Colors.black,
                      size: 15,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.w,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.sp),
                    border: Border.all(color: Colors.grey, width: 1),
                  ),
                  child: Column(
                    children: [
                      TabBar(
                        labelColor: Colors.black,
                        labelStyle: TextStyle(fontWeight: FontWeight.bold),
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicatorColor: Colors.black,
                        dividerColor: Colors.transparent,

                        tabs: [
                          Tab(text: "Sprint Distances"),
                          Tab(
                            text: "Middle",
                          ),
                          Tab(
                            text: "Long",
                          )
                        ],
                      ),
                      Container(
                          height: .2.sh,
                          child: TabBarView(
                            children: [
                              SprintDistanceView(),
                              MiddleView(),
                              LongView(),
                            ],
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  height: 0.03.sh,
                ),
                Text(
                  "About Us ",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 15.sp),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
