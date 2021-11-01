import 'package:dashboardapp/controllers/counter_controller.dart';
import 'package:dashboardapp/pages/other.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget{
  final CounterController counterController = Get.put(CounterController());
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      body: Obx(() =>Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Center(child: Text("Clicks: ${counterController.counter.value}")),
          const SizedBox(
            height:10 
          ),
          Center(
            child:ElevatedButton(onPressed: (){
              Get.to(OtherScreen());
          },child : Text("Open Other Screen"))
          )
          
        ]
      )),
      floatingActionButton: FloatingActionButton(onPressed: (){counterController.increment();},
      child: Icon(Icons.add),
      )
    );
  }

}