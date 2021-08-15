import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'package:beta_fit_app/pages/photo.page.dart';
import 'package:beta_fit_app/pages/account.page.dart';
import 'package:beta_fit_app/pages/feed.page.dart';

class Home extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<Home>{

  int _pageIndex = 0;

  final Feed _feedPage = Feed();
  final Photo _photoPage = Photo();
  final Account _accountPage = Account();

  Widget _showPage = new Feed();

  Widget _pageChooser(int page){
    switch (page) {
      case 0:
        return _feedPage;
        break;
      case 1:
        return _photoPage;
        break;
      case 2:
        return _accountPage;
        break;
      case 3:
        return _feedPage;
        break;

      default:
        return new Container(
          child: new  Text("No page found by page chooser"),
        );
    }
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Beta Fit", style: TextStyle(
            color: Colors.black
          ),
        ),
      ),

      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            stops: [0.3, 1],
            colors: [
              Color(0xff86C423),
              Color(0xff1F1F1F),
            ]
          ),
        ),
        child: SizedBox.expand(
          //child: Text(pageIndex.toString(), textScaleFactor: 10.0,),
          child: _showPage,
        ),
      ),

      bottomNavigationBar: CurvedNavigationBar(
        index: _pageIndex,
        items: <Widget>[
          Icon(Icons.view_day_rounded, size: 30),
          Icon(Icons.my_library_add_rounded, size: 30),
          Icon(Icons.manage_accounts_rounded, size: 30),
          Icon(Icons.exit_to_app_rounded, size: 30),
        ],
        backgroundColor: Color(0xff86C423),
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 250),

        onTap: (int index){
          setState(() {
            debugPrint("$index");
            if(index == 3){
              debugPrint("$index");
              Navigator.of(context).pushReplacementNamed('/');
            }else{
              _showPage = _pageChooser(index);
            }
          });
        },
      ),
    );
  }
}