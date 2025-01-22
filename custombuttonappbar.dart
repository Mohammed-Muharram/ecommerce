import 'package:ecommerce/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomButtonAppbar extends StatelessWidget {
 final void Function()? onPressed;
  final String textbuton;
  final IconData icondata;
  final bool active;
  const CustomButtonAppbar({super.key,
     required this.textbuton,
     required this.icondata,
      required  this.onPressed,
   required this.active

 });

  @override
  Widget build(BuildContext context) {
    return  MaterialButton(
      onPressed: onPressed,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [Icon(
            icondata,color:active==true?  AppColor.primaryColor: AppColor.grey2),
          Text(textbuton,style:
          TextStyle(color:active==true?  AppColor.primaryColor: AppColor.grey2),)],),
    );
  }
}
