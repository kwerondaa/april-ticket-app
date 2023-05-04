
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class IconTextWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  const IconTextWidget({Key? key, required this.icon, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(12), vertical: AppLayout.getWidth(12)),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            AppLayout.getHeight(10),
          ), color: Colors.white
      ),
      child: Row(children: [
        Icon(
          icon, color: const Color(0xFFBFC2DF),
        ),
        Gap(AppLayout.getWidth(10)),
        Text(text, style: Styles.textStyle)
      ]),
    );
  }
}
