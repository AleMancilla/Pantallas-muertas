import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pantallasmuertas/Business/ProviderDataPages.dart';
import 'package:provider/provider.dart';

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
          _itemBar(icon: "assets/icons/room_service-24px.svg", title:"Pedidos",page:"PagePedidos",context:context),
          _itemBar(icon: "assets/icons/list_alt-24px.svg",title: "Historial",page:"PageHistorial",context:context),
          _itemBar(icon: "assets/icons/local_activity-24px.svg",title: "Turnos",page:"PageTurnos",context:context),
        ],
      ),
    );
  }

  _itemBar({String icon, String title, String page, BuildContext context}){
    ProviderDataPages provData = Provider.of<ProviderDataPages>(context);
    return GestureDetector(
      onTap: () {
        provData.indexPage = page;
      },
      child: Column(
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
      ),
    );
  }
}