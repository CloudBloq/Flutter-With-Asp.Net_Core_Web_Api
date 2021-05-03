import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_group_project/Service/Bloc/bloc.dart';
import 'package:flutter_group_project/Service/Screen/screens.dart';
import 'package:flutter_group_project/Service/Service.dart';



class AddUpdateService extends StatefulWidget {
  static const routeName = 'courseAddUpdate';
  final ServiceArgument args;

  AddUpdateService({this.args});
  @override
  _AddUpdateServiceState createState() => _AddUpdateServiceState();
}

class _AddUpdateServiceState extends State<AddUpdateService> {
  final _formKey = GlobalKey<FormState>();

  final Map<String, dynamic> _service = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.args.edit ? "Edit Course" : "Add New Course"}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [

              TextFormField(
                  initialValue: widget.args.edit ? widget.args.service.ServiceName : '',
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter course code';
                    }
                    return null;
                  },
                  decoration: InputDecoration(labelText: 'Service Name'),
                  onSaved: (value) {
                    setState(() {
                      this._service["serviceName"] = value;
                    });
                  }),
              TextFormField(
                  initialValue:
                  widget.args.edit ? widget.args.service.Description : '',
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter service  Description';
                    }
                    return null;
                  },
                  decoration: InputDecoration(labelText: 'Description'),
                  onSaved: (value) {
                    this._service["description"] = value;
                  }),
              TextFormField(
                  initialValue: widget.args.edit
                      ? widget.args.service.Category
                      : '',
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter Service Category';
                    }
                    return null;
                  },
                  decoration: InputDecoration(labelText: 'Category'),
                  onSaved: (value) {
                    setState(() {
                      this._service["category"] = value;
                    });
                  }),

              TextFormField(
                  initialValue: widget.args.edit
                      ? widget.args.service.InitialPrice.toString()
                      : '',
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter Service Initial Pice';
                    }
                    return null;
                  },
                  decoration: InputDecoration(labelText: 'InitialPrice'),
                  onSaved: (value) {
                    setState(() {
                      this._service["initialPrice"] = int.parse(value);
                    });
                  }),
              TextFormField(
                  initialValue: widget.args.edit
                      ? widget.args.service.IntermediatePrice.toString()
                      : '',
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter Service Intermediate Pice';
                    }
                    return null;
                  },
                  decoration: InputDecoration(labelText: 'Intermediate'),
                  onSaved: (value) {
                    setState(() {
                      this._service["intermediatePrice"] = int.parse(value);
                    });
                  }),
            TextFormField(
                initialValue: widget.args.edit
                    ? widget.args.service.AdvancedPrice.toString()
                    : '',
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter Service Advanced Pice';
                  }
                  return null;
                },
                decoration: InputDecoration(labelText: 'AdvancedPrice'),
                onSaved: (value) {
                  setState(() {
                    this._service["advancedPrice"] = int.parse(value);
                  });
                }),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton.icon(
                  onPressed: () {
                    final form = _formKey.currentState;
                    if (form.validate()) {
                      form.save();
                      final ServiceEvent event = widget.args.edit
                          ? ServiceUpdate(

                        Service(
                          id: widget.args.service.id,
                         ServiceName: this._service["serviceName"],
                        Description: this._service["description"],
                        Category: this._service["category"],
                        InitialPrice: this._service["initialPrice"],
                        IntermediatePrice: this._service["intermediatePrice"],
                        AdvancedPrice: this._service["advancedPrice"],
                        ),
                      )
                          : ServiceCreate(
                        Service(

                          ServiceName: this._service["serviceName"],
                          Description: this._service["description"],
                          Category: this._service["category"],
                          InitialPrice: this._service["initialPrice"],
                          IntermediatePrice: this._service["intermediatePrice"],
                          AdvancedPrice: this._service["advancedPrice"],
                        ),
                      );
                      BlocProvider.of<ServiceBloc>(context).add(event);
                      Navigator.of(context).pushNamedAndRemoveUntil(
                          CategoryMainScreen.routeName, (route) => false);
                    }
                  },
                  label: Text('SAVE'),
                  icon: Icon(Icons.save),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
