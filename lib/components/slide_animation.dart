import 'package:complex_animation_design_2/components/details_viewer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SlideAnimation extends StatefulWidget {
  @override
  _SlideAnimationState createState() => _SlideAnimationState();
}

class _SlideAnimationState extends State<SlideAnimation> {
  final PageController pctrl = PageController(viewportFraction: 0.7);
  int currInd;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.7,
      child: PageView(
        onPageChanged: (i) {
          setState(() {
            currInd = i;
          });
        },
        controller: pctrl,
        children: <Widget>[
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailViewer(
                            getDetails: GetDetails(
                                city: 'Great Wall of China',
                                imgUrl: 'images/great_wall_of_china.jpg'),
                          )));
            },
            child: AnimatedContainer(
              duration: Duration(
                milliseconds: 300,
              ),
              curve: Curves.easeIn,
              margin: currInd == 0
                  ? EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0)
                  : EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
              height: 100.0,
              width: 100.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: Colors.red,
                  image: DecorationImage(
                    image: AssetImage('./images/great_wall_of_china.jpg'),
                    fit: BoxFit.cover,
                  )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              color: Colors.black38.withOpacity(0.5),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(30.0),
                                bottomLeft: Radius.circular(20.0),
                              )),
                          alignment: Alignment.topRight,
                          child: Icon(
                            Icons.star_border,
                            color: Colors.white,
                          )),
                    ],
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Great Wall of China",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Avenir Bold',
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              width: 30.0,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.white,
                            ),
                            Icon(Icons.star_half, color: Colors.white),
                            SizedBox(
                              width: 30.0,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailViewer(
                            getDetails: GetDetails(
                                city: 'Maldives',
                                imgUrl: 'images/maldives.jpg'),
                          )));
            },
            child: AnimatedContainer(
              duration: Duration(
                milliseconds: 300,
              ),
              curve: Curves.easeIn,
              margin: currInd == 1
                  ? EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0)
                  : EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
              height: 100.0,
              width: 100.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: Colors.red,
                  image: DecorationImage(
                    image: AssetImage('./images/maldives.jpg'),
                    fit: BoxFit.cover,
                  )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              color: Colors.black38.withOpacity(0.5),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(30.0),
                                bottomLeft: Radius.circular(20.0),
                              )),
                          alignment: Alignment.topRight,
                          child: Icon(
                            Icons.star_border,
                            color: Colors.white,
                          )),
                    ],
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Maldives",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Avenir Bold',
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              width: 30.0,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.white,
                            ),
                            Icon(Icons.star_half, color: Colors.white),
                            SizedBox(
                              width: 30.0,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailViewer(
                            getDetails: GetDetails(
                                city: 'Maldives',
                                imgUrl: 'images/maldives.jpg'),
                          )));
            },
            child: AnimatedContainer(
              duration: Duration(
                milliseconds: 300,
              ),
              curve: Curves.easeIn,
              margin: currInd == 2
                  ? EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0)
                  : EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
              height: 100.0,
              width: 100.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: Colors.red,
                  image: DecorationImage(
                    image: AssetImage('./images/taj.jpeg'),
                    fit: BoxFit.cover,
                  )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              color: Colors.black38.withOpacity(0.5),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(30.0),
                                bottomLeft: Radius.circular(20.0),
                              )),
                          alignment: Alignment.topRight,
                          child: Icon(
                            Icons.star_border,
                            color: Colors.white,
                          )),
                    ],
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Taj Mahal",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Avenir Bold',
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              width: 30.0,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.white,
                            ),
                            Icon(Icons.star_half, color: Colors.white),
                            SizedBox(
                              width: 30.0,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
