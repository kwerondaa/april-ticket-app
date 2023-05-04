import 'package:airticket/utils/app_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_styles.dart';
import '../widgets/icon_text_widget.dart';
import '../widgets/section_heading.dart';
import '../widgets/ticket_tabs.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text(
            'What are\nyou looking for?',
            style:
                Styles.headLineStyle.copyWith(fontSize: AppLayout.getWidth(35)),
          ),
          Gap(AppLayout.getHeight(20)),
          const TicketTab(text1: 'Air Tickets', text2: 'Hotels',),
          const Gap(40),
          const IconTextWidget(
            icon: Icons.flight_takeoff_rounded,
            text: 'Departure',
          ),
          Gap(
            AppLayout.getHeight(15),
          ),
          const IconTextWidget(
            icon: Icons.flight_land_rounded,
            text: 'Arrival',
          ),
          Gap(AppLayout.getHeight(40)),
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getHeight(12),
                vertical: AppLayout.getWidth(18)),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  AppLayout.getHeight(10),
                ),
                color: const Color(0xD91130CE)),
            child: Center(
                child: Text("Find tickets",
                    style: Styles.textStyle.copyWith(color: Colors.white))),
          ),
          Gap(AppLayout.getHeight(40)),
          const SectionHeading(
              bigText: 'Upcoming Flights', smallText: 'View all'),
          Gap(AppLayout.getHeight(30)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(15),
                    vertical: AppLayout.getWidth(15)),
                //height: AppLayout.getHeight(400),
                width: size.width * 0.42,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      AppLayout.getHeight(20),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 1,
                          spreadRadius: 1)
                    ]),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(190),
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage('assets/images/sit.jpg'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(
                          AppLayout.getHeight(12),
                        ),
                      ),
                    ),
                    Gap(20),
                    Text(
                      "20% discount on early booking of this flight. Dont miss this deal, Dont miss this deal",
                      style: Styles.headLineStyle2,
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                        width: size.width * 0.44,
                        height: AppLayout.getHeight(184),
                        decoration: BoxDecoration(
                          color: Color(0Xff3ab888),
                          borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(18)),
                        ),
                        child: Column(
                          children: [
                            Text(
                              'Discount\nfor survey',
                              style: Styles.headLineStyle2
                                  .copyWith(color: Colors.white),
                            ),
                            Gap(10),
                            Text(
                              'Take the survey about our services and get a discount',
                              style: Styles.headLineStyle3
                                  .copyWith(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                          top: -40,
                          child: Container(
                        padding: EdgeInsets.all(AppLayout.getHeight(30)),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 18,
                              color: Color(0xFF189999),
                            ),color: Colors.transparent
                        ),
                      ))
                    ],
                  ),
                  Gap(20),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                    width: size.width * 0.44,
                    height: AppLayout.getHeight(184),
                    decoration: BoxDecoration(
                      color: Color(0Xffec6545),
                      borderRadius:
                      BorderRadius.circular(AppLayout.getHeight(18)),
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Take Love', textAlign: TextAlign.center,
                          style: Styles.headLineStyle2
                              .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        Gap(10),
                        RichText(
                            text: TextSpan(
                                children: [
                          TextSpan(text: '😍', style: TextStyle(fontSize: 28)),
                                  TextSpan(text: '😻', style: TextStyle(fontSize: 40)),
                                  TextSpan(text: '😘', style: TextStyle(fontSize: 28)),
                        ]))
                      ],
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
