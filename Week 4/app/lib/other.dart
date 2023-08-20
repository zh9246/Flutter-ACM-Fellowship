import 'package:flutter/material.dart';



class Other extends StatefulWidget {
  @override
  _OtherState createState() => _OtherState();
}

class _OtherState extends State<Other> {
  double width1 = 100.0;
  Color color1 = Colors.blue;

  void TweenAnimate() {
    setState(() {
      if (width1 == 100.0) {
        width1 = 200.0;
        color1 = Colors.red;
      } else {
        width1 = 100.0;
        color1 = Colors.blue;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tween Animation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TweenAnimationBuilder<double>(
              tween: Tween<double>(begin: 100.0, end: width1),
              duration: Duration(seconds: 1),
              builder: (BuildContext context, double width, Widget? child) {
                return Container(
                  width: width,
                  height: 100.0,
                  color: color1,
                  child: Center(
                    child: Text(
                      'Tween Animation',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                );
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: TweenAnimate,
              child: Text('Animate'),
            ),
          ],
        ),
      ),
    );
  }
}
