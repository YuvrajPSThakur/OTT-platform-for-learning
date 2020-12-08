import 'package:flutter/material.dart';
import 'progressinfo.dart';
class GridV extends StatefulWidget {

  @override
  _GridVState createState() => _GridVState();
}

class _GridVState extends State<GridV> {

  List <Progress> griddata = [
    Progress(
      tutor: 'Oppenheimer',
      heading: 'Product design' ,
      weeksleft: '4',
      points: 60 ,
      imageL: 'images/Pd.jpg'

    ),
    Progress(
      tutor: 'Remedy Design',
      heading: 'Learn Adobe Illustrator',
      weeksleft: '2',
      imageL: 'images/Ai.jpg',
      points: 80

    ),
    Progress(
        tutor: 'Louis gunjaare',
        heading: 'Web Development Course',
        weeksleft: '6',
        imageL: 'images/Wd.jpg',
        points: 10

    ),
    Progress(
        tutor: 'Vardhaan Reddy',
        heading: 'Buisness Management',
        weeksleft: '0',
        imageL: 'images/Bm.png',
        points: 95

    ),
    Progress(
        tutor: 'Aneesha dubey',
        heading: 'Copywriting course',
        weeksleft: '2',
        imageL: 'images/Cw.png',
        points: 10

    )

  ];
  Widget gridTemplate (progressinfo) {
    return  Card(
      elevation: 4,
      borderOnForeground: true,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Image.asset(progressinfo.imageL ,
            colorBlendMode: BlendMode.plus,
            height: 200,
            width: 200,
            fit: BoxFit.cover,
            color: Colors.white70,
          ),
          Positioned(
            top: 33,
            left: 82,

            child: Text( '${progressinfo.points}\u0025 ',
              style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w700,
                  color: Colors.blue[800]
              ),
            ),
          ),
          Positioned(
            top: 15,
            child: Container(
              width: 60,
              height: 60,

              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation <Color> (Colors.blue[600]),
                value: progressinfo.points/100,
                strokeWidth: 10,
                backgroundColor: Colors.blue[100],


              ),
            ),
          ),
          Positioned(
            bottom: 35,
            left: 20,
            child: Text(progressinfo.tutor ,
              style: TextStyle(
                color: Colors.deepPurple[800],
              ) ,

            ),
          ),
          Positioned(
            bottom: 10,
            left: 20,
            child: Text('${progressinfo.weeksleft} weeks left ',
              style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 19,
                  fontWeight: FontWeight.bold
              ) ,

            ),
          ),
          Positioned(
            top: 90,
            left: 20,
            child: Container(
              width: 185,
              child: Text(progressinfo.heading,
                style: TextStyle(
                    color: Colors.deepPurple[800],
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ) ,

              ),
            ),
          )

        ],
      ),



    );

  }
  @override
  Widget build(BuildContext context) {
    return GridView(
       padding: EdgeInsets.all(5),

        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount( crossAxisCount: 2),
       children: griddata.map((progressinfo) => gridTemplate(progressinfo)).toList(),
    ) ;
  }
}
