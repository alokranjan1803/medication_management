import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medication_management/screens/views/home_page.dart';
import 'package:medication_management/screens/views/doctor_details_screen.dart';
import 'package:medication_management/screens/widgets/doctor_list.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';



class DoctorSearch extends StatelessWidget {
  const DoctorSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pushReplacement(
                context,
                PageTransition(
                    type: PageTransitionType.fade, child: const HomePage()));
          },
          child: Container(
            height: 10,
            width: 10,
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage("lib/icons/back1.png"),
            )),
          ),
        ),
        title: Text(
          "Top Doctors",
          style: GoogleFonts.poppins(color: Colors.black, fontSize: 18.sp),
        ),
        centerTitle: true,
        elevation: 0,
        toolbarHeight: 100,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 10,
              width: 10,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("lib/icons/more.png"),
              )),
            ),
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
          child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.rightToLeft,
                      child: const DoctorDetails()));
            },
            child: const DoctorList(
                distance: "800m Away",
                image: "lib/icons/male-doctor.png",
                maintext: "Dr. Marcus Horizon",
                numRating: "4.7",
                subtext: "Cardiologist"),
          ),
          const DoctorList(
              distance: "800m Away",
              image: "lib/icons/docto3.png",
              maintext: "Dr. Marcus Horizon",
              numRating: "4.7",
              subtext: "Cardiologist"),
          const DoctorList(
              distance: "800m Away",
              image: "lib/icons/doctor2.png",
              maintext: "Dr. Marcus Horizon",
              numRating: "4.7",
              subtext: "Cardiologist"),
          const DoctorList(
              distance: "800m Away",
              image: "lib/icons/black-doctor.png",
              maintext: "Dr. Marcus Horizon",
              numRating: "4.7",
              subtext: "Cardiologist"),
          const DoctorList(
              distance: "800m Away",
              image: "lib/icons/male-doctor.png",
              maintext: "Dr. Marcus Horizon",
              numRating: "4.7",
              subtext: "Cardiologist"),
        ],
      )),
    );
  }
}
