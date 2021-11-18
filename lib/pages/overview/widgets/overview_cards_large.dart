import 'package:dashboardapp/pages/overview/widgets/info_cards.dart';
import 'package:flutter/material.dart';

class OverviewCardsLargeScreen extends StatelessWidget {
  const OverviewCardsLargeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        InfoCard(
          title:"Rides in progress",
          value:"7",
          onTap:(){},
          isActive : false,
          topColor: Colors.orange,
        ),
        SizedBox(
          width: _width / 64,
        ),


        InfoCard(
          title:"Packages delivered",
          value:"17",
          onTap:(){},
          isActive : false,
          topColor: Colors.lightGreen,
        ),
        SizedBox(
          width: _width / 64,
        ),


        InfoCard(
          title:"Cancelled Delivery",
          value:"3",
          onTap:(){},
          isActive : false,
          topColor: Colors.redAccent,
        ),
        SizedBox(
          width: _width / 64,
        ),

        InfoCard(
          title:"Scheduled Deliveries",
          value:"3",
          onTap:(){},
          isActive : false,
          topColor: Colors.blueAccent,
        ),
        
      ],

      
      
      
    );
  }
}