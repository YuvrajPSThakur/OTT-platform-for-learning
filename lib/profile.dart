import 'package:flutter/material.dart';
class Profile extends StatefulWidget {
  @override

  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(80),

                  boxShadow: [BoxShadow(
                    blurRadius: 12,
                    color: Colors.grey[800],
                  )]
                ),
                child: CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage('images/clsup.jpg',

                  ),
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'Yuvraj Singh',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
                fontFamily: 'NotoSansHK',
                fontWeight: FontWeight.w700,
              ),


            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10 , vertical: 5),
              margin: EdgeInsets.symmetric(horizontal: 0 , vertical: 5),

              decoration: BoxDecoration(
                  color: Colors.purpleAccent[100] ,
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    width: 1,
                    color: Colors.deepPurple[400] ,
                  ),
                  borderRadius: BorderRadius.all(
                      Radius.circular(5)
                  )

              ),
              child: Text(
                'Premium User',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15 ,
                  color: Colors.deepPurple ,
                ),

              ),
            ),
            
          ],
        ),
        
      ],

    ));
  }
}
