import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pantallasmuertas/Business/ProviderDataPages.dart';
import 'package:provider/provider.dart';

class AlertPage extends StatelessWidget {
  final Color textoColor = Color.fromRGBO(102, 102, 102, 1.0);
  @override
  Widget build(BuildContext context) {
    ProviderDataPages provData = Provider.of<ProviderDataPages>(context);
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height/4),
      child: Material(
        color: Colors.transparent,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight:Radius.circular(20) )
          ),
          // height: 250,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Nuevo Pedido",style: TextStyle(
                  color: textoColor,
                  fontSize: 30,
                  fontWeight: FontWeight.w600
                ),
              ),

              _itemDesc(title: "Zona",desc: "Villa Adela"),
              _itemDesc(title: "Distancia",desc: "3 Km"),
              _itemDesc(title: "Negocio(s)",desc: "Snack Aguilar, Ariztia"),
              _buttonAceptar(onPress: (){
                  provData.indexPage = "PageDetallePedido";
                  Navigator.pop(context);
              }),
              _buttonRechazar(onPress: (){})
            ],
          ),
        ),
      ),
    );
  }

  Widget _itemDesc({String title, String desc}){
    return 
    Container(
      // color: Colors.white,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 15,vertical: 8),
      child: RichText(
        text: TextSpan(
          children: <TextSpan>[
            TextSpan(text: '$title:', style: TextStyle(fontWeight: FontWeight.bold,color: textoColor,fontSize: 20)),
            TextSpan(text: ' $desc!', style: TextStyle(fontWeight: FontWeight.normal,color: textoColor,fontSize: 20)),
          ],
        ),
      ),
    );
  }

  Widget _buttonAceptar({Function onPress}){
    return CupertinoButton(
      color: Colors.orange,
      borderRadius: BorderRadius.circular(50),
      child: Text("Aceptar"),
      onPressed: onPress,
    );
  }
  Widget _buttonRechazar({Function onPress}){
    return CupertinoButton(
      color: Colors.white,
      borderRadius: BorderRadius.circular(50),
      child: Text("Rechazar",style: TextStyle(decoration: TextDecoration.underline,color: textoColor),),
      onPressed: onPress,
    );
  }
}