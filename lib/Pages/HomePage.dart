import 'package:flutter/material.dart';
import 'package:pantallasmuertas/Business/ProviderDataPages.dart';
import 'package:pantallasmuertas/Pages/PageAccount.dart';
import 'package:pantallasmuertas/Pages/PageCallCenter.dart';
import 'package:pantallasmuertas/Pages/PageHistorial.dart';
import 'package:pantallasmuertas/Pages/PagePedidos.dart';
import 'package:pantallasmuertas/Pages/PageTurnos.dart';
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
      ),
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
      default:
    }
    return PageAccout();
  }
}