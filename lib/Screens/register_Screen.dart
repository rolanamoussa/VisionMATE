import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:visionmate/Screens/homeScreen.dart';
import 'package:visionmate/Screens/login_Screen.dart';


class register extends StatelessWidget {

  var formkey = GlobalKey<FormState>();
  var emailcontroler = TextEditingController();
  var passwordcontroler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
        // Add your logo at the top
        Image.asset(
        "images/Vision Mate.png", // Replace with your actual logo path
          height: 200.h, // Adjust size as needed
          width: 250.w,
        ), //
            Text("Welcome",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 40),
              textAlign: TextAlign.center,

            ),
            SizedBox(
              height: 0,
            ),

            SizedBox(
              width: 350.w,
              height: 70.h,
              child:
              TextFormField(
                  decoration: InputDecoration(
                    labelText: "Enter your Email",
                    border: OutlineInputBorder (
                      borderRadius:
                      BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    ),
                    fillColor: Colors.grey[0],
                    filled: true,
                    contentPadding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                  ),



                  controller: emailcontroler,
                  validator: (value){
                    if(value!.isEmpty || value == null){
                      return "Enter your Email";
                    }else if (!value.contains("@")){
                      return "Invalid your Email";
                    }else {
                      return null;
                    }
                  }
              ),),

            SizedBox(height: 15,),

            SizedBox(
              width: 350.w,
              height: 70.h,
              child:
              TextFormField(
                  decoration: InputDecoration(
                    labelText: "Enter Password",
                    border: OutlineInputBorder (
                      borderRadius:
                      BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    ),
                    fillColor: Colors.grey[0],
                    filled: true,
                    contentPadding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                  ),
                  obscureText: true,

                  controller: passwordcontroler,
                  validator: (value){
                    if(value!.isEmpty || value == null){
                      return "Enter Password";
                    }else if (value.length<6){
                      return "Your password should me more than 6";
                    }else
                      return "Done";
                  }

              ),),
            SizedBox(height: 30.h),

            ElevatedButton(onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Homescreen()), // Navigate to HomeScreen
              );
            } ,
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue,
                padding:
                EdgeInsets.symmetric(horizontal: 100, vertical:10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text("Sign up",
                  style: TextStyle(color: Colors.white,
                      fontSize:20)),
            ),
            SizedBox(height: 5.h),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?",
                    style: TextStyle(color: Colors.black),),
                  TextButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> loginScreen()));
                  }, child: Text("Sign In",
                    style: TextStyle(color: Colors.blue),),

                  ),
                ]
            ),
          ],
        ),
      ),
    ),
    );

  }
}