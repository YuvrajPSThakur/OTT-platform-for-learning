import 'package:flutter/material.dart';
import 'progressinfo.dart';
class Recommended extends StatefulWidget {

  @override
  _RecommendedState createState() => _RecommendedState();
}

class _RecommendedState extends State<Recommended> {
  List <Progress> courselist = [
        Progress(
        tutor: 'Remedy Design',
        heading: 'Learn Adobe Illustrator',
        weeksleft: '2',
        imageL: 'images/Ai.jpg',
        points: 80,
      totallectures: '30'

    ),
    Progress(
        tutor: 'Louis gunjaare',
        heading: 'Web Development Course',
        weeksleft: '6',
        imageL: 'images/Wd.jpg',
        points: 10 ,
        totallectures: '18',
      cost: 'Rs900'

    ),
    Progress(
        tutor: 'Vardhaan Reddy',
        heading: 'Buisness Management',
        weeksleft: '0',
        imageL: 'images/Bm.png',
        points: 95,
      totallectures: '25',
      cost: 'Rs 800'

    ),
    Progress(
        tutor: 'Aneesha dubey',
        heading: 'Copywriting course',
        weeksleft: '2',
        imageL: 'images/Cw.png',
        points: 10,
      totallectures: '98',
      cost: 'Rs 1000'

    )

  ];
  Widget demoTemplate (progressinfo){
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Container(

        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),

        ),

        height: 320,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      progressinfo.imageL,
                      fit: BoxFit.fill,
                      height: 200,
                    ),
                  ),
                ),


              ],
            ),
            SizedBox(
              height: 2,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text(
                progressinfo.tutor,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.blue[400],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              ' ${progressinfo.heading}',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8 , right: 12 ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
              ' ${progressinfo.totallectures} week course ' ,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[400],
                    ),

                  ),
//                  Container(
//                    padding: EdgeInsets.all(3),
//
//                    decoration: BoxDecoration(
//                        color: Colors.greenAccent[100],
//                        borderRadius: BorderRadius.circular(5),
//                        boxShadow: [BoxShadow(
//                          blurRadius: 1,
//                          color: Colors.grey[700],
//                        )]
//
//                    ),
//                    child: Text(
//                      ' ma chod',
//                      style: TextStyle(
//                        fontSize: 15,
//                        fontWeight: FontWeight.w500,
//                        color: Colors.green[800],
//                      ),
//
//                    ),
//                  ),

                ],
              ),
            ),


          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top : 20.0,),
              child: Text(
                'Hi, Yuvraj ',
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
                'What would you like to learn today ? Search below ',

                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'NotoSansHK',
                    fontWeight: FontWeight.w400,
                    color: Colors.black45
                ),
              ),
            ),
            SizedBox(height: 30,),
            Stack(
              children: <Widget>[
                Container(

                  width: MediaQuery.of(context).size.width/1.2,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,

                  ),
                ),
                Positioned(
                  right: 10,
                  top: 7,
                  child: Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: Colors.blue[400],
                        borderRadius: BorderRadius.circular(5),
                        boxShadow:[BoxShadow(
                            blurRadius: 3,
                            offset: Offset(1,1),
                            color: Colors.black54
                        )]
                    ),


                    child: Icon(
                      Icons.search,
                      color: Colors.white,

                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/11),
              child: Row(
                children: <Widget>[
                  Text(
                    'Recommended',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'NotoSansHK',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,

            )

          ],
        ),
        Container(
          height: 320,
          padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/12),


          child: ListView(
//              useMagnifier: true,
//              magnification: 5,

            children: courselist.map((progressinfo) => demoTemplate(progressinfo)).toList(),
          ),
        )
      ],

    )

    );
  }
}
