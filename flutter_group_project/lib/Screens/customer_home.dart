import 'package:flutter/material.dart';
import 'file:///C:/Users/yared/AndroidStudioProjects/flutter_app4/flutter_group_project/lib/Service/Screen/technician_list.dart';
import 'package:flutter_group_project/Screens/drawer.dart';
import 'file:///C:/Users/yared/AndroidStudioProjects/flutter_app4/flutter_group_project/lib/Service/Screen/service_lists.dart';

class CustomerHome extends StatefulWidget {
  @override
  _CustomerHomeState createState() => _CustomerHomeState();
}

class _CustomerHomeState extends State<CustomerHome> {
  List<Widget> homeWidgets = [

    ServiceList()
,
    CategoryList(),
    Center(child: Text("No history yet!"),)
  ];
  int _navIndex = 0;
  String get title{
    if (_navIndex == 0){
      return 'Categories';
    }else if(_navIndex ==1){
      return 'Technicians';
    }else{
      return 'History';
    }
  }
Color colors = Color(0xfff0e0df);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$title'),
        elevation: 0.0,
        centerTitle: true,
      ),
      backgroundColor:colors,
      body: Container(child: homeWidgets[_navIndex],),
      drawer: NavDrawer(),
      floatingActionButton: getFloatingButton(context),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Theme.of(context).primaryColor,
        shape: CircularNotchedRectangle(),
        child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                color: Colors.white,
                onPressed: (){
                  setState(() {
                    _navIndex = 1;
                  });
                },
              ),
              IconButton(
                icon: Icon(Icons.note),
                color: Colors.white,
                onPressed: () {
                  print("the note icon button have been clicked");
                },
              )
            ]),
      )

    );
  }
  Widget getFloatingButton(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Theme.of(context).primaryColor,
      foregroundColor: Colors.white,
      onPressed: () {
        // this is the home optiion
        print('welcome to the home');
      },
      tooltip: "Home",
      child: Icon(Icons.home),
    );
  }
}

