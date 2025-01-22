import 'package:ecommerce/controller/homescreen_controller.dart';
import 'package:ecommerce/view/widget/home/custombuttonappbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButtonAppbarHome extends StatelessWidget {
  const CustomButtonAppbarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetBuilder<HomescreenControllerImp>(
        builder: (controller)=> BottomAppBar(
          height: 65,
      padding:const EdgeInsets.symmetric(vertical: 10),
      shape:const CircularNotchedRectangle(),
      notchMargin: 10,
      child: Row(
        children: [
          ...List.generate(controller.listpage.length+1, (index){
            int i=index>2?index-1:index;
            return index==2?const Spacer():
            CustomButtonAppbar(textbuton:controller.titlebottomappbar[i],
              icondata: Icons.home,
              onPressed:(){
                controller.changePage(i);
              } ,
              active: controller.currentpage==i? true:false,);
          }
          )

        ],
      ),
    ));
  }
}
