import 'package:flutter/material.dart';

import 'intro_page.dart';

var categories = {'Surgeon', 'Urologist', 'Dentist', 'Allergist'};

class PeopleRoute extends StatefulWidget {
  @override
  _PeopleRouteState createState() => _PeopleRouteState();
}

class _PeopleRouteState extends State<PeopleRoute> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/rick.jpg'),
              radius: 100,
            ),
          ),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.notifications_none_rounded), onPressed: null),
          ],
          backgroundColor: Colors.white,
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 30),
                  alignment: Alignment.topLeft,
                  child: Text('Need a',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 30)),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(bottom: 30),
                  child: Text('Doctor?',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 40)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(
                      width: 300,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey[200],
                          prefixIcon: Icon(Icons.search),
                          hintText: 'Search',
                          hintStyle: TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 0.0,
                              color: Colors.transparent,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.blue[300],
                      child: IconButton(
                        icon: Icon(Icons.settings_input_component_outlined),
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Categories',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'See all',
                        style: TextStyle(
                          fontWeight: FontWeight.w200,
                          fontSize: 14,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    categoryCar("surgeon"),
                    categoryCar("urologist"),
                    categoryCar("dentist"),
                    categoryCar("allergist"),
                  ],
                ),

                doctorCard("aleki", "surgeon", 4.3),
                doctorCard("aisha", "cardiologist", 5.0),
                doctorCard("beat", "neurosurgeon", 4.7),
                doctorCard("kagwe", "daktari", 4.0),
                doctorCard("mendeley", "lab technician", 4.6),

              ],
            ),
          ),
        ));
  }

  // List<Doctor> doctors = [
  //   Doctor("aisha"),
  //   Doctor("aleki"),
  //   Doctor("beat"),
  //   Doctor("kagwe"),
  //   Doctor("mendeley"),
  // ];

  Widget doctorCard(doctor, category, rating) {
    return SizedBox(
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => IntroRoute()),
          );
        },
        child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            margin: const EdgeInsets.fromLTRB(0.0, 25.0, 0.0, 0),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/doctors/$doctor.jpg'),
                      radius: 35,
                    ),
                  ),
                  SizedBox(width: 15),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Dr. $doctor",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey[800],
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          '$category',
                          style: TextStyle(
                            // fontSize: 20.0,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey[800],
                          ),
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            ImageIcon(
                              AssetImage('assets/images/star-icon.png'),
                              size: 15,
                              color: Colors.yellow[700],
                            ),
                            SizedBox(width: 8),
                            Text(
                              '$rating',
                            ),
                            SizedBox(width: 30),
                            Icon(
                              Icons.access_time_outlined,
                              size: 15,
                            ),
                            SizedBox(width: 6),
                            Text(
                              '10.00 AM - 3.00 PM',
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }

  Widget categoryCar(String category) {
    //Color color = new Color(Colors.blue);
    return SizedBox(
      width: 85,
      child: GestureDetector(
        onTap: () {
          print("Click event on Container");
        },
        child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            color: Colors.white,
            margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: Image(
                      image: AssetImage("assets/images/" + category + ".jpg"),
                    ),
                  ),
                  SizedBox(height: 15),
                  Center(
                    child: Text(
                      category,
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey[800],
                      ),
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}

// class Doctor {
//   String name, category;
//   Doctor(this.name, this.category);
// }

// class Category {
//   String path;
//   String category;
//   Category({this.path, this.category});
// }
