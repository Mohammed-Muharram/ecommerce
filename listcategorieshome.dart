import 'package:ecommerce/controller/home_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/core/functions/translatedatabase.dart';
import 'package:ecommerce/data/model/categoriesmodel.dart';
import 'package:ecommerce/linkapi.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ListCategoriesHome extends GetView<HomeControllerImp> {
  const ListCategoriesHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.separated(
          separatorBuilder: (context,index)=>const SizedBox(width: 10,),
          itemCount: controller.categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
            return Categories(
              i:index,
              categoriesModel: CategoriesModel.fromJson(controller.categories[index]),);

          }
      ),
    );
  }
}
class Categories extends GetView<HomeControllerImp> {
  final CategoriesModel categoriesModel;
  final int? i;
  const Categories({super.key,
    required this.categoriesModel,
    this.i,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        controller.goToItems(controller.categories,i!,categoriesModel.categoryId!);
      },
      child: Column(
      children: [
        Container(

          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColor.primaryColor
          ),
          padding:const EdgeInsets.symmetric(horizontal: 10),
          height: 70,
          width: 80,
          child:
          // SvgPicture.network("${AppLink.imageCategories}/${categoriesModel.categoryImage}"),
          Image.asset("assets/images/itm.png",fit: BoxFit.fill,),

        ),Text("${translateDatabase(categoriesModel.categoryNamaAr, categoriesModel.categoryName)}",
          style: const
        TextStyle(fontSize: 14,color: AppColor.black),)
      ],),
    );
  }
}
