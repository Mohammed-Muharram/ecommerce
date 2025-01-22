import 'package:flutter/material.dart';

class CaustmAppBar extends StatelessWidget {
  final String titleappbar;
  final  void Function()? onPressedIcon;
  final  void Function()? onPressedIconFavorite;
  final  void Function()? onPressedSearch;
const CaustmAppBar({super.key,
  required this.titleappbar,
  this.onPressedIcon, this.onPressedSearch,required this.onPressedIconFavorite,});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.only(top: 10),
width: 50,
      child: Row(children: [
        Expanded(child: TextFormField(
          decoration: InputDecoration(
              prefixIcon:IconButton(icon: const Icon(Icons.search_rounded),onPressed: onPressedSearch,),
              hintText: titleappbar,
              hintStyle:const TextStyle(fontSize: 18),
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10)
              ),
              filled:true,
              fillColor: Colors.grey[200]
          ),
        )),
        const  SizedBox(width: 10,),
        Container(
          decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10)
          ),
          width: 50,

          padding:const EdgeInsets.symmetric(vertical: 6),
          child:
          IconButton(
            onPressed:onPressedIcon,
            icon: Icon(Icons.notifications_active_outlined,
              size: 25,
              color: Colors.grey[600],)
            ,),
        ),
        const  SizedBox(width: 10,),
        Container(
          decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10)
          ),
          width: 50,

          padding:const EdgeInsets.symmetric(vertical: 6),
          child:
          IconButton(
            onPressed:onPressedIconFavorite,
            icon: Icon(Icons.favorite_border_outlined,
              size: 25,
              color: Colors.grey[600],)
            ,),
        )
      ],),

    );

  }
}
