import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:justduit/screens/home_screen.dart';

class FormLogin extends StatefulWidget {
  const FormLogin({super.key});

  @override
  State<FormLogin> createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  TextEditingController emailController = TextEditingController();
  bool isEmailValid = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F8FB),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          
          children: [
            Image.asset("assets/images/image1.png"),
            SizedBox(height: 16), // Add spacing between the image and the text
            Text(
              "Hi, Welcome Back to Justduit",
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w600,

              ),
            ),
            
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              padding: EdgeInsets.all(16),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  SizedBox(
                    height: 8,
                  ),

                  Row(
                    children: [
                      Text(
                        "Email Address",
                        style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "*",
                        style: TextStyle(color: Colors.red),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      errorText: isEmailValid ? null : "Email tidak valid",
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Text(
                        "Password",
                        style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                        ),
                        ),
                      Text(
                        "*",
                        style: TextStyle(color: Colors.red),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 8,
                  ),

                  SizedBox(
                    height: 16,
                  ),

                  SizedBox(
                    height: 52,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          isEmailValid = emailController.text.isNotEmpty;
                          if (isEmailValid) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const HomeScreen()
                                )
                            );
                          }
                        });
                      },
                      style: ElevatedButton.styleFrom(
                            primary: const Color(0xFF1E90FF),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                      ),
                      child: Text(
                        "Sign In Now",
                        style: GoogleFonts.poppins(
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
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Create New Account",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            height: 1.5,
                            color: const Color(0xFFA4A8AE),
                          ),
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