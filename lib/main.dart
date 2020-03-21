import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MaterialApp(
  home: Home(),
  debugShowCheckedModeBanner: false,
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("BizCard")
      ),
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            getCard(),
            getAvatar(),
          ],
        ),
      ),
    );
  }

  Container getCard() {
    return Container(
      height: 200,
      width: 350,
      margin: const EdgeInsets.only(top:50.0,left: 10.0,right: 10.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Colors.pinkAccent
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom:6.0),
            child: Text("Jaskaran Singh",
              style: TextStyle(color: Colors.white,fontSize: 20.9,fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom:6.0),
            child: Text("Youtube Developer Singh"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.person_outline),
              Text("developersingh07@gmail.com")
            ],
          )
        ],
      ),
    );
  }

  getAvatar() {
    return Container(
        height: 100.0,
        width: 100.0,
        decoration: BoxDecoration(
            image: DecorationImage(image: NetworkImage("https://picsum.photos/seed/picsum/200/300",),fit: BoxFit.cover),
            borderRadius: BorderRadius.all(Radius.circular(50.0)),
            border: Border.all(color: Colors.redAccent,style: BorderStyle.solid,width: 1.2)
        )
    );
  }

}