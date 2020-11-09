import 'package:flutter/material.dart';
import 'package:pantallasmuertas/Business/ProviderDataPages.dart';
import 'package:pantallasmuertas/Pages/HomePage.dart';
import 'package:provider/provider.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProviderDataPages()),
      ],
      child: MaterialApp(
        title: 'App Rider',
        home: HomePage(),
      ),
    );
  }
}