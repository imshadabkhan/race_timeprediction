// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// class Signup extends StatefulWidget {
//   const Signup({super.key});
//
//   @override
//   State<Signup> createState() => _SignupState();
// }
//
// class _SignupState extends State<Signup> {
//   bool value = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//             colors: [
//               Color(0xff8338EC),
//               // Color(0xff8338EC).withOpacity(.1),
//               Color(0xffFFFFFF),
//               Color(0xffFFFFFF),
//
//             ],
//           ),
//         ),
//         child: Column(
//           children: [
//             SizedBox(
//               height: 90,
//             ),
//             Text(
//               "Welcome to Race Predictor!",
//               style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold
//               ),
//             ),
//             SizedBox(
//               height: 35,
//             ),
//             Padding(
//               padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 15),
//               child: Container(
//
//                 child: Center(
//                   child: Stack(
//                     clipBehavior: Clip.none,
//                     alignment: Alignment.bottomCenter,
//                     children: [
//                       Card(
//                         color: Color(0xffFFFFFF),
//                         shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(20)),
//                         child: Container(
//                           decoration: BoxDecoration(
//                               color: Colors.white,
//                               borderRadius: BorderRadius.circular(50)),
//                           height: 0.5.sh,
//                           width: MediaQuery.sizeOf(context).width,
//                           child: Padding(
//                             padding: const EdgeInsets.symmetric(
//                                 vertical: 8.0, horizontal: 10),
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Padding(
//                                   padding: const EdgeInsets.all(8.0),
//                                   child: Text(
//                                     "Let's get started",
//                                     style: TextStyle(
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 15),
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   height: 0.05,
//                                 ),
//                                 Reuseable_TextField(
//                                   icon: Icon(Icons.person),
//                                   hint_txt: "username",
//                                 ),
//                                 Reuseable_TextField(
//                                   icon: Icon(Icons.email_outlined),
//                                   hint_txt: "Email Address",
//                                 ),
//                                 Reuseable_TextField(
//                                   icon: Icon(Icons.email_outlined),
//                                   hint_txt: "Password",
//                                 ),
//                                 Row(
//                                   children: [
//                                     Radio(
//                                         value: value,
//                                         groupValue: value,
//                                         onChanged: (value) {
//                                           setState(() {
//                                             value = value;
//                                           });
//                                         }),
//                                     Text(
//                                       "Remember me",
//                                       style: TextStyle(color: Colors.black),
//                                     ),
//                                   ],
//                                 )
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                       Positioned(
//                           bottom: -15,
//                           child: Container(
//
//                             child: Circle_Avatar(
//
//                               icon: Icon(Icons.arrow_forward_outlined,),radius: ,),
//                           )),
//
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//
//             SizedBox(height: 50,),
//             Text("or login using"),
//             Row(
//               children: [
//                 Circle_Avatar(
//                   icon: Icon(Icons.person),
//                 ),
//                 Circle_Avatar(
//                   icon: Icon(Icons.person),
//                 ),
//                 Circle_Avatar(
//                   icon: Icon(Icons.person),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class Circle_Avatar extends StatelessWidget {
//   Circle_Avatar({
//     this.icon,
//     this.radius,  });
//   var icon;
//   var radius;
//   @override
//   Widget build(BuildContext context) {
//     return CircleAvatar(
//       radius: radius,
//       child: icon,
//     );
//   }
// }
//
// class Reuseable_TextField extends StatelessWidget {
//   Reuseable_TextField({
//     this.hint_txt,
//     this.icon,
//   });
//   var hint_txt;
//   final icon;
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4),
//       child: TextFormField(
//
//         decoration: InputDecoration(
//           contentPadding: EdgeInsets.all(10),
//           prefixIcon: icon,
//           hintText: hint_txt,
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(10),
//           ),
//         ),
//       ),
//     );
//   }
// }
