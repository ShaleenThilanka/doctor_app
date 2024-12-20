// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:doctor_channeling_app/constraint/colors.dart';
import 'package:flutter/material.dart';

class Doctorcard extends StatelessWidget {
  final String name;
  final String exp;
  final List time;
  final bool isSelected;
  const Doctorcard(
      {super.key,
      required this.exp,
      required this.time,
      required this.name,
      required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150,
        width: 300,
        decoration: BoxDecoration(
          color: AppColor.whiteColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        maxRadius: 25,
                        backgroundImage: NetworkImage(
                            "https://img.freepik.com/free-photo/waist-up-portrait-handsome-serious-unshaven-male-keeps-hands-together-dressed-dark-blue-shirt-has-talk-with-interlocutor-stands-against-white-wall-self-confident-man-freelancer_273609-16320.jpg?t=st=1734671006~exp=1734674606~hmac=7de9cc867071215f303a8f146f1c66ad382799f63e0bfacbe8f9f21cf1ac20a1&w=996"),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            this.name,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            this.exp,
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.normal),
                          )
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_circle_right))
                    ],
                  )
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 80,
                    height: 40,
                    decoration: BoxDecoration(
                      color: isSelected ? AppColor.textBlueColor : Colors.white,
                      border: Border.all(
                        color: isSelected ? Colors.white : Colors.black,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            this.time[0],
                            style: TextStyle(
                                fontSize: 14,
                                color:
                                    isSelected ? Colors.white : Colors.black),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 80,
                    height: 40,
                    decoration: BoxDecoration(
                      color: isSelected ? AppColor.textBlueColor : Colors.white,
                      border: Border.all(
                        color: isSelected ? Colors.white : Colors.black,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            this.time[1],
                            style: TextStyle(
                                fontSize: 14,
                                color:
                                    isSelected ? Colors.white : Colors.black),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
