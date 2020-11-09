import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _itemBar("assets/icons/room_service-24px.svg", "Pedidos"),
          _itemBar("assets/icons/list_alt-24px.svg", "Historial"),
          _itemBar("assets/icons/local_activity-24px.svg", "Turnos"),
        ],
      ),
    );
  }

  _itemBar(String icon, String title){
    return Column(
      children: [
        Container(
          height: 40,
          width: 40,
          // margin: EdgeInsets.symmetric(horizontal: 10.0,vertical: 5),
          child: SvgPicture.asset(icon, color: Colors.orange,fit: BoxFit.cover,),
        ),
        Text(title, style: TextStyle(
          color: Colors.orange,

        ),)
      ],
    );
  }
}