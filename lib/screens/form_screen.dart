import 'package:flutter/material.dart';
import 'package:justduit/screens/form_login.dart';
import 'package:justduit/screens/root_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});
  @override
  State<FormScreen> createState() => _SignupscreenState();
}

class _SignupscreenState extends State<FormScreen> {
  TextEditingController usernameController = TextEditingController();
  bool isUsernameValid = true;

  void setName(String name) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('name', name);
  }

  void redirect() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.containsKey('name')) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const RootScreen(),
        ),
      );
    }
  }

  @override
  void initState() {
    super.initState();
    redirect();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F8FB),
      body: ListView(
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 65),
              child: Image.asset(
                "assets/images/image1.png",
                width: 199,
                height: 54,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 16,
            ),
            child: Text(
              "Sign Up Now and Unlock the Power of Justduit",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
          SafeArea(
            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              padding: const EdgeInsets.all(16.0), 

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      Text('Full Name'),
                      Text(
                        "*",
                        style: TextStyle(color: Colors.red),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  TextField(
                    controller: usernameController,
                    decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 16),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      errorText:
                          isUsernameValid ? null : "Username tidak valid",
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Row(
                    children: [
                      Text('Email Address'),
                      Text(
                        "*",
                        style: TextStyle(color: Colors.red),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 16),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Row(
                    children: [
                      Text('Password'),
                      Text(
                        "*",
                        style: TextStyle(color: Colors.red),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 8),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16)),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Row(
                    children: [
                      Text('Confirm Password'),
                      Text(
                        "*",
                        style: TextStyle(color: Colors.red),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 16),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16)),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all<Size>(Size(100, 55)),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color(0xFF1E90FF)),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                      ),
                      onPressed: () {
                        setState(() {
                          isUsernameValid = usernameController.text.isNotEmpty;
                        });
                        if (isUsernameValid) {
                          setName(usernameController.text);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const RootScreen(),
                            ),
                          );
                        }
                      },
                      child: const Text(
                        "Get Started",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: TextButton(
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all<Color>(
                            const Color(0XFFA4A8AE)),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const FormLogin()));
                      },
                      child: const Text(
                        "Sign In",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}