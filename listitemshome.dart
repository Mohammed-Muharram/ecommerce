import 'package:ecommerce/controller/home_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/data/model/itemsmodel.dart';
import 'package:ecommerce/linkapi.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ListItemsHome extends GetView<HomeControllerImp> {
  const ListItemsHome({super.key});

  @override
  Widget build(BuildContext context) {
    return
      SizedBox(height: 140,child: ListView.builder(
          itemCount: controller.items.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context , i){
            return ItemsHome(itemsModel: ItemsModel.fromJson(controller.items[i]),);
          }
      )
      );
  }
}
class ItemsHome extends StatelessWidget {
  final ItemsModel itemsModel;
  const ItemsHome({super.key, required this.itemsModel});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
    Container(
    padding:const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
    margin:const EdgeInsets.symmetric(horizontal: 10,),

    child:
    SvgPicture.network("${AppLink.imageItems}/${itemsModel.itemsImage}",
    // Image.asset("assets/images/images.png",
    height: 100,
    width: 150,
    fit: BoxFit.fill,)
    ),
    Container(
    decoration: BoxDecoration(
    // color: AppColor.grey.withOpacity(0.2),
      color: Colors.black.withOpacity(0.3),
      // color: AppColor.grey,
    borderRadius: BorderRadius.circular(20),
    ),
    height: 120,
    width: 180,
    ),
    Positioned(
    left:4,
    child:
    Text("${itemsModel.itemsName}",
    style:
    const TextStyle(color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 16),)),

    ],);
  }
}
