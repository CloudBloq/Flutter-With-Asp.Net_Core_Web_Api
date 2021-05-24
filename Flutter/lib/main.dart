import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_group_project/Service/Bloc/bloc.dart';
import 'package:flutter_group_project/Service/Repository/repository.dart';
import 'package:flutter_group_project/bloc_observer.dart';




import 'package:http/http.dart' as http;

import 'Service/Data_provider/data_provider.dart';
import 'Service/Screen/screens.dart';

void main()
{
  Bloc.observer = SimpleBlocObserver();
  ServiceDataProvider serviceDataProvider=new ServiceDataProvider(httpClient: http.Client(),);
  final ServiceRepository serviceRepository = ServiceRepository(
    dataProvider:serviceDataProvider
  );

  runApp(
    FixIt(serviceRepository: serviceRepository),
  );
}




class FixIt extends StatelessWidget {
  final ServiceRepository serviceRepository;

  FixIt({@required this.serviceRepository})
      : assert(serviceRepository != null);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<ServiceBloc>(
            create: (_) => ServiceBloc(serviceRepository: this.serviceRepository)
              ..add(ServiceLoad()),
          ),

        ],

      child: MyApp(),
    );
    /*
    return RepositoryProvider.value(
      value: this.courseRepository,
      child: BlocProvider(
        create: (context) => CourseBloc(courseRepository: this.courseRepository)
          ..add(CourseLoad()),
        child: MaterialApp(
          title: 'Course App',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          onGenerateRoute: CourseAppRoute.generateRoute,
        ),
      ),
    );
    */
  }
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.amber,
          canvasColor: Color.fromRGBO(225, 254, 229, 1),
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodyText2: TextStyle(
                color: Color.fromRGBO(20, 31, 51, 1),
              ),
              headline6:
              TextStyle(fontSize: 24, fontFamily: 'RobotoCondensed'))),


      onGenerateRoute: ServiceAppRoute.generateRoute,
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (ctx) => ServiceMainScreen());
      },
    );
  }
}



//
//
// this is the previoud main.dart file to be updated soon

