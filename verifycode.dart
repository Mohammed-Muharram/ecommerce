import 'package:ecommerce/controller/forgetpassword/verifycode_controller.dart';
import 'package:ecommerce/core/class/handlingdataview.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/view/widget/auth/custmtextbodyauth.dart';
import 'package:ecommerce/view/widget/auth/custmtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

class VerifyCode extends StatelessWidget {
  const VerifyCode({super.key});

  @override
  Widget build(BuildContext context) {
     Get.put(VerifyCodeControllerImp());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle:true ,
        title: Text("".tr,
          style:Theme.of(context).textTheme.headlineLarge!
              .copyWith(color: AppColor.grey),),
        backgroundColor:AppColor.backgroundColor,
        elevation: 0.0,

      ),
      body:GetBuilder<VerifyCodeControllerImp>(builder: (controller)=>
      HandlingDataRequest(statusRequest: controller.statusRequest, widget:
          Container(
        padding:const EdgeInsets.symmetric(vertical: 15,horizontal: 30),
        child: ListView(children: [
          const SizedBox(height: 7,),
          CustmTextTitleAuth(text: "27".tr,),
          const SizedBox(height: 10,),
          CustmTextBodyAuth(text: "29".tr,),
          const SizedBox(height: 15,),

          OtpTextField(
            fieldWidth: 50.0,
            borderRadius: BorderRadius.circular(20),
            numberOfFields: 5,
            borderColor: const Color(0xFF512DA8),
            //set to true to show as box or false to show as dash
            showFieldAsBox: true,
            //runs when a code is typed in
            onCodeChanged: (String code) {
              //handle validation or checks here
            },
            //runs when every textfield is filled
            onSubmit: (String verificationCode){

              controller.goToResetPassword(verificationCode);
            }, // end onSubmit
          ),
          const SizedBox(height: 30,),

        ],),
      )
        ,)
      )
    );
  }
}
