import 'package:ecommerce/controller/productdetails_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SubItemsList extends GetView<ProductDetailsControllerImp>{
  const SubItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    return   Row(
      children: [
        ...List.generate(controller.subitems.length,(index)=>
            Container(
              margin:const EdgeInsets.only(right: 10,),
              alignment: Alignment.center,
              padding:const EdgeInsets.only(bottom: 5),
              height: 60,
              width: 90,
              decoration: BoxDecoration(
                  color: controller.subitems[index]['active']=="1"? Colors.indigo: Colors.white,
                  border: Border.all(color: AppColor.grey),
                  borderRadius: BorderRadius.circular(10)),
              child: Text(
                controller.subitems[index]['name'],
                style: TextStyle(
                    color:controller.subitems[index]['active']=="1"? Colors.white: Colors.indigo,fontWeight: FontWeight.bold),
              ),
            ),)
      ],
    );
  }
}
