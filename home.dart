import 'package:ecommerce/controller/home_controller.dart';
import 'package:ecommerce/core/class/handlingdataview.dart';
import 'package:ecommerce/core/constant/routes.dart';
import 'package:ecommerce/view/widget/auth/caustmappbar.dart';
import 'package:ecommerce/view/widget/home/custmcardhome.dart';
import 'package:ecommerce/view/widget/home/customtitlehome.dart';
import 'package:ecommerce/view/widget/home/listcategorieshome.dart';
import 'package:ecommerce/view/widget/home/listitemshome.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
  Get.put(HomeControllerImp());
    return
      GetBuilder<HomeControllerImp>(builder: (controller)=>HandlingDataView(
        statusRequest: controller.statusRequest, widget: Container(
          
        padding: const EdgeInsets.symmetric(horizontal: 15),

        child: ListView(
          children: [
            CaustmAppBar(
              titleappbar: "Find Product",
              onPressedIcon: (){},
              onPressedSearch: (){},
              onPressedIconFavorite:(){
                Get.toNamed(AppRoute.myfavroite);
              }
              ,),
          const CustmCardHome(title: "A summer surprise", body: "Cashback 20%"),
            const  CustomTitleHome(title:"Categories" ),
          const  ListCategoriesHome(),
          const  CustomTitleHome(title:"Product for you" ),
           const ListItemsHome(),
          const CustomTitleHome(title: "Offer"),
            const ListItemsHome(),

          ],)
        ,)
        ,)
      );

  }
}
