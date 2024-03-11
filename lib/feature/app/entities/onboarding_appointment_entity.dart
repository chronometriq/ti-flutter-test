

import 'package:flutter/material.dart';




class OnBoardingAppointmentEntity {
  DateTime? dateTime;
  String? title;
  Duration? duration;
  String? subTitle;
  String? place;
  String? cta;
  String? image;
  final GlobalKey globalKey;


  OnBoardingAppointmentEntity(
      { this.dateTime,
       this.title,
        this.duration,
       this.cta,
       this.image,
        required this.globalKey,
       this.place,
       this.subTitle});
}

/*
 AppointmentsItem(
        date: DateTime.now(),
        duration: const Duration(minutes: 30),
        title: "Counselling Session",
        subtitle: "Dr. Gregory House",
        place: 'LMC Optometry & Eye Care',
        cta: "Join virtual visit",
        image: Image.asset('images/house.png').image,
        condensed: verticalLayout,
      ),
      AppointmentsItem(
        date: DateTime.now(),
        duration: const Duration(minutes: 30),
        title: "Counselling Session",
        subtitle: "Dr. Gregory House",
        place: 'LMC Optometry & Eye Care',
        cta: "Check in",
        image: Image.asset('images/house.png').image,
 */

class OnBoardingAppointmentEntityList{
  static List<OnBoardingAppointmentEntity> justShowCaseList=[
    OnBoardingAppointmentEntity(globalKey: GlobalKey())
      ..dateTime=DateTime.now()
      ..subTitle='Dr. ***** ABC'
      ..place='LMC Optometry & Eye Care'
      ..image='images/house.png'
      ..duration=const Duration(minutes: 30)
      ..cta='Join virtual visit'
      ..title='Counselling Session',
    OnBoardingAppointmentEntity(globalKey: GlobalKey())
      ..dateTime=DateTime.now()
      ..subTitle='Dr. ***** XYZ'
      ..duration=const Duration(minutes: 30)
      ..place='LMC Optometry & Eye Care'
      ..image='images/house.png'
      ..cta='Check in'
      ..title='Counselling Session',
  ];
}



