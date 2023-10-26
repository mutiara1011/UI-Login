import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_uts_mobile/login.dart';
import 'package:flutter_uts_mobile/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 123, 114, 223),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("lib/images/Vector.png"),
            SizedBox(height: 80),
            Container(
              width: 250,
              height: 50,
              child: ElevatedButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 65, 84, 255),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      )),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Login_Page();
                    }));
                  },
                  child: Text(
                    'Login',
                    style: TextStyle() = GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                  )),
            ),
            SizedBox(height: 15),
            Container(
              width: 250,
              height: 50,
              child: ElevatedButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 65, 84, 255),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      )),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Register_Page();
                    }));
                  },
                  child: Text(
                    'Register',
                    style: TextStyle() = GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
