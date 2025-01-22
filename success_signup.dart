import 'package:ecommerce/controller/auth/successsignupcontroller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/view/widget/auth/custmbuttonauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessSignUP extends StatelessWidget {
  const SuccessSignUP({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessSignUpControllerImp controller=Get.put(SuccessSignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle:true ,
        title: Text("38".tr,style:Theme.of(context).textTheme.headlineLarge!.copyWith(color: AppColor.grey),),
        backgroundColor:AppColor.backgroundColor,
        elevation: 0.0,

      ),
      body: Container(padding:const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
        const Center(child: Icon(Icons.check_circle_outline,size: 200,color: AppColor.primaryColor,)),
            Text("37".tr),
           const Spacer(),
            SizedBox(
              width: double.infinity,
              child: CustmButtomAuth(text: "31".tr,onPressed:(){
                controller.GoToPageLogin();
              }),
            ),
   const  SizedBox(height: 30,),
      ],),),
    );
  }
}
