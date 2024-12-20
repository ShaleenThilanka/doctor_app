// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:doctor_channeling_app/constraint/colors.dart';
import 'package:flutter/material.dart';

class SpecialtyCard extends StatelessWidget {
  final String title;
  final String image;
  const SpecialtyCard({super.key, required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            height: 120,
            width: 160,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(image), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8),
                  child: Text(
                    this.title,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFF947566)),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 4.0, right: 4),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.verified_rounded,
                      color: AppColor.textBlueColor,
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
