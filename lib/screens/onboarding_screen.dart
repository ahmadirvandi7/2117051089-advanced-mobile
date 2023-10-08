import 'package:flutter/material.dart';
import 'package:justduit/screens/form_login.dart';
import 'package:justduit/screens/form_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F8FB),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 103,
              left: 80,
              child: Image.asset("assets/images/img_figma1.png"),
            ),
            Positioned(
              top: 354,
              left: 16,
              child: Container(
                width: 328,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(16),
                        child: Text(
                          "Let’s start the journey",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            height: 1.5,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(16),
                        child: Center(
                          child: Text(
                            "Experience seamless digital transactions with JustDuit",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              height: 1.5,
                              color: const Color(0xFFA4A8AE), 
                            ),
                          ),
                        ),
                      ),

                      SizedBox(
                        width: 294,
                        height: 52,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context, MaterialPageRoute(
                                builder: (context)=> FormScreen()
                                ),
                              );
                          },
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xFF1E90FF),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          child: Text(
                            "Get Started",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),

                      Center(
                    child: TextButton(
                      onPressed: () {
                            Navigator.push(
                              context, MaterialPageRoute(
                                builder: (context)=> FormLogin()
                                ),
                              );
                      },
                      child: Text(
                        "I already have an account",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            height: 1.5,
                            color: const Color(0xFFA4A8AE),
                          ),
                        ),
                    ),
                  ),
                                            
                      // SizedBox(height: 4), 
                      // Container(
                      //   alignment: Alignment.center,
                      //   padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16), // Mengubah padding atas
                      //   child: Text(
                      //     "I already have an account",
                      //     style: TextStyle(
                      //       fontWeight: FontWeight.w400,
                      //       fontSize: 14,
                      //       height: 1.5,
                      //       color: const Color(0xFFA4A8AE),
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
