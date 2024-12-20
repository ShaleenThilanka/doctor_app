// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:doctor_channeling_app/constraint/colors.dart';
import 'package:doctor_channeling_app/widget/datecard.dart';
import 'package:doctor_channeling_app/widget/doctorcard.dart';
import 'package:doctor_channeling_app/widget/specialty.dart';
import 'package:flutter/material.dart';

class OnlineScreen extends StatefulWidget {
  const OnlineScreen({super.key});

  @override
  State<OnlineScreen> createState() => _OnlineScreenState();
}

class _OnlineScreenState extends State<OnlineScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.mainBackGround,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Specialty",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                ),
                Text(
                  "See All",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: AppColor.textBlueColor),
                )
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SpecialtyCard(
                    title: "Oculist",
                    image:
                        "https://img.freepik.com/free-photo/female-optician-measuring-her-sight_1303-26275.jpg?t=st=1734670438~exp=1734674038~hmac=70da221097bcc3b029c690431b020a17db8b47ed4b356a6a1a2cccd86c1156bf&w=996"),
                SpecialtyCard(
                    title: "Dentist",
                    image:
                        "https://img.freepik.com/free-photo/dentist-making-professional-teeth-cleaning-withb-cotton-female-young-patient-dental-office_496169-907.jpg?t=st=1734670794~exp=1734674394~hmac=a54485bbc26b39ff41f28b6cedbc6b2c92da9ed97bad75b488ae6fe99a88ed06&w=996"),
                SpecialtyCard(
                    title: "GP",
                    image:
                        "https://img.freepik.com/free-photo/covid-19-coronavirus-outbreak-healthcare-workers-pandemic-concept-confident-male-doctor-professional-therapist-clinic-show-okay-gesture-recommend-guarantee-quality_1258-57510.jpg?t=st=1734670898~exp=1734674498~hmac=cb54fcbf0caa1f3fb32ba23978389c616e39931ca9d8a8d10c4fc0abbfe13bde&w=996"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Today 12 December",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.calendar_month,
                      color: Colors.black,
                    )),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Datecard(day: "S", date: "11", isDate: false),
                Datecard(day: "M", date: "12", isDate: true),
                Datecard(day: "T", date: "13", isDate: true),
                Datecard(day: "W", date: "14", isDate: false),
                Datecard(day: "T", date: "15", isDate: true),
                Datecard(day: "F", date: "16", isDate: true),
                Datecard(day: "S", date: "17", isDate: true),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Doctor",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Doctorcard(
                    exp: "10+ years experienced",
                    time: ["8.00", "9.00", "10.00"],
                    name: "Vinny Vang",
                    isSelected: false),
                Doctorcard(
                    exp: "10+ years experienced",
                    time: ["8.00", "9.00", "10.00"],
                    name: "Shapi Vang",
                    isSelected: true)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: AppColor.textBlueColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "12 Decmebr 9.00 AM",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Appoinments",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_circle_right,
                              color: Colors.white,
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
