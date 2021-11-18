import 'package:dashboardapp/helpers/responsiveness.dart';
import 'package:dashboardapp/widgets/horizontal_menu_item.dart';
import 'package:dashboardapp/widgets/vertical_menu_item.dart';
import 'package:flutter/material.dart';

class SideMenuItem extends StatelessWidget {
  
  final String itemName;
  final  onTap;
  const SideMenuItem({ Key? key ,required this.itemName,required this.onTap, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if(ResponsiveWidget.isCustomScreen(context)) {
      return VerticalMenuItem(itemName: itemName,onTap:onTap);
    } else {
      return HorizontalMenuItem(itemName: itemName,onTap:onTap);
    }
    
  }
}