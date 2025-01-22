import 'package:ecommerce/controller/auth/login_controller.dart';
import 'package:ecommerce/core/class/handlingdataview.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/core/functions/aleatexitapp.dart';
import 'package:ecommerce/core/functions/validinput.dart';
import 'package:ecommerce/view/widget/auth/custmbuttonauth.dart';
import 'package:ecommerce/view/widget/auth/custmtextbodyauth.dart';
import 'package:ecommerce/view/widget/auth/custmtextformauth.dart';
import 'package:ecommerce/view/widget/auth/custmtexttitleauth.dart';
import 'package:ecommerce/view/widget/auth/logoauth.dart';
import 'package:ecommerce/view/widget/auth/textsignup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
     Get.put(LoginControlerImp());
    return Scaffold(
      backgroundColor:const Color(0xFFFFFFFF),
      appBar: AppBar(
        centerTitle:true ,
        title: Text("15".tr,style:Theme.of(context).textTheme.headlineLarge!.copyWith(color: AppColor.grey),),
        backgroundColor:AppColor.backgroundColor,
     elevation: 0.0,

      ),
          // ignore: deprecated_member_use
          body:WillPopScope(
            onWillPop: alertExitApp,
            child: GetBuilder<LoginControlerImp>(builder: (controller)=>
                HandlingDataRequest(statusRequest:controller.statusRequest ,
                  widget:  Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
              child: Form(
                key: controller.formstate,
                child: ListView(
                  children: [
                    const LogoAuth(),
                    const SizedBox(height: 1),
                    CustmTextTitleAuth(text: "10".tr),
                    const SizedBox(height: 10),
                    CustmTextBodyAuth(text: "24".tr),
                    const SizedBox(height: 20),
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
                    GetBuilder<LoginControlerImp>(builder: (controller)=>  CustomTextFormAuth(
                      obscureText: controller.ishowPassword,
                      onTapIcon: (){
                        controller.showPassword();
                      },
                      isNumber: false,
                      valid: (val) {
                        return validinput(val!, 3, 30, "password");
                      },
                      mycontroller: controller.password,
                      hinttext: "13".tr,
                      iconData: Icons.lock_outlined,
                      labeltext: "19".tr,
                    ),),
                    InkWell(
                      onTap: () {
                        controller.GoToForgetPassword();
                      },
                      child: Text(
                        "14".tr,
                        style:const TextStyle(color: Colors.blueAccent),
                        textAlign: TextAlign.end,
                      ),
                    ),
                    CustmButtomAuth(
                      text: "15".tr,
                      onPressed: () {
                        controller.login();
                      },
                    ),
                    const SizedBox(height: 30),
                    CustmTextSignUpOrsignIn(
                      textone: "16".tr,
                      texttwo: "17".tr,
                      onTap: () {
                        controller.GoTosignUp();
                      },
                    ),
                  ],
                ),
              ),
            ),
            )
            )
    ));
  }
}
