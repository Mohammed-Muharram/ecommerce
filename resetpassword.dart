import 'package:ecommerce/controller/forgetpassword/resetpassword_controller.dart';
import 'package:ecommerce/core/class/handlingdataview.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/view/widget/auth/custmbuttonauth.dart';
import 'package:ecommerce/view/widget/auth/custmtextbodyauth.dart';
import 'package:ecommerce/view/widget/auth/custmtextformauth.dart';
import 'package:ecommerce/view/widget/auth/custmtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/functions/validinput.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ResetPasswordControllerImp());

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "".tr,
          style: Theme.of(context).textTheme.headlineLarge!.copyWith(color: AppColor.grey),
        ),
        backgroundColor: AppColor.backgroundColor,
        elevation: 0.0,
      ),
      body: GetBuilder<ResetPasswordControllerImp>(builder: (controller)=>
      HandlingDataRequest(statusRequest:controller.statusRequest,widget
          :Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: Form(
          key: controller.formState,
          child: ListView(
            children: [
              const SizedBox(height: 7),
              CustmTextTitleAuth(text: "13".tr),
              const SizedBox(height: 10),
              CustmTextBodyAuth(text: "34".tr),
              const SizedBox(height: 15),
              CustomTextFormAuth(
                isNumber: false,
                valid: (val) {
                  return validinput(val!, 5, 30, "password");
                },
                mycontroller: controller.password,
                hinttext: "35".tr,
                iconData: Icons.lock,
                labeltext: "19".tr,
              ),
              CustomTextFormAuth(
                isNumber: false,
                valid: (val) {
                  return validinput(val!, 5, 30, "repassword");
                },
                mycontroller: controller.rePassword,
                hinttext: "43".tr,
                iconData: Icons.lock,
                labeltext: "19".tr,
              ),
              CustmButtomAuth(
                text: "33".tr,
                onPressed: () {
                  controller.resetPassword();
                },
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),)
      ),)
    );
  }
}