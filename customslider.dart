import 'package:ecommerce/controller/onboarding_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/data/datasource/static/static.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return  PageView.builder(
      controller: controller.pageController,
      onPageChanged: (val){
        controller.onPageChangeed(val);
      },
        itemCount: onBoardingList.length,
        itemBuilder: (context, i) => Column(
          children: [
            Text(
              onBoardingList[i].title,
              style:const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: AppColor.black),
            ),
            const SizedBox(
              height: 70,
            ),
            Image.asset(
              onBoardingList[i].image,
            //  width:,
              height: 200,
              fit: BoxFit.fill,
            ),
            const  SizedBox(
              height: 80,
            ),
              Text(
                onBoardingList[i].body,
                textAlign: TextAlign.center,
                style:const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 15,color: AppColor.black),
              ),
            //  Container(
            //   width: double.infinity,
            //   alignment: Alignment.center,
            //   child: Text(
            //     onBoardingList[i].title!,
            //     textAlign: TextAlign.center,
            //     style:const TextStyle(
            //         height: 2,
            //         color: AppColor.grey,
            //         fontWeight: FontWeight.bold,
            //         fontSize: 12),
            //   ),
            // )
          ],
        )
    );
  }
}
