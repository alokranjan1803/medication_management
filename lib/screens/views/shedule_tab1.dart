import 'package:flutter/material.dart';
import 'package:medication_management/screens/widgets/shedule_card.dart';

class ScheduleTab1 extends StatelessWidget {
  const ScheduleTab1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        SizedBox(
          height: 30,
        ),
        ScheduleCard(
          confirmation: "Confirmed",
          mainText: "Dr. Marcus Horizon",
          subText: "Cardiologist",
          date: "26/06/2022",
          time: "10:30 AM",
          image: "lib/icons/male-doctor.png",
        ),
        SizedBox(
          height: 20,
        ),
        ScheduleCard(
          confirmation: "Confirmed",
          mainText: "Dr. Marcus Horizon",
          subText: "Cardiologist",
          date: "26/06/2022",
          time: "2:00 PM",
          image: "lib/icons/female-doctor2.png",
        )
      ]),
    );
  }
}
