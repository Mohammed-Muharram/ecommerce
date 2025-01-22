import 'package:ecommerce/controller/auth/signup_controller.dart';
import 'package:ecommerce/core/class/handlingdataview.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/core/functions/aleatexitapp.dart';
import 'package:ecommerce/core/functions/validinput.dart';
import 'package:ecommerce/view/widget/auth/custmbuttonauth.dart';
import 'package:ecommerce/view/widget/auth/custmtextbodyauth.dart';
import 'package:ecommerce/view/widget/auth/custmtextformauth.dart';
import 'package:ecommerce/view/widget/auth/custmtexttitleauth.dart';
import 'package:ecommerce/view/widget/auth/textsignup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(()=>SignUpControllerImp());

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "17".tr,
          style: Theme.of(context).textTheme.headlineLarge!.copyWith(color: AppColor.grey),
        ),
        backgroundColor: AppColor.backgroundColor,
        elevation: 0.0,
      ),
      body:
    // ignore: deprecated_member_use
    WillPopScope(
    onWillPop: alertExitApp,
    child:
      GetBuilder<SignUpControllerImp>(builder: (controller)=>

      HandlingDataRequest(statusRequest: controller.statusRequest,widget:
          Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: Form(
          key: controller.formstate, // استخدام formState بدلاً من formstate
          child: ListView(
            children: [
              const SizedBox(height: 7),
              CustmTextTitleAuth(text: "10".tr),
              const SizedBox(height: 10),
              CustmTextBodyAuth(text: "11".tr),
              const SizedBox(height: 15),
              CustomTextFormAuth(
                isNumber: false,
                valid: (val) {
                  return validinput(val!, 5, 100, "username");
                },
                mycontroller: controller.username,
                hinttext: "23".tr,
                iconData: Icons.person_outline,
                labeltext: "20".tr,
              ),
              CustomTextFormAuth(
                isNumber: false,

                valid: (val) {
                  return validinput(val!, 5, 100, "email");
                },
                mycontroller: controller.email,
                hinttext: "12".tr,
                iconData: Icons.email_outlined,
                labeltext: "18".tr,
              ),
              CustomTextFormAuth(
                isNumber: true,

                valid: (val) {
                  return validinput(val!, 5, 100, "phone");
                },
                mycontroller: controller.phone,
                hinttext: "22".tr,
                iconData: Icons.phone_android_outlined,
                labeltext: "21".tr,
              ),
              CustomTextFormAuth(
                isNumber: true,

                valid: (val) {

                  return validinput(val!, 3, 30, "password");
                },
                mycontroller: controller.password,
                hinttext: "13".tr,
                iconData: Icons.lock_outline,
                labeltext: "19".tr,
                // mycontroller: ,
              ),
              CustmButtomAuth(
                text: "17".tr,
                onPressed: () {
                  controller.signUp();
                },
              ),
              const SizedBox(height: 30),
              CustmTextSignUpOrsignIn(
                textone: "25".tr,
                texttwo: "15".tr,
                onTap: () {
                  controller.goToSignIn(); // استخدام goToSignIn بدلاً من GoTosignIn
                },),
            ],
          ),
        ),
      )
      ))
      ,)
    );
  }
}


//======