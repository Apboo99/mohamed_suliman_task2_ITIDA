import 'package:flutter/material.dart';

class CustomListViewContainCardView extends StatelessWidget {
  const CustomListViewContainCardView({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (_, index) {
        return Card(
          color: Colors.greenAccent,
          margin: const EdgeInsets.all(15),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: width / 4,
                  child: Text(
                    items[index].itemName,
                    style: const TextStyle(fontSize: 19),
                  ),
                ),
                SizedBox(
                    width: width / 3.5, child: Icon(items[index].itemIcon)),
                SizedBox(
                    child: Text(
                      '${items[index].price.toString()} ${"\$"} ',
                      style: const TextStyle(fontSize: 19),
                    )),
              ],
            ),
          ),
        );
      },
      itemCount: items.length,
      scrollDirection: Axis.vertical,
    );
  }
}

 List<Items> items = [
  Items(itemName: "Iphone11", itemIcon: Icons.phone_iphone, price: 15000),
  Items(itemName: "Camera", itemIcon: Icons.camera_alt, price: 32000),
  Items(itemName: "Bill", itemIcon: Icons.add_alert_rounded, price: 15000),
  Items(itemName: "Car", itemIcon: Icons.car_crash, price: 230000),
  Items(itemName: "Iphone11", itemIcon: Icons.phone_iphone, price: 15000),
  Items(itemName: "Camera", itemIcon: Icons.camera_alt, price: 32000),
  Items(itemName: "Bill", itemIcon: Icons.add_alert_rounded, price: 15000),
  Items(itemName: "Car", itemIcon: Icons.car_crash, price: 2300000),
  Items(itemName: "Iphone11", itemIcon: Icons.phone_iphone, price: 15000),
  Items(itemName: "Camera", itemIcon: Icons.camera_alt, price: 32000),
  Items(itemName: "Bill", itemIcon: Icons.add_alert_rounded, price: 15000),
  Items(itemName: "Car", itemIcon: Icons.car_crash, price: 2300000),
];

class Items {
  final String itemName;
  final IconData itemIcon;
  final double price;
  Items({required this.itemName, required this.itemIcon, required this.price});
}
