import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:hospital_app/view_doctors.dart';


void main() {
  runApp(MaterialApp(
    title: 'Find your doctor',
    home: ThirdRoute(),
    color: Colors.black,
    debugShowCheckedModeBanner: true,
  ));
}


var locations = ["Nairobi, Kenya", "New York, USA", "Dubai, UAE", "Nauru, Nauru"];
var randLoc = (locations..shuffle()).first;


class ThirdRoute extends StatelessWidget {
  final String name, category;
  final double rating;

  ThirdRoute(
      {Key key, @required this.name, @required this.category, @required this.rating})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.black54,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PeopleRoute()));
            },
          ),
          actions: [
            Icon(
              Icons.favorite_outline,
              color: Colors.black54,
            )
          ],
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          child: Column(
              children: <Widget>[
              FractionallySizedBox(
                alignment: Alignment.topCenter,
                widthFactor: 1,
                child: Container(
                  child: new FittedBox(
                    fit: BoxFit.fill,
                    child: Image(image: AssetImage("assets/images/rick.jpg")),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 14),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(14, 14, 14, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Dr. $name',
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40)
                              ),
                              Text('$category',
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.grey),
                              ),
                            ],
                          ),

                          SizedBox(width: 30),
                          Container(
                            width: 55,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(203, 226, 253, 1.0),
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                            ),
                            child: FlatButton(
                                child: Icon(Icons.call_outlined, color: Colors.blue[900]),
                            ),
                          ),
                          Container(
                            width: 55,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(203, 226, 253, 1.0),
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                            ),
                            child: FlatButton(
                              child: Icon(Icons.videocam_outlined, color: Colors.blue[900]),
                            ),
                          ),
                          Container(
                            width: 55,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(203, 226, 253, 1.0),
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                            ),
                            child: FlatButton(
                              child: Icon(Icons.mail_outline, color: Colors.blue[900]),
                              onPressed: (){},
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 10),

                      Row(
                        children: <Widget>[
                          Icon(Icons.location_on_outlined),
                          Text(
                            '$randLoc',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 20
                            ),
                          )
                        ],
                      ),

                      SizedBox(height: 20),

                      Text('About',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40
                        ),),
                      SizedBox(height: 20),
                      Center(
                        child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus venenatis enim mauris, in venenatis metus consequat quis. Aenean ac purus luctus, semper dolor sed',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey
                          ),
                        ),
                      ),

                      SizedBox(height: 40),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                          width: 160,
                          child: Card(
                              shape: RoundedRectangleBorder(
                                side: new BorderSide(color: Colors.blue, width: 2.0),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              color: Colors.white,
                              margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Reviews',
                                      style: TextStyle(
                                        fontSize: 25.0,
                                        color: Colors.grey[800],
                                      ),
                                    ),
                                    SizedBox(height: 15),
                                    Row(
                                      children: [
                                        Icon(Icons.star_outline),
                                        Text(
                                          '$rating',
                                          style: TextStyle(
                                            fontSize: 14.0,
                                            color: Colors.grey[800],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )),
                          ),

                          SizedBox(height: 40),

                          SizedBox(
                            width: 160,

                            child: Card(

                                shape: RoundedRectangleBorder(
                                  side: new BorderSide(color: Colors.blue, width: 2.0),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                color: Colors.white,
                                margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0),
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        'Patients',
                                        style: TextStyle(
                                          fontSize: 25.0,
                                          color: Colors.grey[800],
                                        ),
                                      ),
                                      SizedBox(height: 15),
                                      Row(
                                        children: [
                                          Icon(Icons.people_outline),
                                          Text(
                                            '10K',
                                            style: TextStyle(
                                              fontSize: 14.0,
                                              color: Colors.grey[800],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )),
                          ),
                        ],
                      ),

                      SizedBox(height: 30),

                      Center(
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Text(
                            'Book an Appointment',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          minWidth: 300,
                          height: 70,
                          color: Color.fromRGBO(81, 147, 243, 1.0),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => PeopleRoute()),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ))
          ]),
        ));
  }
}
