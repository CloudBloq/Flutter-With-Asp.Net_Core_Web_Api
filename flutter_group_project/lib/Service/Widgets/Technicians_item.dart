import 'package:flutter/material.dart';

class TechnicianItem extends StatelessWidget {
  final String name;
  final int id;
  final String imageUrl;
  TechnicianItem(this.name, this.id, this.imageUrl);
  void selectedTechnicians(BuildContext context){
//    this will be the selected technicians method
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(

      onTap: () => this.selectedTechnicians(context),
      child: Card(

color: Colors.grey,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)
          ),
          elevation: 4,
            margin: EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                  decoration: BoxDecoration(

                  ),
                height: MediaQuery.of(context).size.height * 0.23,

                child: Stack(
                  children: [
                    Positioned(

                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                        ),
                        child: Image.asset(imageUrl,  fit: BoxFit.fill,),
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      right: 10,

                      child: Container(
                        width: 300,
                        color:Colors.black54,
                        padding: EdgeInsets.symmetric(vertical: 4,
                            horizontal: 20),
                        child: Text("yared",style: TextStyle(
                          fontSize: 26,
                          color: Colors.white,
                        ),
                          softWrap: true,
                          overflow: TextOverflow.fade,


                        ),
                      ),
                    )
                  ],),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                color: Colors.white,
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,

                  children: [
                   Row(
                     children: [
                       Icon(Icons.alarm),
                       Text("Alarm")
                     ],
                   ),
                    Row(
                      children: [
                        Icon(Icons.alarm),
                        Text("Alarm")
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.alarm),
                        Text("Alarm")
                      ],
                    )
                  ],
                ),
              )
                ],
              )



      ),
    );
  }
}
