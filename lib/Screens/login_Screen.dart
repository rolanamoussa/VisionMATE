import 'package:flutter/material.dart';
import 'package:visionmate/Screens/homeScreen.dart';
import 'package:visionmate/Screens/register_Screen.dart';


class loginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("images/login.png"),

            Text(
              "Login",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 30),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Email"),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter your email",
                      border: UnderlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text("Password"),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter your password",
                      border: UnderlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 20),
                  Align(alignment: Alignment.centerRight,
                    child: TextButton(onPressed:(){},
                      child: const Text("Forgot?" ,
                        style: TextStyle(fontSize: 15,
                            fontWeight: FontWeight.bold, color: Colors.blue
                        ),),
                    ),
                  ),

                  SizedBox(height: 30),

                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Homescreen()), // Navigate to HomeScreen
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue.shade400,
                        minimumSize: Size(double.infinity, 50),
                      ),
                      child: Text("Log In", style: TextStyle(color: Colors.white)),
                    ),
                  ),

                  SizedBox(height: 30),

                  Center(child: Text("Or login using")),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.g_mobiledata , size: 40, color: Colors.blue,
                      ),
                      Align(alignment: Alignment.center,
                        child: TextButton(onPressed:(){},
                          child: const Text("Google" ,
                            style: TextStyle(fontSize: 15,
                                fontWeight: FontWeight.bold, color: Colors.black
                            ),),
                        ),
                      ),
                      SizedBox(width: 30),
                      Icon(Icons.facebook, size: 40, color: Colors.blue,),
                      Align(alignment: Alignment.center,
                        child: TextButton(onPressed:(){},
                          child: const Text("facebook" ,
                            style: TextStyle(fontSize: 15,
                                fontWeight: FontWeight.bold, color: Colors.black
                            ),),
                        ),
                      ),
                    ],
                  ),

                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don’t have account?",
                          style: TextStyle(color: Colors.black),),
                        TextButton(onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> register()));
                        }, child: Text("Create now",
                          style: TextStyle(color: Colors.blue),),
                        ),
                      ]
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