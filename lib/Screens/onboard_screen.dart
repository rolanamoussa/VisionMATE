 import 'package:flutter/material.dart';
import 'package:visionmate/Screens/WIDGETS/feature1.dart';
import 'package:visionmate/Screens/WIDGETS/feature2.dart';
import 'package:visionmate/Screens/WIDGETS/feature3.dart';
import 'package:visionmate/Screens/WIDGETS/feature4.dart';
import 'package:visionmate/Screens/WIDGETS/feature5.dart';
import 'package:visionmate/Screens/register_Screen.dart';

 class OnboardScreen extends StatefulWidget {
   const OnboardScreen({super.key});

   @override
   State<OnboardScreen> createState() => _OnboardScreenState();
 }

 class _OnboardScreenState extends State<OnboardScreen> {
   PageController _controller = PageController();
   int index = 0;

   @override
   Widget build(BuildContext context) {
     return SafeArea(
       child: Scaffold(
         backgroundColor: Color(0xFFD7ECFB),
         body: Column(
           children: [
             Expanded(
               child: PageView(
                 onPageChanged: (value) {
                   setState(() {
                     index = value;
                   });
                 },
                 controller: _controller,
                 children: [
                   featureOne(),
                   featuretwo(),
                   featurethree(),
                   featurefour(),
                   featurefive(),
                 ],
               ),
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: List.generate(
                 5,
                     (i) => Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 5),
                   child: CustomIndicator(active: index == i),
                 ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.all(30),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   InkWell(
                     onTap: () {
                       Navigator.push(
                         context,
                         MaterialPageRoute(builder: (context) => register()),
                       );
                     },
                     child: Text(
                       index == 2 ? "Register" : "Skip",
                       style: TextStyle(
                         fontSize: 20,
                         fontWeight: FontWeight.bold,
                       ),
                     ),
                   ),
                   InkWell(
                     onTap: () {
                       if (index == 4) {
                         Navigator.push(
                           context,
                           MaterialPageRoute(builder: (context) => register()),
                         );
                       } else {
                         _controller.animateToPage(
                           index + 1,
                           duration: Duration(milliseconds: 250),
                           curve: Curves.linear,
                         );
                       }
                     },
                     child: Text(
                       index == 4 ? "Login" : "Next",
                       style: TextStyle(
                         fontSize: 20,
                         fontWeight: FontWeight.bold,
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
 }

 class CustomIndicator extends StatelessWidget {
   final bool active;
   const CustomIndicator({super.key, required this.active});

   @override
   Widget build(BuildContext context) {
     return AnimatedContainer(
       duration: Duration(milliseconds: 250),
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(100),
         color: active ? Colors.blue : Colors.grey,
       ),
       width: active ? 30 : 10,
       height: 10,
     );
   }
 }

 // Placeholder screens
