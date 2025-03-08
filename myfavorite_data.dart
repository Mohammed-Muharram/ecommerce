

import 'package:ecommerccc/core/class/crud.dart';
import 'package:ecommerccc/linkapi.dart';

class MyFavoriteData {
  Crud crud;
  MyFavoriteData(this.crud);
  getData(String id) async {
    var response = await crud.postData(AppLink.favoriteView, {"id" : id});
    return response.fold((l) => l, (r) => r);
  }
}
