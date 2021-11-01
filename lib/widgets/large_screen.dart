import 'package:dashboardapp/widgets/side_menu.dart';
import 'package:flutter/material.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row( 
        // EL LAYOUT SE SEPARA EN 6 PARTES
          children: [
            Expanded(child: SideMenu()),
            Expanded(
              flex : 5,
              child: Container(  // 5 Partes lo demas   , es decir el menu abarca 1/6 de pantalla
                color: Colors.blue
              )),
          ],
    );
  }
}