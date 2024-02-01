import 'package:flutter/material.dart';
import 'package:mohamed_suliman_task2/widgets/custom_list_view_card.dart';

class CustomGridViewByCard extends StatelessWidget {
  const CustomGridViewByCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
      child: GridView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: items.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 15,
            crossAxisSpacing: 15
          ),
          itemBuilder: (_,index){
            return Container(
              color: Colors.pink,
              height: 50,
              width: 50,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(items[index].itemIcon,size: 50,),
                  Text(items[index].itemName,style: TextStyle(fontSize: 20,color: Colors.white),),
                  Text('${items[index].price.toString()} \$',style: TextStyle(fontSize: 22),)
                ],
              )
            );
          }),
    );
  }
}
