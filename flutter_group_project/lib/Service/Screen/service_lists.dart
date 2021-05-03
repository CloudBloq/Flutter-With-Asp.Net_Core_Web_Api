import 'package:flutter/material.dart';
import 'package:flutter_group_project/Widgets/category_item.dart';
class ServiceList extends StatefulWidget {



  @override
  _ServiceListState createState() => _ServiceListState();
}

class _ServiceListState extends State<ServiceList> {
  final texts =['Building','Mechanical','Electrical','Metal','Plumbing','Wood'];
  final images =['building.jpg','mechanical.jpg','electric.jpg','metal.jpg','plumbing.png','wood.jpg'];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: GridView.count(
          crossAxisCount: 2,
        children: List.generate(6, (index) {
          return CategoryItem(image: images[index],text: texts[index] ,);
        }),
      ),
    );



  }}