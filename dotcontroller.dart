import 'package:ecommerce/controller/onboarding_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/data/datasource/static/static.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CustomDotControllerOnBoarding extends StatelessWidget {
  const CustomDotControllerOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return   GetBuilder<OnBoardingControllerImp>(builder: (controller)=>Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(onBoardingList.length,(index)=>AnimatedContainer(
          margin: const EdgeInsets.only(right: 5),
          duration:const Duration(milliseconds: 900),
          width: controller.currentPage==index ? 20:5,
          height: 6,
          decoration: BoxDecoration(
              color: AppColor.primaryColor,
              borderRadius: BorderRadius.circular(10)
          ),

        )
        )
      ],));
  }
}
