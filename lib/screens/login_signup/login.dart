import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medication_management/screens/login_signup/forgot_pass.dart';
import 'package:medication_management/screens/login_signup/login_signup.dart';
import 'package:medication_management/screens/login_signup/register.dart';

import 'package:medication_management/screens/widgets/auth_text_field.dart';
import 'package:medication_management/screens/widgets/auth_social_login.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../views/home_page.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.width * 0.06,
              child: Image.asset("lib/icons/back2.png")),
          onPressed: () {
            Navigator.push(
                context,
                PageTransition(
                    type: PageTransitionType.leftToRight,
                    child: const LoginSignup()));
          },
        ),
        centerTitle: true,
        title: Text(
          "Login",
          style: GoogleFonts.inter(
              color: Colors.black87,
              fontSize: 22.sp,
              fontWeight: FontWeight.w700,
              letterSpacing: 0),
        ),
        toolbarHeight: 110,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(children: [
            const SizedBox(
              height: 40,
            ),
            //Text field Login import from Auth_text_field widget
            const AuthTextField(text: "Enter you email", icon: "lib/icons/email.png"),
            const SizedBox(
              height: 5,
            ),
            //Text field Password
            const AuthTextField(
                text: "Enter your password", icon: "lib/icons/lock.png"),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.bottomToTop,
                          child: const ForgotPass()));
                },
                child: Text(
                  "Forgot your password?",
                  style: GoogleFonts.poppins(
                      fontSize: 15.sp,
                      color: const Color.fromARGB(255, 3, 190, 150),
                      fontWeight: FontWeight.w500),
                ),
              )
            ]),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width * 0.9,
              child: ElevatedButton(
                onPressed: () {
                  // Perform verification or other actions here
                  Navigator.pushReplacement(
                      context,
                      PageTransition(
                          type: PageTransitionType.fade, child: const HomePage()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 3, 190, 150),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: GestureDetector(
                  onTap: () {

                  },
                  child: Text(
                    "Login",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 18.sp,
                      color: const Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account? ",
                  style:
                      GoogleFonts.poppins(fontSize: 15.sp, color: Colors.black87),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.rightToLeft,
                            child: const Register()));
                  },
                  child: Text(
                    "Sign Up",
                    style: GoogleFonts.poppins(
                      fontSize: 15.sp,
                      color: const Color.fromARGB(255, 3, 190, 150),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: Divider()),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "or",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(child: Divider()),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const AuthSocialLogins(
                logo: "images/google.png", text: "Sign in with Google"),
            const SizedBox(
              height: 20,
            ),
            const AuthSocialLogins(logo: "images/apple.png", text: "Sign in Apple"),
            const SizedBox(
              height: 20,
            ),
            const AuthSocialLogins(
                logo: "images/facebook.png", text: "Sign in facebook")
          ]),
        ),
      ),
    );
  }
}
