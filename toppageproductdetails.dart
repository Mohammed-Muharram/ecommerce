import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce/controller/productdetails_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/linkapi.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class TopProductPagedDetails extends GetView<ProductDetailsControllerImp>{
  const TopProductPagedDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return  Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
            height: 180,
            decoration: const BoxDecoration(
              color: AppColor.primaryColor,
            )),
        Positioned(
            top: 30.0,
            right: Get.width / 8,
            left: Get.width / 8,
            child: Hero(
                tag: "${controller.itemsModel.itemsId}",
                child: CachedNetworkImage(
                  imageUrl: "${AppLink.imageItems}/${controller.itemsModel.itemsImage!}",
                  width: 100,
                  height: 150,
                  fit: BoxFit.fill,
                )))
      ],
    );
  }
}
