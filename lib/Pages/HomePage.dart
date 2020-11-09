import 'package:flutter/material.dart';
import 'package:pantallasmuertas/Business/ProviderDataPages.dart';
import 'package:pantallasmuertas/Pages/PageAccount.dart';
import 'package:pantallasmuertas/Pages/PageCallCenter.dart';
import 'package:pantallasmuertas/Pages/PageDetallePedido.dart';
import 'package:pantallasmuertas/Pages/PageHistorial.dart';
import 'package:pantallasmuertas/Pages/PagePedidos.dart';
import 'package:pantallasmuertas/Pages/PageTurnos.dart';
import 'package:pantallasmuertas/Widgets/AlertPage.dart';
import 'package:pantallasmuertas/Widgets/AppBarWidget.dart';
import 'package:pantallasmuertas/Widgets/BottomBarWidget.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          child: AppBarWidget(),
          preferredSize: Size(size.width, 60),
        ),
        body: _bodyPage(context),
        bottomNavigationBar: BottomBarWidget(),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () => _showDialog(context),
          label: Text("simulacion de\nnotificacion"),
        ),
      ),
    );
  }

  _showDialog(BuildContext context){
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertPage();
      }
    );
  }

  Widget _bodyPage(BuildContext context){
    ProviderDataPages provData = Provider.of<ProviderDataPages>(context);
    switch (provData.indexPage) {
      case "PageAccount":
        return PageAccout();
        break;
      case "PageCallCenter":
        return PageCallCenter();
        break;
      case "PageHistorial":
        return PageHistorial();
        break;
      case "PagePedidos":
        return PagePedidos();
        break;
      case "PageTurnos":
        return PageTurnos();
        break;
      case "PageDetallePedido":
        return PageDetallePedido();
        break;
      default:
    }
    return PageAccout();
  }
}