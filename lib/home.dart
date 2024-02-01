import 'package:flutter/material.dart';
import 'package:mohamed_suliman_task2/widgets/custom_drawer.dart';
import 'package:mohamed_suliman_task2/widgets/custom_grid_view_card.dart';
import 'package:mohamed_suliman_task2/widgets/custom_list_view_card.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}
int indexOfBottomNavigationBar=0;

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> key = GlobalKey();
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      key:key ,
      drawer: BulidDrawer(closeMyDrawer: () {
        key.currentState!.closeDrawer();
      },),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Shopping"),
        backgroundColor: Colors.black,
      ),
      body: indexOfBottomNavigationBar==0?CustomListViewContainCardView(width: width)
          :indexOfBottomNavigationBar==1?const CustomGridViewByCard():Container(child: Center(child: Text("Settings",style: TextStyle(fontSize: 40),),),),


      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.pink,
        onTap: (index){
          print(index);
          setState(() {
            indexOfBottomNavigationBar = index;
          });
        },
        currentIndex: indexOfBottomNavigationBar,
          items:const [
             BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
             BottomNavigationBarItem(icon: Icon(Icons.category),label: "Category"),
             BottomNavigationBarItem(icon: Icon(Icons.settings),label: "settings")
          ]),
    );
  }
}



