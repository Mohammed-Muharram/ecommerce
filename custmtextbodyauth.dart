import 'package:flutter/material.dart';

class CustmTextBodyAuth extends StatelessWidget {
  final String text;
  const CustmTextBodyAuth({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const  EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        text,
        textAlign:
      TextAlign.center,style:
      Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }
}
