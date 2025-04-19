import 'package:flutter/material.dart';


class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _State();
}

class _State extends State<splashScreen> {
  @override
  void initState(){
    // TOOO: impement initState
    super.initState();
    Future.delayed(Duration(seconds:5),(){
      Navigator.pushNamed(context, "/OnboardScreen");
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF004AAD), Color(0xFF00A8E8)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("images/Vision Mate.png", height: 400),
              Text("VISION_MATE",
                style: TextStyle(color: Colors.white, fontSize: 40),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }}