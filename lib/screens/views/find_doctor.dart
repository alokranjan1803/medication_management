import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medication_management/screens/views/doctor_details_screen.dart';
import 'package:medication_management/screens/widgets/doctor_list.dart';

import 'package:page_transition/page_transition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../widgets/list_icons.dart';





class FindDoctor extends StatelessWidget {
  const FindDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.width * 0.06,
              child: Image.asset("lib/icons/back2.png")),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: Column(
          children: [
            Text(
              "Find Doctor",
              style: GoogleFonts.inter(
                  color: const Color.fromARGB(255, 51, 47, 47),
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1),
            ),
          ],
        ),
        toolbarHeight: 130,
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: const BoxDecoration(),
              child: TextField(
                textAlign: TextAlign.start,
                textInputAction: TextInputAction.none,
                obscureText: false,
                keyboardType: TextInputType.emailAddress,
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  focusColor: Colors.black26,
                  fillColor: const Color.fromARGB(255, 247, 247, 247),
                  filled: true,
                  prefixIcon: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                      width: MediaQuery.of(context).size.width * 0.01,
                      child: Image.asset(
                        "lib/icons/search.png",
                        filterQuality: FilterQuality.high,
                      ),
                    ),
                  ),
                  prefixIconColor: const Color.fromARGB(255, 3, 190, 150),
                  label: const Text("Search doctor, drugs, articles..."),
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  "Top Doctor",
                  style: GoogleFonts.inter(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color.fromARGB(255, 46, 46, 46),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            children: [
              SizedBox(
                width: 10,
              ),
              ListIcons(icon: "lib/icons/Doctor.png", text: "General"),
              ListIcons(icon: "lib/icons/Lungs.png", text: "Lungs Prob"),
              ListIcons(icon: "lib/icons/Dentist.png", text: "General"),
              ListIcons(icon: "lib/icons/psychology.png", text: "Psychiatrist")
            ],
          ),
          const Row(
            children: [
              SizedBox(
                width: 10,
              ),
              ListIcons(icon: "lib/icons/covid.png", text: "General"),
              ListIcons(icon: "lib/icons/injection.png", text: "Lungs Prob"),
              ListIcons(icon: "lib/icons/cardiologist.png", text: "General"),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  "Recommended Doctors",
                  style: GoogleFonts.inter(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color.fromARGB(255, 46, 46, 46),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.rightToLeft,
                      child: const DoctorDetails()));
            },
            child: const DoctorList(
                distance: "800m away",
                image: "lib/icons/male-doctor.png",
                maintext: "Dr. Marcus Horizon",
                numRating: "4.7",
                subtext: "Cardiologist"),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  "Your Recent Doctors",
                  style: GoogleFonts.inter(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color.fromARGB(255, 46, 46, 46),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1400,
                width: MediaQuery.of(context).size.width * 0.2900,
                child: Column(children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.100,
                    width: MediaQuery.of(context).size.width * 0.1900,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage("lib/icons/male-doctor.png"),
                            filterQuality: FilterQuality.high)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text("Dr. Marcus")],
                  )
                ]),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1400,
                width: MediaQuery.of(context).size.width * 0.2900,
                child: Column(children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.100,
                    width: MediaQuery.of(context).size.width * 0.1900,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage("lib/icons/female-doctor.png"),
                            filterQuality: FilterQuality.high,
                            fit: BoxFit.contain)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text("Dr. Maria")],
                  )
                ]),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1400,
                width: MediaQuery.of(context).size.width * 0.2900,
                child: Column(children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.100,
                    width: MediaQuery.of(context).size.width * 0.1900,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(
                              "lib/icons/black-doctor.png",
                            ),
                            fit: BoxFit.contain,
                            filterQuality: FilterQuality.high)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text("Dr. Luke")],
                  )
                ]),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
