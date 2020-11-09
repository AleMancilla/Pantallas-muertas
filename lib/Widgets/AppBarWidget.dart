import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pantallasmuertas/Business/ProviderDataPages.dart';
import 'package:provider/provider.dart';
class AppBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _iconAppBar(icon:"assets/icons/account_circle-24px.svg",page: "PageAccount",context: context),
          _textAppBar("Disponible"),
          _iconAppBar(icon:"assets/icons/support_agent-24px.svg",page: "PageCallCenter",context: context),

        ],
      ),
    );
  }

  Widget _iconAppBar({String icon, String page, BuildContext context}){
    ProviderDataPages provData = Provider.of<ProviderDataPages>(context);
    return GestureDetector(
      onTap: () {
        provData.indexPage = page;
      },
      child: Container(
        height: 40,
        width: 40,
        margin: EdgeInsets.symmetric(horizontal: 10.0,vertical: 5),
        child: SvgPicture.asset(icon, color: Colors.orange,fit: BoxFit.cover,),
      ),
    );
  }

  Widget _textAppBar(String texto){
    return Expanded(
            child: Text(texto,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromRGBO(102, 102, 102, 1.0),
                  fontWeight: FontWeight.w600
                ),
              ),
            );
  }
}