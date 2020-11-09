
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class PageDetallePedido extends StatefulWidget {
  @override
  _PageDetallePedidoState createState() => _PageDetallePedidoState();
}

class _PageDetallePedidoState extends State<PageDetallePedido> {




  PageController _controller = PageController(
    initialPage: 0,
  );

  int pageIndex = 0;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text("Detalle",textAlign: TextAlign.center,style: TextStyle(
                  color: Color.fromRGBO(102, 102, 102, 1.0),
                  fontSize: 20
                ),),
              ),
              Expanded(
                child: Text("Cliente",textAlign: TextAlign.center,style: TextStyle(
                  color: Color.fromRGBO(102, 102, 102, 1.0),
                  fontSize: 20
                ),),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(height: 5.0,color: pageIndex == 0? Colors.orange:Colors.white),
              ),
              Expanded(
                child: Container(height: 5.0,color: pageIndex == 1? Colors.orange:Colors.white),
              ),
            ],
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              // height: 200,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                onPageChanged: (value){
                  setState(() {
                    pageIndex = value;
                  });
                },
                children: [
                  detallePage(),
                  Container(width: double.infinity,height: 300,color: Colors.green,),
                ],
              ),
            ),
          ),
          _buttonAceptar(onPress: (){}),
        ],
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

  Widget detallePage(){
    Color textoColor = Color.fromRGBO(102, 102, 102, 1.0);
    return Container(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 8.0),
            child: Text("Cod: 3src1",style: TextStyle(color: textoColor ,fontSize: 24),)),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 8.0),
            child: RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(text: 'Cantidad:', style: TextStyle(fontWeight: FontWeight.bold,color: textoColor,fontSize: 18)),
                  TextSpan(text: ' 5 productos', style: TextStyle(fontWeight: FontWeight.normal,color: textoColor,fontSize: 18)),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}