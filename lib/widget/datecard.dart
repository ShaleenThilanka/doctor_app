import 'package:doctor_channeling_app/constraint/colors.dart';
import 'package:flutter/material.dart';

class Datecard extends StatelessWidget {
  final String day;
  final String date;
  final bool isDate;

  const Datecard(
      {super.key, required this.day, required this.date, required this.isDate});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Icon(
                Icons.dangerous,
                color: this.isDate ? Colors.white : AppColor.textBlueColor,
              ),
              Text(
                this.day,
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              Text(
                this.date,
                style: TextStyle(fontSize: 16, color: Colors.black),
              )
            ],
          ),
        ),
      ),
    );
  }
}
