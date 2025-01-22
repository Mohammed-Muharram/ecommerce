import 'package:ecommerce/controller/homescreen_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/view/widget/home/custombouttonappbarhome.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomescreenControllerImp());
    return GetBuilder<HomescreenControllerImp>(builder: (controller)=>Scaffold(
         backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        // backgroundColor: Colors.white,
        onPressed: () {

        },
        child:const Icon(

// size: 40,
          Icons.shopping_cart,
          color: AppColor.primaryColor,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar:
      const CustomButtonAppbarHome(),
      body:
        controller.listpage.elementAt(controller.currentpage)
    ));
  }
}
