import 'package:flutter/material.dart';
import '../../../app/theme/color.dart';
import '../../../app/widgets/custom_border.dart';
import '../../../app/widgets/custom_margin.dart';

class MyLearningCard extends StatelessWidget {
  final String? title;
  final String? subject;
  final String? grade;
  final String? image;
  final String? point;
  final String? maxPoint;
  final Color? myLearningColor;

  const MyLearningCard({
    Key? key,
    this.title,
    this.subject,
    this.grade,
    this.image,
    this.point,
    this.maxPoint,
    this.myLearningColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      child: Card(
        margin: kMarginSymetricHorizontalTiny,
        shape: kRoundedBorderRadiusSmall,
        color: myLearningColor ?? kWhiteColorShade800,
        shadowColor: kTransparentColor,
      ),
    );
  }
}