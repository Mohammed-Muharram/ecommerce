import 'package:ecommerce/core/constant/color.dart';
import 'package:flutter/cupertino.dart';

class CustomTitleHome extends StatelessWidget {
  final String title;
  const CustomTitleHome({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Text(title,
          style:
         const TextStyle(fontSize: 14,color:
          AppColor.black,fontWeight: FontWeight.bold)),
    );
  }
}
