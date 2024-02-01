import 'package:flutter/material.dart';

class BuildDrawerRowItems extends StatelessWidget {
  const BuildDrawerRowItems({
    super.key, required this.text, required this.icon,
  });
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(text,style: TextStyle(color: Colors.white,fontSize: 24),),
          IconButton(onPressed:(){} , icon: Icon(icon,color: Colors.pink,size: 30,)),

        ],
      ),
    );
  }
}