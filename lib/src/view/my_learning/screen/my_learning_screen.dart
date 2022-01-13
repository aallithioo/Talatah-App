import 'package:flutter/material.dart';
import '../widget/my_learning_card.dart';
import '../../../app/route/route.dart';
import '../../../app/theme/color.dart';
import '../../../app/theme/theme.dart';
import '../../../app/widgets/custom_padding.dart';
import '../../../app/widgets/custom_sizebox.dart';

class MyLearningScreen extends StatefulWidget {
  const MyLearningScreen({Key? key}) : super(key: key);

  @override
  _MyLearningScreenState createState() => _MyLearningScreenState();
}

class _MyLearningScreenState extends State<MyLearningScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: kPaddingSymetricHorizontalLarge,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // TODO: Add header
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'My Learning',
                      style: talatah.textTheme.headline6!.copyWith(
                        color: talatah.textTheme.headline6!.color,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Divider(),
                    // TODO: Add list of quiz
                    ListView.builder(
                      scrollDirection: Axis.vertical,
                      physics: const ScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 3,
                      itemBuilder: (BuildContext context, int index) =>
                          GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, Routes.signIn);
                        },
                        child: Padding(
                          padding: kPaddingSymetricVerticalTiny,
                          child: MyLearningCard(
                            myLearningColor: kBlueColorShade300,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                kSizeBoxVerticalMedium,
              ],
            ),
          ),
        ),
      ),
    );
  }
}