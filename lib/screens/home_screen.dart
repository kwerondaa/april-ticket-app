import 'package:airticket/screens/ticket_view.dart';
import 'package:airticket/utils/app_info_list.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_styles.dart';
import 'hotel_view.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final List _posts = ['Post1', "post2", 'Post3', "post4"];
  final List _stories = ['story1', 'story2', 'story3', 'story4'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(60),
                //good mng & logo
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good morning',
                          style: Styles.headLineStyle3,
                        ),
                        Gap(5),
                        Text(
                          "Book Tickets",
                          style: Styles.headLineStyle,
                        )
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              image: AssetImage('assets/images/img_1.png'),
                              fit: BoxFit.cover)),
                    ),
                  ],
                ),
                const Gap(20),
                //search bar
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFF4F6FD)),
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Row(
                    children: [
                      Icon(
                        FluentIcons.search_12_regular,
                        color: primary,
                      ),
                      Text('Search')
                    ],
                  ),
                ),
                //sub header
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Upcoming Flights",
                      style: Styles.headLineStyle2,
                    ),
                    InkWell(
                        onTap: () {},
                        child: Text(
                          "View all",
                          style: Styles.textStyle
                              .copyWith(color: Styles.primaryColor),
                        ))
                  ],
                ),
              ],
            ),
          ),
          Gap(20),
          //Tickets
          SingleChildScrollView(
            padding: const EdgeInsets.only(right: 20),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: ticketDetails
                  .map((singleTicket) => TicketView(ticket: singleTicket))
                  .toList(),
            ),
          ),

          //Subheading
          const Gap(20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hotels",
                  style: Styles.headLineStyle2,
                ),
                InkWell(
                    onTap: () {},
                    child: Text(
                      "View all",
                      style:
                          Styles.textStyle.copyWith(color: Styles.primaryColor),
                    ))
              ],
            ),
          ),
          const Gap(20),

          //Hotel screens
          SingleChildScrollView(
              padding: const EdgeInsets.only(right: 20),
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: hotelList
                      .map((singleHotel) => HotelView(hotel: singleHotel))
                      .toList()))
        ],
      ),
    );
  }
}
