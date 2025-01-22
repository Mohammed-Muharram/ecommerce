import 'package:ecommerce/controller/forgetpassword/forgetpassword_controller.dart';
import 'package:ecommerce/core/class/handlingdataview.dart';

import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/view/widget/auth/custmbuttonauth.dart';
import 'package:ecommerce/view/widget/auth/custmtextbodyauth.dart';
import 'package:ecommerce/view/widget/auth/custmtextformauth.dart';
import 'package:ecommerce/view/widget/auth/custmtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
Get.put(ForgetPasswordControllerImp());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle:true ,
        title: Text("".tr,style:Theme.of(context).textTheme.headlineLarge!.copyWith(color: AppColor.grey),),
        backgroundColor:AppColor.backgroundColor,
        elevation: 0.0,

      ),
      body: GetBuilder<ForgetPasswordControllerImp>(builder: (controller)=>
      HandlingDataRequest(statusRequest:controller.statusRequest,widget:
        Container(
          key: controller.formstate,
        padding:const EdgeInsets.symmetric(vertical: 15,horizontal: 30),
        child: ListView(children: [
          const SizedBox(height: 7,),
          CustmTextTitleAuth(text: "12".tr,),
          const SizedBox(height: 10,),
          CustmTextBodyAuth(
            text:
            "29".tr,
          ),
          const SizedBox(height: 15,),

          CustomTextFormAuth(
            isNumber: false,

            valid: (val){
              // return null;


            },
            mycontroller: controller.email,
            hinttext: "12".tr,
            iconData: Icons.email_outlined,
            labeltext: "18".tr,
            // mycontroller: ,
          ),

          CustmButtomAuth(text: "30".tr,onPressed:(){
            // controller.checkemail();
            controller.goToVerfiyCode();
          }),
          const SizedBox(height: 30,),

        ],),
      ),))
    );
  }
}
