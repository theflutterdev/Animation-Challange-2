import 'package:flutter/material.dart';

class GetDetails {
  String city;
  String imgUrl;
  GetDetails({this.city, this.imgUrl});
}

class DetailViewer extends StatefulWidget {
  final GetDetails getDetails;
  DetailViewer({this.getDetails});
  @override
  _DetailViewerState createState() => _DetailViewerState();
}

class _DetailViewerState extends State<DetailViewer>
    with TickerProviderStateMixin {
  Animation textAnim;
  AnimationController textCtrlAnim;

  Animation textAnim1;
  AnimationController textCtrlAnim1;

  Animation textAnim2;
  AnimationController textCtrlAnim2;
  @override
  void initState() {
    textCtrlAnim =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    textAnim = Tween(begin: 400.0, end: 0.0)
        .chain(CurveTween(
          curve: Curves.easeInOut,
        ))
        .animate(textCtrlAnim)
          ..addListener(() {
            setState(() {});
          });

    textCtrlAnim1 =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    textAnim1 = Tween(begin: 400.0, end: 0.0)
        .chain(CurveTween(
          curve: Curves.easeInOut,
        ))
        .animate(textCtrlAnim1)
          ..addListener(() {
            setState(() {});
          });

    textCtrlAnim2 =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    textAnim2 = Tween(begin: 400.0, end: 0.0)
        .chain(CurveTween(
          curve: Curves.easeInOut,
        ))
        .animate(textCtrlAnim2)
          ..addListener(() {
            setState(() {});
          });

    textCtrlAnim.forward().then((E) {
      textCtrlAnim1.forward().then((E) {
        textCtrlAnim2.forward();
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(widget.getDetails.imgUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert),
            )
          ],
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(),
              Container(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Transform.translate(
                      offset: Offset(textAnim.value, 0.0),
                      child: Text(
                        widget.getDetails.city + "\ntour",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Avenir Bold',
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Transform.translate(
                      offset: Offset(textAnim.value, 0.0),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.timer,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 2.0,
                          ),
                          Text(
                            "2 Days",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Icon(
                            Icons.flight,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 2.0,
                          ),
                          Text(
                            "Flight",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Transform.translate(
                      offset: Offset(textAnim1.value, 0.0),
                      child: Text(
                        "It's a best destination to visit.\nEspically for married couple\nThe city contains various kinds of arts \n& entertainment activities",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Transform.translate(
                offset: Offset(textAnim2.value, 0.0),
                child: Container(
                  padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                  height: 200.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      SizedBox(
                        width: 20.0,
                      ),
                      Container(
                        width: 130.0,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 10.0,
                                spreadRadius: 10.0,
                                offset: Offset(10.0, 10.0),
                              )
                            ],
                            borderRadius: BorderRadius.circular(20.0),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  './images/great_wall_of_china.jpg'),
                            )),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Container(
                        width: 130.0,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 10.0,
                                spreadRadius: 10.0,
                                offset: Offset(10.0, 10.0),
                              )
                            ],
                            borderRadius: BorderRadius.circular(20.0),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('./images/maldives.jpg'),
                            )),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Container(
                        width: 130.0,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 10.0,
                                spreadRadius: 10.0,
                                offset: Offset(10.0, 10.0),
                              )
                            ],
                            borderRadius: BorderRadius.circular(20.0),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('./images/taj.jpeg'),
                            )),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
