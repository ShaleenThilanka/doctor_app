// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:doctor_channeling_app/constraint/colors.dart';
import 'package:doctor_channeling_app/screen/home_screen_tab_view/online_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late TabController tabController;
  int _tabIndex = 0;
  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.mainBackGround,
        appBar: AppBar(
          backgroundColor: AppColor.mainBackGround,
          titleSpacing: 0,
          title: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Ariana Denaver",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
              Text(
                "Feamale, 25 y.o",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Colors.black38),
              ),
            ],
          ),
          leading: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://www.freepik.com/free-vector/woman-with-long-dark-hair_395229319.htm#fromView=search&page=1&position=31&uuid=e8e13b7b-1947-43d4-a2ad-5482ac3ea480"),
                  ),
                ],
              ),
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  size: 26,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications,
                  size: 26,
                ))
          ],
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(color: AppColor.whiteColor),
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.home,
                      color: Colors.black,
                    )),
              ),
              Container(
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.dashboard, color: AppColor.grayColor)),
              ),
              Container(
                child: IconButton(
                    onPressed: () {},
                    icon:
                        Icon(Icons.calendar_month, color: AppColor.grayColor)),
              ),
              Container(
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.person, color: AppColor.grayColor)),
              )
            ],
          ),
        ),
        body: Column(
          children: [
            Container(
              height: 40,
              margin: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                border: Border.all(width: 0.3),
              ),
              child: TabBar(
                  controller: tabController,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    color: AppColor.blackColor,
                  ),
                  indicatorWeight:
                      0, // Set indicator weight to 0 to remove underline
                  labelColor: Colors.white,
                  unselectedLabelColor: Color.fromARGB(255, 28, 131, 216),
                  labelStyle: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                  ),
                  unselectedLabelStyle: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                  ),
                  padding: EdgeInsets.all(4),
                  tabs: [
                    Tab(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        child: Text("online"),
                      ),
                    ),
                    Tab(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        child: Text("offline"),
                      ),
                    )
                  ]),
            ),
            Expanded(
                child: TabBarView(controller: tabController, children: [
              OnlineScreen(),
              Center(
                child: Text(
                  "Offline Content",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              )
            ]))
          ],
        ));
  }
}