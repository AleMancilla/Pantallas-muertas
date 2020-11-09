import 'package:flutter/cupertino.dart';

class ProviderDataPages with ChangeNotifier{

  String _indexPage = "PageAccount";
  String get indexPage => this._indexPage;
  set indexPage(String i){
    this._indexPage = i;
    notifyListeners();
  }

}