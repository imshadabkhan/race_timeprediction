import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  @override
  String selectedDistance = '500m';
  String selectedGender="Male";
  String selectedTime="30 min";
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(children: [
        SizedBox(height: 0.02.sh),
       Padding(
         padding:  EdgeInsets.symmetric(horizontal: 15.w),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
           Row(
             children: [
               Image(
                 image: AssetImage("assets/images/stopwatch.png"),
               ),
               SizedBox(width: 0.02.sw,),
               Text(
                 "Race Time Predictor",
                 style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.sp),
               ),

             ],
           ),
           SizedBox(height: 0.02.sh,),
           Text("Previous Race Information",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.sp),),
           SizedBox(height: 0.02.sh,),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Text(
                 'Distance',
                 style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.normal),
               ),

               Container(
                 width: 0.4.sw,
                 height: 0.04.sh,

                 decoration: BoxDecoration(border: Border.all(color: Color(0xffE2E2E2),width: 1),borderRadius: BorderRadius.circular(10)),
                 child: DropdownButton<String>(
                   elevation: 0,
                  underline: SizedBox(),
                  isExpanded: true,
                   focusColor: Colors.transparent,
                   value: selectedDistance,
                   onChanged: (String? newValue) {
                     setState(() {
                       selectedDistance = newValue!;
                     });
                   },
                   items: <String>['500m', '1km', '2km', '5km', '10km']
                       .map<DropdownMenuItem<String>>(
                         (String value) => DropdownMenuItem<String>(
                       value: value,
                       child: Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 4.0),
                         child: Text(value,style: TextStyle(fontSize: 12.sp),),
                       ),
                     ),
                   )
                       .toList(),
                 ),
               ),
             ],
           ),
             SizedBox(height: 0.01.sh,),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Text(
                 'Time',
                 style: TextStyle(fontSize: 15.sp),
               ),

               Container(
                 width: 0.4.sw,
                 height: 0.04.sh,

                 decoration: BoxDecoration(border: Border.all(color: Color(0xffE2E2E2),width: 1),borderRadius: BorderRadius.circular(10)),
                 child: DropdownButton<String>(
                   elevation: 0,
                   underline: SizedBox(),
                   isExpanded: true,
                   value: selectedTime,
                   onChanged: (String? newValue) {
                     setState(() {
                       selectedTime = newValue!;
                     });
                   },
                   items: <String>['30 min', '40 min', '1 hour',]
                       .map<DropdownMenuItem<String>>(
                         (String value) => DropdownMenuItem<String>(
                       value: value,
                       child: Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 4.0),
                         child: Padding(
                           padding: const EdgeInsets.symmetric(horizontal: 4.0),
                           child: Text(value,style: TextStyle(fontSize:12.sp),),
                         ),
                       ),
                     ),
                   )
                       .toList(),
                 ),
               ),
             ],
           ),
           SizedBox(height: 0.01.sh,),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Text(
                 'Sex',
                 style: TextStyle(fontSize: 15.sp),
               ),

               Container(
                 width: 0.4.sw,
                 height: 0.04.sh,

                 decoration: BoxDecoration(border: Border.all(color: Color(0xffE2E2E2),width: 1),borderRadius: BorderRadius.circular(10)),
                 child: DropdownButton<String>(
                   elevation: 0,
                   underline: SizedBox(),
                   isExpanded: true,
                   value: selectedGender,
                   onChanged: (String? newValue) {
                     setState(() {
                       selectedGender = newValue!;
                     });
                   },
                   items: <String>['Male', 'Female',]
                       .map<DropdownMenuItem<String>>(
                         (String value) => DropdownMenuItem<String>(
                       value: value,
                       child: Padding(
                         padding:  EdgeInsets.symmetric(horizontal: 4.0.sp),
                         child: Padding(
                           padding:  EdgeInsets.all(4.0.sp),
                           child: Text(value,style: TextStyle(fontSize: 12.sp),),
                         ),
                       ),
                     ),
                   )
                       .toList(),
                 ),
               ),
             ],
           ),

           SizedBox(height: 0.02.sh,),
           Text("Predicted Race Performance",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.sp),),

              Row(children: [
               Expanded(child: Container()),Text("More",style: TextStyle(color: Color(0xff8338EC),),),
             ],),

         ],),
       ),
        SizedBox(height: 0.01.sh,),
        Container(
            height: 0.06.sh,
            color: Colors.grey.withOpacity(.2),
            child:Padding(
              padding:  EdgeInsets.all(9.sp),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[
                        Text("Distance",style: TextStyle(fontWeight: FontWeight.bold),),
                        Text("Finish Time",style: TextStyle(fontWeight: FontWeight.bold),),
                        Text("Pace",style: TextStyle(fontWeight: FontWeight.bold),),
                      ],),
            ),),
        SizedBox(height: 0.01.sh,),
        Expanded(
          child: Container(
            child: ListView.builder(itemBuilder: (context,index){return
            Padding(
              padding:  EdgeInsets.all(8.sp),
              child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.sp),
                border: Border.all(color: Color(0xffE0E0E0)),
                gradient: LinearGradient(
                  colors: [
                    Color(0xffD988FF),
                    Color(0xffDFC8FF
                    ),
                  ]
                )
              ),
                child: Padding(
                  padding:  EdgeInsets.all(8.sp),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("400 m",style: TextStyle(fontSize: 15.sp),),
                    Text("00:40:00",style: TextStyle(fontSize: 15.sp),),
                    Text("2.45",style: TextStyle(fontSize: 15.sp),),
                  ],),
                ),
              ),
            );
          
            }),
          ),
        ),



      ]),
    ));
  }
}
