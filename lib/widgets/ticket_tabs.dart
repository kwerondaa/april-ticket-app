import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/app_layout.dart';

class TicketTab extends StatelessWidget {
  final String text1;
  final String text2;
  const TicketTab({Key? key, required this.text1, required this.text2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              AppLayout.getHeight(50),
            ),
            color: const Color(0xFF4F6FD)),
        padding: const EdgeInsets.all(3.5),
        child: Row(
          children: [
            Container(
              padding:
              EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
              width: size.width * .44,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(AppLayout.getHeight(50))),
                  color: Colors.white),
              child:  Center(child: Text(text1)),
            ),
            Container(
              padding:
              EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
              width: size.width * .44,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                      right: Radius.circular(AppLayout.getHeight(50))),
                  color: const Color(0xFFF4F6FD)),
              child:  Center(child: Text(text2)),
            )
          ],
        ),
      ),
    );
  }
}
