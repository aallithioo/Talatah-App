import 'package:flutter/material.dart';

import '../widgets/custom_border.dart';

import '../enums.dart';
import '../routes/route.dart';
import '../themes/color.dart';
import 'custom_border.dart';
import 'custom_padding.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kPaddingAllMedium,
      child: Container(
        padding: kPaddingSymetricVerticalSmall / 1.5,
        decoration: BoxDecoration(
          color: kSecondaryColor,
          borderRadius: kBorderRadiusSmall,
        ),
        child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(
                  Icons.view_in_ar_outlined,
                  color: MenuState.home == selectedMenu
                      ? kAccentColor
                      : kAccentColor.withOpacity(0.3),
                ),
                onPressed: () => Navigator.pushNamed(
                  context,
                  Routes.home,
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.settings_rounded,
                  color: MenuState.setting == selectedMenu
                      ? kAccentColor
                      : kAccentColor.withOpacity(0.3),
                ),
                onPressed: () => Navigator.pushNamed(
                  context,
                  Routes.setting,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
