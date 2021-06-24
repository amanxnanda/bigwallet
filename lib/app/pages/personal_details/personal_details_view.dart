import 'package:flutter/material.dart';
import 'package:big_wallet/app/app.dart';
import 'package:get/get.dart';

/// A personal details view so user can put
/// all their personal information
class PersonalDetailsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) => GetBuilder<PersonalDetailsController>(
        builder: (controller) => Scaffold(
          key: const Key('PersonalDetailsKey'),
          backgroundColor: ColorsValue.backgroundColor,
          body: SafeArea(
            child: PageView(
              controller: controller.pageController,
              scrollDirection: Axis.vertical,
              allowImplicitScrolling: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                const PersonalPageWidget(),
                const EducationalPageWidget(),
              ],
            ),
          ),
        ),
      );
}
