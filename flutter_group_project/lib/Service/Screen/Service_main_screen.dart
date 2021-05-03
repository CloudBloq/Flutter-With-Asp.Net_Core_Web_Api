import 'package:flutter/material.dart';
import 'package:flutter_group_project/Service/Model/models.dart';
import '../Widgets/Technicians_item.dart';

import '../../dummy_data.dart';

class ServiceMainScreen extends StatelessWidget {
   static  const routeName= "/service_screen";





  @override
  Widget build(BuildContext context) {
    final service=ModalRoute.of(context).settings.arguments as Service;


    return Scaffold(
      appBar: AppBar(
        title: Text(service.ServiceName),
      ),
      body: ListView.builder(
        itemCount: DUMMY_TECHNICIANS.length,
        itemBuilder: (c, index){
          return TechnicianItem(DUMMY_TECHNICIANS[index].name, DUMMY_TECHNICIANS[index].id, DUMMY_TECHNICIANS[index].imageUrl);
        },

      ),
    );
  }
}


