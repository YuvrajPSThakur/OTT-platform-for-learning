import 'package:flutter/material.dart';
import 'home.dart';
import 'courses.dart';
import 'profile.dart';

void main() {
  runApp(MaterialApp(
    home: learn(),
  ));
}
class learn extends StatefulWidget {
  @override
  _learnState createState() => _learnState();
}

class _learnState extends State<learn> {
  @override
  int currentIndex = 0 ;
  final tabs = [
    Recommended(),
    Courses(),
    Profile()

  ];
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: Container(
        padding: EdgeInsets.only( top: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
              boxShadow: [BoxShadow(
               blurRadius: 5,
                color: Colors.grey[400],
                offset: Offset(1, 10)
              )
            ]

        ),
        child: BottomNavigationBar(

            currentIndex: currentIndex,
            type: BottomNavigationBarType.shifting,
            selectedItemColor: Colors.blue[400],
            unselectedItemColor: Colors.grey,
            items: [

          BottomNavigationBarItem(
              icon: Icon(Icons.home,),
            title: Text('Home '),



          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            title: Text('Courses'),


          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.perm_identity),
            title: Text('Profile'),



          )
        ],
        onTap:  (index){
              setState(() {
                currentIndex = index ;
              });


    },
        ),
      ),
      body: tabs [ currentIndex],
    );
  }
}

