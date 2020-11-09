import 'package:flutter/cupertino.dart';

class ProviderDataPages with ChangeNotifier{

  int _indexPage;
  int get indexPage => this._indexPage;
  set indexPage(int i){
    this._indexPage = i;
    notifyListeners();
  }

}