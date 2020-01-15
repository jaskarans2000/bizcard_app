import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
  debugShowCheckedModeBanner: false,
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BizCard"),
      ),

      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              height: 200.0,
              width: 400.0,
              margin: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                  color: Colors.pinkAccent,
                  borderRadius: BorderRadius.circular(30.0)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Jaskaran Singh",
                    style: TextStyle(color: Colors.white,fontSize: 20.0),),
                  Text("Developersingh(YouTube)",style: TextStyle(fontSize: 16.0),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.person_outline),
                      Text("T.: @buldappswithme",style: TextStyle(fontSize: 16.0),),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom:200.0),
              child: Container(
                height: 100.0,
                width: 100.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    border: Border.all(
                        color: Colors.red,
                        width: 1.2
                    ),
                    image: DecorationImage(image: NetworkImage("https://picsum.photos/seed/picsum/200/300"),
                        fit: BoxFit.cover)
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}