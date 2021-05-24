import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_group_project/Service/Bloc/bloc.dart';
import 'package:flutter_group_project/Service/Repository/Service_repository.dart';


class ServiceBloc extends Bloc<ServiceEvent, ServiceState> {
  final ServiceRepository serviceRepository;

  ServiceBloc({@required this.serviceRepository})
      : assert(serviceRepository != null),
        super(ServiceLoading());

  @override
  Stream<ServiceState> mapEventToState(ServiceEvent event) async* {
    if (event is ServiceLoad) {
      print("Service load method");
      yield ServiceLoading();

      try {
        final services = await serviceRepository.getServices();
        print("This is the service $services");
        yield ServicesLoadSuccess(services);
      } catch (_) {
        yield ServiceOperationFailure();
      }
    }

    if (event is ServiceCreate) {
      try {
        await serviceRepository.createService(event.service);
        final services = await serviceRepository.getServices();
        yield ServicesLoadSuccess(services);
      } catch (_) {
        yield ServiceOperationFailure();
      }
    }

    if (event is ServiceUpdate) {
      try {
        await serviceRepository.updateService(event.service);
        final services = await serviceRepository.getServices();
        yield ServicesLoadSuccess(services);
      } catch (_) {
        yield ServiceOperationFailure();
      }
    }

    if (event is ServiceDelete) {
      try {
        await serviceRepository.deleteService(event.service.id);
        final services = await serviceRepository.getServices();
        yield ServicesLoadSuccess(services);
      } catch (e) {
        print("Error de,ete=$e");
        yield ServiceOperationFailure();
      }
    }
  }
}
