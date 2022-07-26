import 'package:flutter/material.dart';
import 'package:sport_club/res/asset.p.dart';
import 'package:sport_club/res/color.p.dart';

import '../res/style.p.dart';

class TTAppBar {
  static PreferredSizeWidget create({
    required BuildContext context,
    String? title,
    List<Widget>? actions,
    VoidCallback? onBackPressed,
    bool hasIcon = true,
  }) {
    return AppBar(
      leadingWidth: 75,
      elevation: 0,
      backgroundColor: Cl.white,
      centerTitle: true,
      title: Text(
        title ?? '',
        style: St.body16500.copyWith(color: Cl.black),
      ),
      leading: Padding(
        padding: const EdgeInsets.only(left: 27),
        child: SizedBox(
          height: 48,
          width: 48,
          child: InkWell(
            borderRadius: BorderRadius.circular(10),
            onTap: () {
              Navigator.of(context).pop();
              onBackPressed?.call();
            },
            child: Center(
              child: Image.asset(
                Id.ic_back_left,
                width: 24,
                height: 24,
              ),
            ),
          ),
        ),
      ),
      actions: actions,
    );
  }
}
