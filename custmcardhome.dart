import 'package:ecommerce/controller/home_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustmCardHome extends GetView<HomeControllerImp> {
  final String title;
  final String body;
  const CustmCardHome({super.key,
    required this.title,
    required this.body});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.symmetric(vertical: 15),
      child: Stack(children: [
        Container(
          alignment: Alignment.center,
          height: 150,
          decoration: BoxDecoration(
              color: AppColor.red,
              borderRadius: BorderRadius.circular(20)),
          child: ListTile(
            title: Text(title, style:const TextStyle(color: Colors.white,fontSize: 20),),
            subtitle: Text(body,style:const TextStyle(color: Colors.white,fontSize: 30),),
          ),),
        Positioned(
          top: -20,
          right:controller.lang=="en"? -30:null ,
          left:controller.lang=="ar"? -40:null ,
          child: Container(height: 150,width: 150,decoration: BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.circular(160)
          ),),
        )
      ],),);
  }
}
