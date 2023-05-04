import 'package:airticket/screens/ticket_view.dart';
import 'package:airticket/utils/app_info_list.dart';
import 'package:airticket/utils/app_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:barcode_widget/barcode_widget.dart';

import '../utils/app_styles.dart';
import '../widgets/column_layout.dart';
import '../widgets/layout_builder.dart';
import '../widgets/ticket_tabs.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: Stack(
          children: [
            ListView(
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(20),
                    vertical: AppLayout.getHeight(20)),
                children: [
                  Gap(40),
                  Text(
                    'Tickets',
                    style: Styles.headLineStyle,
                  ),
                  Gap(20),
                  TicketTab(
                    text1: "Upcoming",
                    text2: 'Previous',
                  ),
                  Gap(20),
                  Container(
                    child: TicketView(
                      ticket: ticketDetails[0],
                      isColor: true,
                    ),
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.0),
                    child: Container(
                      color: Colors.white,
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              ColumnLayout(
                                text1: "Flutter DB",
                                text2: "Passenger",
                                alignment: CrossAxisAlignment.start,
                                isColor: false,
                              ),
                              ColumnLayout(
                                text1: "262627167",
                                text2: "Passport",
                                alignment: CrossAxisAlignment.end,
                                isColor: false,
                              ),
                            ],
                          ),
                          Gap(20),
                          LayoutBuilderWidget(
                            sections: 15,
                            isColor: false,
                            width: 5,
                          ),
                          Gap(20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              ColumnLayout(
                                text1: "787878 27328",
                                text2: "Number of E-ticket",
                                alignment: CrossAxisAlignment.start,
                                isColor: false,
                              ),
                              ColumnLayout(
                                text1: "B37283",
                                text2: "Booking code",
                                alignment: CrossAxisAlignment.end,
                                isColor: false,
                              ),
                            ],
                          ),
                          Gap(20),
                          LayoutBuilderWidget(
                            sections: 15,
                            isColor: false,
                            width: 5,
                          ),
                          Gap(20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/visa.png',
                                        scale: 11,
                                      ),
                                      Text(
                                        '*** 2637',
                                        style: Styles.headLineStyle3,
                                      )
                                    ],
                                  ),
                                  const Text('Payment Method')
                                ],
                              ),
                              const ColumnLayout(
                                text1: "\$247.83",
                                text2: "Price",
                                alignment: CrossAxisAlignment.end,
                                isColor: false,
                              ),
                            ],
                          ),
                          Gap(40),
                          /*
                          bar code
                           */
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(21),
                            bottomLeft: Radius.circular(21))),
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    padding: EdgeInsets.only(top: 15, bottom: 15),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: AppLayout.getHeight(15)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: BarcodeWidget(
                            barcode: Barcode.code128(),
                            data: 'https://github.com/martinovo',
                            drawText: false,
                            color: Styles.textColor,
                            width: double.infinity,
                            height: 70),
                      ),
                    ),
                  ),

                  /*
                  Ticket*/
                  Gap(40),
                  TicketView(ticket: ticketDetails[0])
                ]),
            Positioned(
              left: 22,
              top: 295,
              child: Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Styles.textColor),
                ),
                child: CircleAvatar(maxRadius: 4, backgroundColor: Styles.textColor,),
              ),
            ),
            Positioned(
              right: 22,
              top: 295,
              child: Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Styles.textColor),
                ),
                child: CircleAvatar(maxRadius: 4, backgroundColor: Styles.textColor,),
              ),
            )
          ],
        ));
  }
}
