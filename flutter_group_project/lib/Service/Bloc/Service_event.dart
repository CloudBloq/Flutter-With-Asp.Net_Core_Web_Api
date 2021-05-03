import 'package:equatable/equatable.dart';
import 'package:flutter_group_project/Service/Model/Service.dart';
import '';

abstract class ServiceEvent extends Equatable {
  const ServiceEvent();
}

class ServiceLoad extends ServiceEvent {
  const ServiceLoad();

  @override
  List<Object> get props => [];
}

class ServiceCreate extends ServiceEvent {
  final Service service;

  const ServiceCreate(this.service);

  @override
  List<Object> get props => [service];

  @override
  String toString() => 'Service Created {service: $service}';
}

class ServiceUpdate extends ServiceEvent {
  final Service service;

  const ServiceUpdate(this.service);

  @override
  List<Object> get props => [service];

  @override
  String toString() => 'Service Updated {service: $service}';
}

class ServiceDelete extends ServiceEvent {
  final Service service;

  const ServiceDelete(this.service);

  @override
  List<Object> get props => [service];

  @override
  toString() => 'Service Deleted {service: $service}';
}
