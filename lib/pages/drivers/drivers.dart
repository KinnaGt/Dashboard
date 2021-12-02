import 'package:dashboardapp/constants/controller.dart';
import 'package:dashboardapp/helpers/responsiveness.dart';
import 'package:dashboardapp/pages/drivers/widgets/drivers_table.dart';
import 'package:dashboardapp/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DriversPage extends StatelessWidget {
  const DriversPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(() => Row(
          children: [
            Container(
              margin:EdgeInsets.only(top: 
                ResponsiveWidget.isSmallScreen(context)? 56 : 6
                ),
              child:CustomText(
                text: menuController.activeItem.value, 
                size: 24, 
                color: Colors.black, 
                weight: FontWeight.bold)
            )
          ],
          )),
          Expanded(
            child: ListView(
              children: [
                DriversTable()
              ],)
          ,)
      ],
    );
  }
}
