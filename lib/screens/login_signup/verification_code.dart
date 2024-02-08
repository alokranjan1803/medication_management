import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class VerificationCode extends StatelessWidget {
  const VerificationCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 80,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(children: [
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Forgot your password?",
                style: GoogleFonts.poppins(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Enter verification code we have sent to your\nnumber",
                style: GoogleFonts.poppins(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.black54),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width * 0.1,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(241, 245, 245, 245),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.black12),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0), // Adjust horizontal padding as desired
                  child: TextField(
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,

                    decoration: const InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      counterText: '', // Set counterText to an empty string
                      contentPadding:
                          EdgeInsets.zero, // Set contentPadding to zero
                    ),
                    maxLength: 1,
                    style: TextStyle(
                        fontSize: 20.sp), // Adjust font size as desired
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width * 0.1,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(241, 245, 245, 245),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.black12),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0), // Adjust horizontal padding as desired
                  child: TextField(
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,

                    decoration: const InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      counterText: '', // Set counterText to an empty string
                      contentPadding:
                          EdgeInsets.zero, // Set contentPadding to zero
                    ),
                    maxLength: 1,
                    style: TextStyle(
                        fontSize: 20.sp), // Adjust font size as desired
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width * 0.1,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(241, 245, 245, 245),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.black12),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0), // Adjust horizontal padding as desired
                  child: TextField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      counterText: '', // Set counterText to an empty string
                      contentPadding:
                          EdgeInsets.zero, // Set contentPadding to zero
                    ),
                    maxLength: 1,
                    style: TextStyle(
                        fontSize: 20.sp), // Adjust font size as desired
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width * 0.1,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(241, 245, 245, 245),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.black12),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0), // Adjust horizontal padding as desired
                  child: TextField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      counterText: '', // Set counterText to an empty string
                      contentPadding:
                          EdgeInsets.zero, // Set contentPadding to zero
                    ),
                    maxLength: 1,
                    style: TextStyle(
                        fontSize: 20.sp), // Adjust font size as desired
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
            width: MediaQuery.of(context).size.width * 0.9,
            child: ElevatedButton(
              onPressed: () {
                // Perform verification or other actions here
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 3, 190, 150),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(
                "Verify",
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
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don't recieve code yet? ",
                style:
                    GoogleFonts.poppins(fontSize: 15.sp, color: Colors.black87),
              ),
              Text(
                "Resend",
                style: GoogleFonts.poppins(
                  fontSize: 15.sp,
                  color: const Color.fromARGB(255, 3, 190, 150),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
