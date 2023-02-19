import 'package:flutter/material.dart';

import 'drawer_list.dart';
import 'header_driwer.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
        backgroundColor: Colors.black,
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [HeaderDriwer(), DrawerList()],
            ),
          ),
        ),
      );
}
