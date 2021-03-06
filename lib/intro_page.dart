import 'package:flutter/material.dart';
import 'package:hospital_app/view_doctors.dart';


class IntroRoute extends StatelessWidget {
  final bool addMargin = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[300],
      // appBar: AppBar(
      //   title: Text('First Route'),
      // ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20.0, 100.0, 20.0, 10.0),

          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: Image(
                  image: AssetImage("assets/images/doctor.jpg"),
                ),
              ),

              SizedBox(height: 20.0),

              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  'Find Your',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontFamily: "monospace",
                    fontSize: 35,
                    letterSpacing: 1,
                  ),

                ),
              ),

              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: Text(
                  'Perfect Doctor',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 35,
                    letterSpacing: 1.5,
                  ),

                ),
              ),

              Center(

                child: Text(
                  'Easy way to make',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    letterSpacing: 1.2,
                  ),

                ),
              ),

              Center(
                child: Text(
                  'an appointment with a doctor',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      letterSpacing: 1.1
                  ),

                ),
              ),

              SizedBox(height: 100.0),

              FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Text(
                  'Let\'s Get Started',
                  style: TextStyle(
                    color: Colors.grey[750],
                    fontSize: 20,
                  ),
                ),
                minWidth: 300,
                height: 70,
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PeopleRoute()),
                  );
                },
              ),
            ],
          ),

        ),
      ),
    );
  }
}
