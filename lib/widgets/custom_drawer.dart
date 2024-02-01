import 'package:flutter/material.dart';

import 'buid_drawer_items.dart';

class BulidDrawer extends StatelessWidget {
  BulidDrawer({
    super.key,required this.closeMyDrawer,
  });
  final VoidCallback?  closeMyDrawer;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
          elevation: 0,
          backgroundColor: Colors.black.withOpacity(.4),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
            child: Column(
              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(onPressed: closeMyDrawer,
                        icon: const Icon(
                          Icons.close_outlined,
                          size: 32,
                          color: Colors.white,
                        )
                    )
                  ],
                ),
                Expanded(
                  child: DrawerHeader(
                      child: Column(
                        children: [
                          SizedBox(height: 30,),
                          Stack(
                            // alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              const Icon(
                                Icons.account_circle_sharp,
                                size: 120,
                                color: Colors.white,
                              ),
                              Positioned(
                                  bottom: 10,
                                  right: 0,
                                  child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.deepPurple,
                                          borderRadius: BorderRadius.circular(5)),
                                      width: 30,
                                      height: 30,
                                      child: const Icon(
                                        Icons.edit,
                                        color: Colors.white,
                                      )))
                            ],
                          ),
                          const SizedBox(
                            height: 1,
                          ),
                          const Text(
                            "Mohamed Suliman",
                            style: TextStyle(fontSize: 19, color: Colors.white),
                          ),
                          SizedBox(height: 80,),
                          BuildDrawerRowItems(text: 'Home', icon: Icons.home,),
                          BuildDrawerRowItems(text: 'Categories', icon: Icons.category,),
                          BuildDrawerRowItems(text: 'Settings', icon: Icons.settings,),
                          BuildDrawerRowItems(text: 'Log Out', icon: Icons.logout,),
                        ],
                      )),
                ),
              ],
            ),
          )),
    );
  }
}