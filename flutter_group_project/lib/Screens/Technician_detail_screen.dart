import 'package:flutter/material.dart';
import 'package:flutter_group_project/Widgets/CustomFAB.dart';
import 'package:flutter_group_project/Widgets/Technician_data.dart';

const _kTechnicianTextStyle = TextStyle(
  color: Colors.green,
  fontSize: 17,
  fontWeight: FontWeight.bold,
);

const _kTechnicianNameStyle = TextStyle(
  color: Colors.green,
  fontSize: 20,
  fontWeight: FontWeight.bold,
);


class TechnicianDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Technician Detail"),
      ),
      body: (MediaQuery.of(context).orientation == Orientation.landscape)
          ? LandscapeView()
          : PortraitView(),
      floatingActionButton: CustomFAB(
        onPressed: () {
          Navigator.pushNamed(context, '/goto_map');
        },
      ),
    );
  }
}

class LandscapeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image(
          width: MediaQuery.of(context).size.width * 0.6,
          image: AssetImage('assets/Images/computer_technician.jpg'),
        ),
        SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TechnicianData(
                data: "Getachew Tebikew",
                textStyle: _kTechnicianNameStyle,
              ),
              TechnicianData(
                data: "Email@example.com",
                icon: Icons.email,
                textStyle: _kTechnicianTextStyle,
              ),
              TechnicianData(
                data: "+25199-099-9090",
                icon: Icons.phone,
                textStyle: _kTechnicianTextStyle,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class PortraitView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          // height: MediaQuery.of(context).size.height / 2,
          // width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(vertical: 3.0),
          child: Image(
            image: AssetImage('assets/Images/computer_technician.jpg'),
          ),
        ),
        TechnicianData(
          data: "Getachew Tebikew",
          textStyle: _kTechnicianNameStyle,
        ),
        SingleChildScrollView(
          child: Column(
            children: [
              TechnicianData(
                data: "Email@example.com",
                icon: Icons.email,
                textStyle: _kTechnicianTextStyle,
              ),
              TechnicianData(
                data: "+25199-099-9090",
                icon: Icons.phone,
                textStyle: _kTechnicianTextStyle,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
