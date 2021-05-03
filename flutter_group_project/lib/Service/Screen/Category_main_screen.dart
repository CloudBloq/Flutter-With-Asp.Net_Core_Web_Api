import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_group_project/Service/Bloc/bloc.dart';
import 'package:flutter_group_project/Service/Screen/AddUpdateService.dart';
import 'package:flutter_group_project/Service/Screen/screens.dart';
import '../Widgets/Services_item.dart';
import 'dart:math';
import '../../dummy_data.dart';
import '../Model/Service.dart';


class CategoryMainScreen extends StatelessWidget {
  static const routeName='/category_screen';
  Widget buildSectionTitle(BuildContext context, String text){
    return  Container(

      margin: EdgeInsets.symmetric(
        vertical: 10,

      ),
      child: Text('${text}',
        style: Theme.of(context).textTheme.headline6,),
    );
  }

  Widget buildContainer(BuildContext context , Widget child){
    return Container(
      height: MediaQuery.of(context).size.height * 0.5 ,
      width:MediaQuery.of(context).size.width * 0.90 ,
      decoration: BoxDecoration(
        color:Colors.white,
        border:Border.all(
            color:Colors.grey
        ),
        borderRadius: BorderRadius.circular(10),


      ),
      child:child,
    );
  }
//

//
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


  @override
  Widget build(BuildContext context) {

    Random random = new Random();
    int randomNumber = random.nextInt(6);

    print(randomNumber);

    var  selectedCategory= DUMMY_CATEGORIES[randomNumber];
//    List<Service> selectedService=DUMMY_SERVICES;
//     selectedService=DUMMY_SERVICES.where((service) {
//      if(service.id==selectedCategory.id){
//        return true;
//      }
//      return false;
//    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('Category Name'),
          actions: [
          PopupMenuButton(

    icon: Icon(Icons.refresh),

    itemBuilder:(_) => [
    PopupMenuItem(
    child: Text('Refresh'),
    value:(){

    },



    ),
    PopupMenuItem(
    child: Text('Show All'),
    value: null,


    ),
    ]
      ),
    ]
    ),
        body: SingleChildScrollView(
                child: Column(
                    children: [
                      Container(
                        height: MediaQuery
                            .of(context)
                            .size
                            .width * 0.5,
                        width: double.infinity,

                        child: Image.network(
                          selectedCategory.imageUrl, fit: BoxFit.cover,),

                      ),
//           ingredient
                      buildSectionTitle(context, 'Services'),

        BlocBuilder<ServiceBloc, ServiceState>(
          builder: (_, state) {
    if (state is ServiceOperationFailure) {
    return Text('Could not do Service  operation');
    }
    if (state is ServicesLoadSuccess) {
    final services = state.services;
    print("This is the comming service _______________+++++++++++++++++$services");

    return buildContainer(context, ListView.builder(
    itemCount: services.length,
    itemBuilder: (ctx, index) =>
    Column(
    children: [
    Container(
    decoration: BoxDecoration(
    color: Colors.white38,
        borderRadius: BorderRadius.circular(20)
    ),
      height: MediaQuery.of(context).size.height * 0.15,
      margin: EdgeInsets.all(4),
      padding: EdgeInsets.all(4),
      child: Card(
        elevation: 5,
        margin: EdgeInsets.symmetric(vertical: 8,horizontal: 5),

        child: Center(
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('Assets/Images/${services[index].imageUrl}'),
            ),



            title: Text(services[index].ServiceName !=null ? services[index].ServiceName : "place holder",
              style: Theme.of(context).textTheme.headline6,),
            subtitle: Text(services[index].Description !=null ?services[index].Description: "Place holder" ,),
            trailing: MediaQuery.of(context).size.width > 450 ? FlatButton.icon(
              textColor:Theme.of(context).errorColor,
              icon: Icon(Icons.delete_forever,color: Theme.of(context).errorColor,),





            ): IconButton(
                icon: Icon(Icons.star_border,color: Theme.of(context).errorColor,),



            ),
            onTap: () => Navigator.of(context).pushNamed(ServiceDetail.routeName, arguments:services[index]),
          ),
//            onTap: (){
//              print(this.index);
//              Navigator.pushNamed(context, ServiceMainScreen.routeName,arguments: selectedService[index].ServiceName);
//            },
        ),
      ),


    )]


    )

    ));
    }
    return CircularProgressIndicator();
    }
                      ),

                    ]
                ),
              ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context).pushNamed(
          AddUpdateService.routeName,
          arguments: ServiceArgument(edit: false),
        ),
        child: Icon(Icons.add),
      ),

//        floatingActionButton: getFloatingButton(context),
//        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//        bottomNavigationBar: BottomAppBar(
//          color: Theme.of(context).primaryColor,
//          shape: CircularNotchedRectangle(),
//          child: Row(
//              mainAxisSize: MainAxisSize.max,
//              mainAxisAlignment: MainAxisAlignment.spaceAround,
//              children: <Widget>[
//                IconButton(
//                  icon: Icon(Icons.search),
//                  color: Colors.white,
//                  onPressed: () {
//                    print("search icon button have been clicked");
//                  },
//                ),
//                IconButton(
//                  icon: Icon(Icons.note),
//                  color: Colors.white,
//                  onPressed: () {
//                    print("the note icon button have been clicked");
//                  },
//                )
//              ]),
//        )

    );
  }
}