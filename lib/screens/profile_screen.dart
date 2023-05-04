import 'package:airticket/utils/app_layout.dart';
import 'package:airticket/widgets/column_layout.dart';
import 'package:airticket/widgets/layout_builder.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_styles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20)),
        children: [
          Gap(AppLayout.getHeight(80)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppLayout.getHeight(86),
                width: AppLayout.getHeight(86),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage('assets/images/img_1.png'))),
              ),
              Gap(AppLayout.getHeight(10)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Book Tickets',
                    style: Styles.textStyle,
                  ),
                  Gap(AppLayout.getHeight(4)),
                  Text('New-York',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade500)),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color(0xFFFEF4F3),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xFF526799)),
                          child: Icon(
                            FluentIcons.shield_12_filled,
                            color: Colors.white,
                          ),
                        ),
                        Gap(4),
                        Text(
                          'Premium status',
                          style: TextStyle(
                              color: Color(0xFF526799),
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Spacer(),
              InkWell(
                  onTap: () {
                    print('tapped');
                  },
                  child: Text(
                    'Edit',
                    style: Styles.textStyle.copyWith(
                        color: Styles.primaryColor,
                        fontWeight: FontWeight.w300),
                  ))
            ],
          ),
          Gap(AppLayout.getHeight(10)),
          Divider(
            color: Colors.grey.shade300,
          ),
          Stack(
            children: [
              Container(
                height: AppLayout.getHeight(90),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Styles.primaryColor,
                    borderRadius: BorderRadius.circular(18)),
              ),
              Positioned(
                right: -45,
                top: -40,
                child: Container(
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 18, color: Color(0xFF264CD2))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        FluentIcons.lightbulb_filament_16_filled,
                        color: Styles.primaryColor,
                        size: 27,
                      ),
                    ),
                    const Gap(10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "You've got a new award",
                          style: Styles.headLineStyle2
                              .copyWith(color: Colors.white),
                        ),
                        const Gap(4),
                        Text("You have 160 flights in a year",
                            style: Styles.headLineStyle4
                                .copyWith(color: Colors.white))
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          Gap(AppLayout.getHeight(40)),
          Text(
            'Accumulated miles',
            style: Styles.headLineStyle2,
          ),
          Gap(AppLayout.getHeight(30)),
          Center(
              child: Text('922829',
                  style: Styles.headLineStyle.copyWith(fontSize: 50))),
          Gap(AppLayout.getHeight(30)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Miles accrued', style: Styles.headLineStyle4),
              Text('23 May 2021', style: Styles.headLineStyle4)
            ],
          ),
          Gap(AppLayout.getHeight(30)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ColumnLayout(
                text1: "23 032",
                text2: "Miles",
                alignment: CrossAxisAlignment.start,
                isColor: false,
              ),
              ColumnLayout(
                text1: "Airline Co",
                text2: "Recieved from",
                alignment: CrossAxisAlignment.end,
                isColor: false,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            child: LayoutBuilderWidget(
              sections: 12,
              isColor: false,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ColumnLayout(
                text1: "24",
                text2: "Miles",
                alignment: CrossAxisAlignment.start,
                isColor: false,
              ),
              ColumnLayout(
                text1: "McDonald's",
                text2: "Recieved from",
                alignment: CrossAxisAlignment.end,
                isColor: false,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            child: LayoutBuilderWidget(
              sections: 12,
              isColor: false,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ColumnLayout(
                text1: "63 738",
                text2: "Miles",
                alignment: CrossAxisAlignment.start,
                isColor: false,
              ),
              ColumnLayout(
                text1: "Exuma",
                text2: "Recieved from",
                alignment: CrossAxisAlignment.end,
                isColor: false,
              ),
            ],
          ),
          Gap(AppLayout.getHeight(30)),
          Center(
              child: InkWell(
                onTap: (){
                  print('tapped');
                },
                child: Text(
            'How to get more miles',
            style: Styles.headLineStyle4.copyWith(color: Styles.primaryColor, fontWeight: FontWeight.w500),
          ),
              )),
          Gap(AppLayout.getHeight(60))
        ],
      ),
    );
  }
}
