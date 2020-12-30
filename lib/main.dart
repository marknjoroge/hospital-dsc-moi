import 'package:flutter/material.dart';
import 'package:hospital_app/people_page.dart';

void main() {
  runApp(MaterialApp(
    
    title: 'Navigation Basics',
    home: FirstRoute(),
    color: Colors.white,
  ));
}

class FirstRoute extends StatelessWidget {
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
            icon: Icon(Icons.notifications_none_rounded), 
            onPressed: null
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Padding(
        
        padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
        child: Column(
          
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 30),
                alignment: Alignment.topLeft,
                child: Text(
                  'Need a',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30
                  )
                ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                'Doctor?',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 40
                )
              ),
            ),
            Row(
              children: <Widget>[
                SizedBox(height: 50,)
              ],
            ),
          ],
        ),
      )
    );
  }
}