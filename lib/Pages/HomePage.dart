import 'package:flutter/material.dart';
import 'package:pantallasmuertas/Widgets/AppBarWidget.dart';
import 'package:pantallasmuertas/Widgets/BottomBarWidget.dart';

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
        body: Container(
          color: Colors.orange,
        ),
        bottomNavigationBar: BottomBarWidget(),
      ),
    );
  }
}