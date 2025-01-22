import 'package:ecommerce/controller/favorite_controller.dart';
import 'package:ecommerce/controller/items_constroller.dart';
import 'package:ecommerce/core/class/handlingdataview.dart';
import 'package:ecommerce/data/model/itemsmodel.dart';
import 'package:ecommerce/view/widget/auth/caustmappbar.dart';
import 'package:ecommerce/view/widget/items/customlistitems.dart';
import 'package:ecommerce/view/widget/items/listcategoiresitiems.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Items extends StatelessWidget {
  const Items({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ItemsConstrollerImp());
   FavoriteController controllerFav=Get.put(FavoriteController());
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
            CaustmAppBar(
              titleappbar: "Find Product",
              onPressedIcon: () {},
              onPressedSearch: () {},
                onPressedIconFavorite:(){}
            ),
            const SizedBox(
              height: 20,
            ),
            const ListCategoriesItems(),
            GetBuilder<ItemsConstrollerImp>(
                builder: (controller) => HandlingDataView(
                    statusRequest: controller.statusRequest,
                    widget: GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: controller.data.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2, childAspectRatio: 0.7),
                        itemBuilder: (BuildContext context, index) {
                          controllerFav.isFavorite[controller.data[index]['items_id']]=controller.data[index]['favorite'];
                        return  CustomListItems(
                            active: false,
                              itemsModel:
                                  ItemsModel.fromJson(controller.data[index]));
                          return null;
                        }
                        )
                )
            )
          ],
        ),
      ),
    );
  }
}
