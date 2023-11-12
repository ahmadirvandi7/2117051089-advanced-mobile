import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:justduit/screens/form_screen.dart';

void main() {
  runApp(const MyApp());
}
// This widget is the root of your application
//widget ada 2 -> stateless dan state full
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: const FormScreen(),
      // initialRoute: AppPages.INITIAL,
      // getPages: AppPages.routes,
    );
  }
}


