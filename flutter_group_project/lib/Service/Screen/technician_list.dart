import 'package:flutter/material.dart';
import 'package:flutter_group_project/Widgets/category_item.dart';

class CategoryList extends StatefulWidget {
  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  final texts =['Builder','Mechanical Exp','Electrician','Metal Exp','Plumber','Wood Exp'];
  final images =['civ.jpg','mec.jpg','elc.jpg','me.jpg','plu.jpg','woo.jpg'];
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: List.generate(6, (index) {
        return CategoryItem(image: images[index],text: texts[index],);
      }),

    );
  }
}
