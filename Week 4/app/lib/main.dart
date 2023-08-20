import 'package:app/other.dart';
import 'package:flutter/material.dart';
import 'other.dart';
void main() {
  runApp(MaterialApp(
    home: Main(),
  ));
}

class Main extends StatefulWidget {
  @override
  _MainState createState() =>
      _MainState();
}

class _MainState extends State<Main> {
  double containerWidth = 100.0;
  double containerHeight = 100.0;
  Color containerColor = Colors.blue;
  BorderRadiusGeometry borderRadius = BorderRadius.circular(8.0);

  void Animate() {
    setState(() {
      containerWidth = containerWidth == 100.0 ? 150.0 : 100.0;
      containerHeight = containerHeight == 100.0 ? 150.0 : 100.0;
      containerColor =
          containerColor == Colors.blue ? Colors.red : Colors.blue;
      borderRadius =
          borderRadius == BorderRadius.circular(8.0)
              ? BorderRadius.circular(75.0)
              : BorderRadius.circular(8.0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Implicit Animation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedContainer(
              duration: Duration(seconds: 1),
              width: containerWidth,
              height: containerHeight,
              decoration: BoxDecoration(
                color: containerColor,
                borderRadius: borderRadius,
              ),
              child:const Center(
                child: Text(
                  'Animated Container',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: Animate,
              child: Text('Animate'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton
      (
        onPressed: () => Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => Other()),
        ),
        child: Icon(Icons.arrow_forward),
      )
    );
    
  }
}


