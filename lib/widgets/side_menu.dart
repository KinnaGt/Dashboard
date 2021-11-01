
import 'package:dashboardapp/constants/controller.dart';
import 'package:dashboardapp/constants/style.dart';
import 'package:dashboardapp/helpers/responsiveness.dart';
import 'package:dashboardapp/routings/routes.dart';
import 'package:dashboardapp/widgets/custom_text.dart';
import 'package:dashboardapp/widgets/side_menu_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    double _width = MediaQuery.of(context).size.width;
    return Container(
      color: light,
      child: ListView(children: [
        if(ResponsiveWidget.isSmallScreen(context))
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height:40),
              Row(
                children: [
                  SizedBox(width: _width/48,),
                  Padding(padding: EdgeInsets.only(right: 12),
                    child: Image.asset("assets/icons/logo.png"),
                  ),
                  Flexible(child: CustomText(
                    text: "Dash",
                    size: 20,
                    color: active,
                    weight: FontWeight.bold) ,),
                  SizedBox(width: _width/48,)
              ],),
            ],
          ),
          SizedBox(height: 40,),

          Divider(color:lightGrey.withOpacity(.1)),

          Column(
            mainAxisSize: MainAxisSize.min,
            children: sideMenuItems.map((itemName)=> SideMenuItem(
                itemName: itemName== AuthenticationPageRoute ? "Log Out" : itemName,
                  onTapL: (){
                    if(itemName == AuthenticationPageRoute){
                      //TODO:: go to authentication PAGE
                    }

                    if(!menuController.isActive(itemName)){
                      menuController.changeActiveItemTo(itemName);
                      if(ResponsiveWidget.isSmallScreen(context))
                      Get.back();
                      //TODO:: go to Item Name
                    }
                  })
                ).toList()   
              )
        ],)
    );
  }
}