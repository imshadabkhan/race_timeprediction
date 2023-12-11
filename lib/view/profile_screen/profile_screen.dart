import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(
      child: Padding(
        padding:  EdgeInsets.symmetric(vertical: 8.0,horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            SizedBox(height: 0.03.sh,),
            Text('Profile',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.sp),),
         Center(child: Column(
           children: [
             Image(image: AssetImage("assets/images/profile.png"),height: 0.1.sh,),
             SizedBox(height: 10,),
             Text("Virat kohli",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18
         ),),
           ],
         )),
          SizedBox(height: 0.03.sh,),
            //// text fields  below
           Reuseable_Cards(text: "Email",subtxt: "viratkohli@example.com",),
            Reuseable_Cards(text: "Phone no",subtxt: "999999",),
            Reuseable_Cards(text: "change Password",subtxt: "viratkohli@example.com",icon: Icons.edit_calendar,),
            Reuseable_Cards(text: "About us",subtxt: "viratkohli@example.com",),
            Reuseable_Cards(text: "Log out",subtxt: "viratkohli@example.com",icon: Icons.logout,),


          ],
        ),
      ),
    ));
  }
}

class Reuseable_Cards extends StatelessWidget {
   Reuseable_Cards({
    this.text,this.subtxt,this.icon
  });
var text;
var subtxt;
var icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        height: 0.08.sh,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border:Border.all(color: Colors.grey)
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text(text,style: TextStyle(fontWeight: FontWeight.bold  ,fontSize: 8              ),),
                SizedBox(height: 1,),
                Text(subtxt),
              ],),
             Icon(icon,color: Colors.grey,),
            ],
          ),
        ),
      ),
    );
  }
}


