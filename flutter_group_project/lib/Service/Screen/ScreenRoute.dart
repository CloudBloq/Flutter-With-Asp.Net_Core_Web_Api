import 'package:flutter/material.dart';
import 'package:flutter_group_project/Service/Screen/AddUpdateService.dart';
import 'package:flutter_group_project/Service/Service.dart';


class ServiceAppRoute {
  static Route generateRoute(RouteSettings settings) {
    if (settings.name == '/') {
      return MaterialPageRoute(builder: (context) => CategoryMainScreen());
    }

    if (settings.name == AddUpdateService.routeName) {
      ServiceArgument args = settings.arguments;
      return MaterialPageRoute(
          builder: (context) => AddUpdateService(
            args: args,
          ));
    }

    if (settings.name == ServiceDetail.routeName) {
      Service service = settings.arguments;
      return MaterialPageRoute(
          builder: (context) => ServiceDetail(
            service: service,
          ));
    }

    return MaterialPageRoute(builder: (context) => CategoryMainScreen());
  }
}

class ServiceArgument {
  final Service service;
  final bool edit;
  ServiceArgument({this.service, this.edit});
}
