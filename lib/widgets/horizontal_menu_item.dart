import 'package:dashboardapp/constants/controller.dart';
import 'package:dashboardapp/constants/style.dart';
import 'package:dashboardapp/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HorizontalMenuItem extends StatelessWidget {
  final String itemName;
  final  onTap;
  const HorizontalMenuItem({ Key? key, required this.itemName, required this.onTap }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return InkWell(
      onTap: onTap,
      onHover: (value){
        value ?
        menuController.onHover(itemName) : menuController.onHover("not hovering");
      },
      child: Obx(() => Container(  // Put in observable
        color: menuController.isHovering(itemName) ? lightGrey.withOpacity(.7)
        : Colors.transparent,
        child: Row(
          children: [
              Visibility(visible: menuController.isHovering(itemName) || menuController.isActive(itemName),
              child : Container(width: 6,height: 40,color: dark),
              maintainSize: true,maintainAnimation: true,maintainState: true,),

              SizedBox(width: _width/80),
              Padding(padding: EdgeInsets.all(16),
              child: menuController.returnIconFor(itemName)),
              if(!menuController.isActive(itemName))
                Flexible(
                  child: CustomText(text: itemName ,
                    color: menuController.isHovering(itemName) ? dark : lightGrey, 
                    size: 18, 
                    weight: FontWeight.normal,
                  )
                )
              else
                Flexible(
                  child: CustomText(text: itemName ,
                    color:  dark ,
                    size: 18,
                    weight: FontWeight.bold,
                  )
                )

          ],
        )
      ))
    );
  }

  

}