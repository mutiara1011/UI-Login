import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_uts_mobile/main.dart';
import 'package:flutter_uts_mobile/login.dart';

class Register_Page extends StatefulWidget {
  const Register_Page({super.key});

  @override
  State<Register_Page> createState() => _Register_PageState();
}

class _Register_PageState extends State<Register_Page> {
  var passToggle = true;
  var isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 123, 114, 223),
      body: Center(
        child: Container(
          margin: EdgeInsetsDirectional.symmetric(horizontal: 35),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              'Welcome',
              style: TextStyle() = GoogleFonts.rokkitt(
                  color: Colors.white,
                  fontSize: 64,
                  fontWeight: FontWeight.w300),
            ),
            Text(
              'Create your account',
              style: TextStyle() = GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w300),
            ),
            SizedBox(height: 50),
            Form(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 206, 203, 203),
                  ),
                  child: TextFormField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Username",
                          hintStyle: TextStyle() = GoogleFonts.poppins(
                            color: Colors.white,
                          ),
                          prefixIcon: Align(
                            widthFactor: 1.0,
                            heightFactor: 1.0,
                            child: Icon(Icons.person),
                          ))),
                ),
                SizedBox(height: 15),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 206, 203, 203),
                  ),
                  child: TextFormField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "E-mail",
                          hintStyle: TextStyle() = GoogleFonts.poppins(
                            color: Colors.white,
                          ),
                          prefixIcon: Align(
                            widthFactor: 1.0,
                            heightFactor: 1.0,
                            child: Icon(Icons.email),
                          ))),
                ),
                SizedBox(height: 15),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 206, 203, 203),
                  ),
                  child: TextFormField(
                      obscureText: passToggle,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Password",
                          hintStyle: TextStyle() = GoogleFonts.poppins(
                            color: Colors.white,
                          ),
                          prefixIcon: Align(
                            widthFactor: 1.0,
                            heightFactor: 1.0,
                            child: Icon(Icons.lock),
                          ),
                          suffixIcon: InkWell(
                            onTap: () {
                              setState(() {
                                passToggle = !passToggle;
                              });
                            },
                            child: Icon(passToggle
                                ? Icons.visibility
                                : Icons.visibility_off),
                          ))),
                ),
                SizedBox(height: 15),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 206, 203, 203),
                  ),
                  child: TextFormField(
                      obscureText: passToggle,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Confirm Password",
                          hintStyle: TextStyle() = GoogleFonts.poppins(
                            color: Colors.white,
                          ),
                          prefixIcon: Align(
                            widthFactor: 1.0,
                            heightFactor: 1.0,
                            child: Icon(Icons.lock),
                          ),
                          suffixIcon: InkWell(
                            onTap: () {
                              setState(() {
                                passToggle = !passToggle;
                              });
                            },
                            child: Icon(passToggle
                                ? Icons.visibility
                                : Icons.visibility_off),
                          ))),
                ),
              ],
            )),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "By registering you are agreeing to our ",
                  style: TextStyle() = GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Terms of use and privacy policy.",
                  style: TextStyle() = GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                )
              ],
            ),
            SizedBox(height: 60),
            Container(
              child: ElevatedButton(
                  style: TextButton.styleFrom(
                      padding: EdgeInsetsDirectional.symmetric(
                          horizontal: 120, vertical: 10),
                      backgroundColor: Color.fromARGB(255, 65, 84, 255),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      )),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return HomePage();
                    }));
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Register Berhasil'),
                        duration: const Duration(milliseconds: 1000),
                        width: 200,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 70, vertical: 15),
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an Account? ",
                  style: TextStyle() = GoogleFonts.poppins(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Login_Page();
                    }));
                  },
                  child: Text(
                    "Login",
                    style: TextStyle() = GoogleFonts.poppins(
                      fontSize: 16,
                      color: Color.fromARGB(235, 27, 44, 199),
                    ),
                  ),
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
