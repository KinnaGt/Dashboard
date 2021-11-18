import 'package:dashboardapp/pages/overview/widgets/info_cards_small.dart';
import 'package:flutter/material.dart';

class OverviewCardsSmallScreen extends StatelessWidget {
  const OverviewCardsSmallScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    double _width = MediaQuery.of(context).size.width;
    return Container(
      height: 400,
      child:Column(
        children: [
          InfoCardSmall(
            title: "Rides in progress", 
            value: "7",
            onTap: (){}, 
            topColor: Colors.red, 
            isActive: false
          ),
          SizedBox(height: _width/64,),


          InfoCardSmall(
            title:"Packages delivered",
            value:"17",
            onTap:(){},
            isActive : false,
            topColor: Colors.lightGreen,
          ),
          SizedBox(height: _width / 64,),

          InfoCardSmall(
            title:"Cancelled Delivery",
            value:"3",
            onTap:(){},
            isActive : false,
            topColor: Colors.redAccent,
          ),
          SizedBox(height: _width / 64,),

        InfoCardSmall(
            title:"Scheduled Deliveries",
            value:"3",
            onTap:(){},
            isActive : false,
            topColor: Colors.blueAccent,
          ),


        ],)
    );
  }
}