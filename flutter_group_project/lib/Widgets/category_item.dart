import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String image;
  final String text;
  var width;
  var height;
  CategoryItem({this.image,this.text});
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: (){
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: GridTile(
            child: Image.asset('assets/images/${image==null? 'electronics.jpg': image}',fit: BoxFit.cover,),
            footer: GridTileBar(
              title: Text(text,textAlign: TextAlign.center,),
              // backgroundColor: Color(0xffe8b21c),
              // backgroundColor: Theme.of(context).accentColor,
              backgroundColor: Colors.black87,
              leading: IconButton(
                color: Colors.amberAccent,
                icon:  Icon(Icons.favorite) ,
                onPressed: (){
                },

              ),


            ),
          ),
        ),
      ),
    );
  }
}




