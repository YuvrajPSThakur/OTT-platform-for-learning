import 'package:flutter/material.dart';
import 'grids.dart';

class Courses extends StatefulWidget {

  @override
  _CoursesState createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children : <Widget> [Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top : 20.0,),
              child: Text(
                'Check your Progress here ',
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'NotoSansHK',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60 , vertical: 10),
              child: Text(
                'You have 5 ongoing courses ',

                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'NotoSansHK',
                    fontWeight: FontWeight.w400,
                    color: Colors.black45
                ),
              ),
            ),
            Container(
              height: 500,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical : 10.0),
                child: GridV(),
              ),
            )


          ],
        ),]

      ),
    );
  }
}
