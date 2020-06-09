import 'package:cactusshopapp/pages/items_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final String imgPath = "assets/images/cactus-1.png";
  final String price = "\$ 352.00";
  final String name = "Astrofium";

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        overflow: Overflow.visible,
        children: <Widget>[
          Container(
            height: height,
            width: width * .22,
            color: Colors.blueGrey.withOpacity(.2),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _upRow(context),
              Padding(
                padding: EdgeInsets.only(left: width * .15, top: height * .05),
                child: Text(
                  "Cactus\nFore Home",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 45.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              _midleItems(context),
              _bottomItems(context),
              _bottomNote(context),
            ],
          ),
        ],
      ),
    );
  }

  Widget _bottomNote(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width * .16,
          top: MediaQuery.of(context).size.height * .015),
      child: Container(
        height: MediaQuery.of(context).size.height * .02,
        width: MediaQuery.of(context).size.height * .02,
        decoration:
            BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.deepOrangeAccent.withOpacity(.8),
              boxShadow: [
                BoxShadow(color: Colors.deepOrangeAccent.withOpacity(.8) , blurRadius: 5.0 , spreadRadius: 5.0)
              ]
            ),
      ),
    );
  }

  Widget _bottomItems(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 36.0, right: 36.0, top: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Popular",
            style: TextStyle(
                color: Colors.black87.withOpacity(.9),
                fontSize: 18.0,
                fontWeight: FontWeight.w600),
          ),
          Text(
            "Newest",
            style: TextStyle(
                color: Colors.black87.withOpacity(.9),
                fontSize: 18.0,
                fontWeight: FontWeight.w600),
          ),
          Text(
            "Latest",
            style: TextStyle(
                color: Colors.black87.withOpacity(.9),
                fontSize: 18.0,
                fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }

  Widget _midleItems(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .56,
      child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (_) => ItemsDetailes(imgPath , price , name)),);
              },
              child: Padding(
                padding: EdgeInsets.only(bottom: 30.0, right: 8.0),
                child: _buildItems(context, index),
              ),
            );
          }),
    );
  }

  Widget _buildItems(BuildContext context, int index) {
    return Stack(
      children: <Widget>[
        Container(
            margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * .1,
                top: MediaQuery.of(context).size.height * .08),
            width: MediaQuery.of(context).size.width * .5,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.blueGrey.withOpacity(.5),
                      blurRadius: 15.0,
                      spreadRadius: 3.0)
                ],
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: MediaQuery.of(context).size.height * .27,
                  left: MediaQuery.of(context).size.width * .05,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        price,
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Astrofium",
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 24.0,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
                Positioned(
                  left: MediaQuery.of(context).size.width * .12,
                  bottom: MediaQuery.of(context).size.height * .02,
                  child: Text(
                    "Buy Now",
                    style:
                        TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )),
        Positioned(
          left: MediaQuery.of(context).size.width * .2,
          top: MediaQuery.of(context).size.height * .24,
          child: Container(
            height: MediaQuery.of(context).size.height * .1,
            width: MediaQuery.of(context).size.width * .3,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.deepOrangeAccent.withOpacity(.1),
                      spreadRadius: 10.0,
                      blurRadius: 20.0)
                ]),
          ),
        ),
        Positioned(
          top: 0.0,
          left: MediaQuery.of(context).size.width * .22,
          child: Image(
            height: MediaQuery.of(context).size.height * .32,
            fit: BoxFit.cover,
            image: AssetImage(imgPath),
          ),
        ),
      ],
    );
  }

  Widget _upRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 36.0, right: 36.0, top: 46.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.width * .1,
            width: MediaQuery.of(context).size.width * .1,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/menu-icon.png"))),
          ),
          Container(
            height: MediaQuery.of(context).size.width * .08,
            width: MediaQuery.of(context).size.width * .08,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/search-icon.png"))),
          ),
        ],
      ),
    );
  }
}
