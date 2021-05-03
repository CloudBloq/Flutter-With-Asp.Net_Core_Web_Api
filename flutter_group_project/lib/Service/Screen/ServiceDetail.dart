import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_group_project/Service/Bloc/bloc.dart';
import 'package:flutter_group_project/Service/Model/models.dart';
import 'package:flutter_group_project/Service/Screen/AddUpdateService.dart';
import 'package:flutter_group_project/Service/Screen/screens.dart';


class ServiceDetail extends StatelessWidget {
  static const routeName = 'serviceDetail';
  final Service service;

  ServiceDetail({@required this.service});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('${this.service.ServiceName}'),
        actions: [
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () => Navigator.of(context).pushNamed(
              AddUpdateService.routeName,
              arguments: ServiceArgument(service: this.service, edit: true),
            ),
          ),
          SizedBox(
            width: 32,
          ),
          IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                BlocProvider.of<ServiceBloc>(context).add(ServiceDelete(this.service));
                Navigator.of(context).pushNamedAndRemoveUntil(
                    CategoryMainScreen.routeName, (route) => false);
              }),
        ],
      ),
      body: Card(
        child: Column(
          children: [
            ListTile(
              title: Text('Service Name: ${this.service.ServiceName}'),
              subtitle: Text('Category: ${this.service.Category}'),
            ),
            Text(
              'Details',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text('Description: ${this.service.Description}',style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),),
            SizedBox(
              height: 10,
            ),
            Text('Initial Price: ${this.service.InitialPrice}',style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            )),
            SizedBox(
              height: 10,
            ),
            Text('Intermediate Price: ${this.service.IntermediatePrice}',style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            )),
            SizedBox(
              height: 10,
            ),
            Text('Advanced Price: ${this.service.AdvancedPrice}',style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            )),
            SizedBox(
              height: 10,
            ),

          ],
        ),
      ),
    );
  }
}
