import 'package:ecommerce/controller/onboarding_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/view/widget/onboarding/custimbutton.dart';
import 'package:ecommerce/view/widget/onboarding/customslider.dart';
import 'package:ecommerce/view/widget/onboarding/dotcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return const Scaffold(
      backgroundColor: AppColor.backgroundColor,
        body: SafeArea(
      child: Column(children:[
       Expanded(
          flex: 4,
          child: CustomSliderOnBoarding()
        ),
        Expanded(
            flex: 1,
            child: Column( children:[
              CustomDotControllerOnBoarding(),
               Spacer(flex: 3),
                CustimButtonOnBoarding()

        ],))
      ],
      )
    ));
  }
}
