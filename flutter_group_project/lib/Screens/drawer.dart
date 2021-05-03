import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(


      child:Column(

        children: [
            UserAccountsDrawerHeader(
              accountName: Text('Fasikaw'),
              accountEmail: Text('fasikaw@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/images/user.jpg'),
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(begin: Alignment.bottomLeft,end: Alignment.topRight,
                    colors:[
                      Theme.of(context).textTheme.subtitle1.color,
                      Theme.of(context).textTheme.bodyText1.color,] ),
                // color: Colors.purpleAccent
              ),

            ),
          ListTile(
            leading: Icon(Icons.contact_page),
            title: Text('account'),

          ),
          ListTile(
            leading: Icon(Icons.settings),
            title:Text('settings')
          ),
          ListTile(
            leading: Icon(Icons.color_lens),
            title: Text('theme'),
          ),
          Divider(height: 20,),
          ListTile(
            leading: Icon(Icons.flag),
            title: Text('FAQ'),
          ),
          Divider(height: 20,),
          ListTile(
            trailing: Icon(Icons.close),
            title: Text('close'),
            onTap: (){
              Navigator.of(context).pop();
            },
          )


        ],
      ),

    );
  }
}
