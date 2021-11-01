import 'package:flutter/material.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(   // EL LAYOUT SE SEPARA EN 6 PARTES
          children: [
            Expanded(child:Container(  // Menu lateral 1 parte
              color: Colors.red,
              )),
            Expanded(
              flex : 5,
              child: Container(  // 5 Partes lo demas   , es decir el menu abarca 1/6 de pantalla
                color: Colors.blue
              )),
          ],
    );
  }
}