import 'package:flutter/material.dart';
import 'HomeTabs/tab1.dart';
import 'HomeTabs/tab2.dart';
import 'HomeTabs/tab3.dart';
import 'NavigationDrawer/page1.dart';
import 'NavigationDrawer/page2.dart';
import 'NavigationDrawer/page3.dart';
import 'NavigationDrawer/page4.dart';
import 'NavigationDrawer/page5.dart';
import 'NavigationDrawer/page6.dart';
import 'NavigationDrawer/page7.dart';
import 'NavigationDrawer/page8.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  static int widgetIndex = 0;

  // App Exit Alert !

  Future<bool> _onBackPressed() {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
          backgroundColor: Colors.grey[800],
          title: Text('Do you really want to EXIT?', style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold
          ),),
          actions: <Widget>[
            RaisedButton(
              color: Colors.greenAccent,
              child: Text('No', style: TextStyle(letterSpacing: 2),),
              onPressed: () => Navigator.pop(context,false),
            ),
            RaisedButton(
              color: Colors.redAccent,
              child: Text('Yes', style: TextStyle(letterSpacing: 2),),
              onPressed: () => Navigator.pop(context,true),
            ),
          ],
        )
    );
  }

  //  AppBar Selector for widgetIndex != 0

  appBarSelector() {
    if (_MyAppState.widgetIndex == 1)
      return AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text('Profile', style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.redAccent,
        actions: <Widget>[
          FlatButton.icon(
            color: Colors.white12,
            icon: Icon(Icons.store_mall_directory),
            onPressed: (){
              setState(() {
                _MyAppState.widgetIndex=0;
              });
            },
            label: Text('Home', style: TextStyle(
              letterSpacing: 2,
              fontSize: 16,
            ),),
          )
        ],
      );
    if (_MyAppState.widgetIndex == 2)
      return AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text('Manager', style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.lightGreen,
        actions: <Widget>[
          FlatButton.icon(
            color: Colors.white12,
            icon: Icon(Icons.store_mall_directory),
            onPressed: (){
              setState(() {
                _MyAppState.widgetIndex=0;
              });
            },
            label: Text('Home', style: TextStyle(
              letterSpacing: 2,
              fontSize: 16,
            ),),
          )
        ],
      );
    if (_MyAppState.widgetIndex == 3)
      return AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text('Bills & History', style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.black38,
        actions: <Widget>[
          FlatButton.icon(
            color: Colors.white12,
            icon: Icon(Icons.store_mall_directory),
            onPressed: (){
              setState(() {
                _MyAppState.widgetIndex=0;
              });
            },
            label: Text('Home', style: TextStyle(
              letterSpacing: 2,
              fontSize: 16,
            ),),
          )
        ],
      );
    if (_MyAppState.widgetIndex == 4)
      return AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text('Suggestions', style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.amberAccent[700],
        actions: <Widget>[
          FlatButton.icon(
            color: Colors.white12,
            icon: Icon(Icons.store_mall_directory),
            onPressed: (){
              setState(() {
                _MyAppState.widgetIndex=0;
              });
            },
            label: Text('Home', style: TextStyle(
              letterSpacing: 2,
              fontSize: 16,
            ),),
          )
        ],
      );
    if (_MyAppState.widgetIndex == 5)
      return AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text('Reminders & Events', style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.blueAccent,
        actions: <Widget>[
          FlatButton.icon(
            color: Colors.white12,
            icon: Icon(Icons.store_mall_directory),
            onPressed: (){
              setState(() {
                _MyAppState.widgetIndex=0;
              });
            },
            label: Text('Home', style: TextStyle(
              letterSpacing: 2,
              fontSize: 16,
            ),),
          )
        ],
      );
    if (_MyAppState.widgetIndex == 6)
      return AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text('Calculator', style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.redAccent,
        actions: <Widget>[
          FlatButton.icon(
            color: Colors.white12,
            icon: Icon(Icons.store_mall_directory),
            onPressed: (){
              setState(() {
                _MyAppState.widgetIndex=0;
              });
            },
            label: Text('Home', style: TextStyle(
              letterSpacing: 2,
              fontSize: 16,
            ),),
          )
        ],
      );
    if (_MyAppState.widgetIndex == 7)
      return AppBar(
        title: Text('Settings',
          style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white70,
        iconTheme: IconThemeData(color: Colors.black),
        actions: <Widget>[
          FlatButton.icon(
            color: Colors.white12,
            icon: Icon(Icons.store_mall_directory),
            onPressed: (){
              setState(() {
                _MyAppState.widgetIndex=0;
              });
            },
            label: Text('Home', style: TextStyle(
              letterSpacing: 2,
              fontSize: 16,
            ),),
          )
        ],
      );
    if (_MyAppState.widgetIndex == 8)
      return AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text('About Us', style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.indigo,
        actions: <Widget>[
          FlatButton.icon(
            color: Colors.white12,
            icon: Icon(Icons.store_mall_directory),
            onPressed: (){
              setState(() {
                _MyAppState.widgetIndex=0;
              });
            },
            label: Text('Home', style: TextStyle(
              letterSpacing: 2,
              fontSize: 16,
            ),),
          )
        ],
      );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WillPopScope(
          onWillPop: _onBackPressed,
          child: DefaultTabController(
            length: 3,
            child: Scaffold(
              key: _drawerKey,

              // Main AppBar

              appBar: widgetIndex == 0? AppBar(
                elevation: 0,
                title: Text('Home Page', style: TextStyle(
                  letterSpacing: 5.0,
                ),),
                centerTitle: true,
                bottom: TabBar(
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.white,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        color: Colors.white),
                    tabs: [
                      Tab(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text('Tab 1'),
                        ),
                      ),
                      Tab(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text('Tab 2'),
                        ),
                      ),
                      Tab(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text('tab 3'),
                        ),
                      ),
                    ]
                ),) : appBarSelector(),


              // Navigation Drawer


              drawer: Drawer(

                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          UserAccountsDrawerHeader(
                            decoration: BoxDecoration(color: Colors.blueAccent),
                            accountName: Text('User name',
                              style: TextStyle(color: Colors.black),),
                            accountEmail: Text('username@email.com',
                              style: TextStyle(color: Colors.black),),
                            currentAccountPicture: CircleAvatar(
                              backgroundColor: Colors.amberAccent,
                              child: Text('F'),
                            ),
                          ),
                        ],
                      ),
                      ListTile(
                        leading: Icon(Icons.store_mall_directory),
                        title: Text('Home'),
                        onTap: (){
                          FocusScope.of(context).requestFocus(FocusNode());
                          _drawerKey.currentState.openEndDrawer();
                          setState(() {
                            widgetIndex = 0;
                          });
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.person),
                        title: Text('Page 1'),
                        onTap: (){
                          FocusScope.of(context).requestFocus(FocusNode());
                          _drawerKey.currentState.openEndDrawer();
                          setState(() {
                            widgetIndex = 1;
                          });
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.dashboard),
                        title: Text('Page 2'),
                        onTap: (){
                          FocusScope.of(context).requestFocus(FocusNode());
                          _drawerKey.currentState.openEndDrawer();
                          setState(() {
                            widgetIndex = 2;
                          });
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.format_list_bulleted),
                        title: Text('Page 3'),
                        onTap: (){
                          FocusScope.of(context).requestFocus(FocusNode());
                          _drawerKey.currentState.openEndDrawer();
                          setState(() {
                            widgetIndex = 3;
                          });
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.import_contacts),
                        title: Text('Page 4'),
                        onTap: (){
                          FocusScope.of(context).requestFocus(FocusNode());
                          _drawerKey.currentState.openEndDrawer();
                          setState(() {
                            widgetIndex = 4;
                          });
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.event),
                        title: Text('Page 5'),
                        onTap: (){
                          FocusScope.of(context).requestFocus(FocusNode());
                          _drawerKey.currentState.openEndDrawer();
                          setState(() {
                            widgetIndex = 5;
                          });
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.view_comfy),
                        title: Text('Page 6'),
                        onTap: (){
                          FocusScope.of(context).requestFocus(FocusNode());
                          _drawerKey.currentState.openEndDrawer();
                          setState(() {
                            widgetIndex = 6;
                          });
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.settings),
                        title: Text('Page 7'),
                        onTap: (){
                          FocusScope.of(context).requestFocus(FocusNode());
                          _drawerKey.currentState.openEndDrawer();
                          setState(() {
                            widgetIndex = 7;
                          });
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.info_outline),
                        title: Text('Page 8'),
                        onTap: (){
                          FocusScope.of(context).requestFocus(FocusNode());
                          _drawerKey.currentState.openEndDrawer();
                          setState(() {
                            widgetIndex = 8;
                          });
                        },
                      )
                    ],
                  ),
                ),
              ),


              // Body Stack


              body: IndexedStack(
                index: widgetIndex,
                children: <Widget>[
                  MainHomeBody(),
                  Page1(),
                  Page2(),
                  Page3(),
                  Page4(),
                  Page5(),
                  Page6(),
                  Page7(),
                  Page8(),
                ],
              ),
            ),
          ),
        ),
    );
  }
}

// Main Page Body

class MainHomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: <Widget>[
        Tab1(),
        Tab2(),
        Tab3(),
      ],
    );
  }
}

