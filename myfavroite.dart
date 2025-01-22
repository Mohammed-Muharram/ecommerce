import 'package:ecommerce/core/constant/routes.dart';
import 'package:ecommerce/view/widget/auth/caustmappbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class MyFavroite extends StatelessWidget {
  const MyFavroite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: ListView(children: [
        CaustmAppBar(
          titleappbar: "Find Product",
          onPressedIcon: (){},
          onPressedSearch: (){},
          onPressedIconFavorite:(){
            Get.toNamed(AppRoute.myfavroite);
          }
          ,),
      ],),),

    );
  }
}
