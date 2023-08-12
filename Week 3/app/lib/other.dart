import 'package:app/main.dart';
import 'package:flutter/material.dart';



class Other extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Week 3',
      home: StackRichTextListExample(),
    );
  }
}

class StackRichTextListExample extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Week 3'),
      ),
      body: Center(child:Stack(
        alignment: Alignment.center,
        children: [
          Image.network(
            'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif', 
            

          ),
          
          Positioned(
            top: 20,
            
            right: 140,
            child: RichText(
              text: TextSpan(
                text: 'Week 3 Yuuuuuuuuu',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          
        ],
      ),),
      floatingActionButton: FloatingActionButton
      (
        onPressed: () {
          Navigator.push(context, 
          MaterialPageRoute(builder: (context) => Main()));
        },
        child: Icon(Icons.back_hand),
      )
    );
  }
}
