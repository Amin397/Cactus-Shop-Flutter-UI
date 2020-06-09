import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemsDetailes extends StatefulWidget {
  final String imgpath;
  final String price;
  final String name;

  ItemsDetailes(this.imgpath, this.price, this.name);

  @override
  _ItemsDetailesState createState() => _ItemsDetailesState();
}

class _ItemsDetailesState extends State<ItemsDetailes> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.blueGrey.withOpacity(.9),
              Colors.blueGrey.withOpacity(.8),
              Colors.blueGrey.withOpacity(.7),
              Colors.blueGrey.withOpacity(.6),
              Colors.blueGrey.withOpacity(.5),
              Colors.blueGrey.withOpacity(.4),
              Colors.blueGrey.withOpacity(.3),
              Colors.blueGrey.withOpacity(.2),
              Colors.blueGrey.withOpacity(.1),
              Colors.transparent
            ], begin: Alignment.centerLeft, end: Alignment.centerRight)),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: width * .07, vertical: height * .065),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 30.0,
                      color: Colors.black87,
                    )),
                Icon(
                  Icons.add_shopping_cart,
                  size: 30.0,
                  color: Colors.black87,
                ),
              ],
            ),
          ),
          Positioned(
            top: height * .15,
            right: -width * .09,
            child: Image(
              width: width * .5,
              fit: BoxFit.cover,
              image: AssetImage(widget.imgpath),
            ),
          ),
          Positioned(
            left: width * .1,
            top: height * .25,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Cactus \n${widget.name}",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: width * .11),
                ),
                SizedBox(height: height * .05,),
                Text(
                  widget.price,
                  style: TextStyle(
                      color: Colors.black45,
                      fontSize: 28.0,
                      fontWeight: FontWeight.w800),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(left: 36.0 , right: 36.0 , bottom: 18.0),
              height: height * .1,
              width: width * .7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                gradient: LinearGradient(
                  colors: [
                    Colors.orangeAccent,
                    Colors.orangeAccent.withOpacity(.9),
                    Colors.orangeAccent.withOpacity(.8),
                    Colors.orangeAccent.withOpacity(.7),
                    Colors.orangeAccent.withOpacity(.6),
                    Colors.orangeAccent.withOpacity(.5),
                    Colors.orangeAccent.withOpacity(.4),
                    Colors.orangeAccent.withOpacity(.3),
                    Colors.orangeAccent.withOpacity(.2),
                    Colors.orangeAccent.withOpacity(.1),
                  ],
                  begin: Alignment.centerRight,
                  end: Alignment.centerLeft
                )
              ),
              child: Center(
                child: Text("Add to Cart" , style: TextStyle(
                  color: Colors.white ,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600
                ),),
              ),
            ),
          )
        ],
      ),
    );
  }
}
