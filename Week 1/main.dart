import 'dart:html';

import 'package:flutter/material.dart';

void main()=> runApp(
   MaterialApp(home:Home())
); 
  
class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:const Text('Assignment'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Center(
        child: SizedBox(
          child: Row(
            children: <Widget>[
              const Icon(Icons.add_box),
              const Icon(Icons.access_alarm),
              Expanded(
                flex: 1,
                child: Container(
                  margin:const EdgeInsets.all(10.0),
                  padding:const EdgeInsets.all(30.0),
                  color: Colors.cyan,
                  child:const Text('Hello'),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  margin:const EdgeInsets.all(10.0),
                  padding:const EdgeInsets.all(30.0),
                  color: Colors.pinkAccent,
                  child:const Text('World'),
                ),
              ),
              
              Column(
                children: [
                  Center(
                    child: ElevatedButton(
                      onPressed: (){},
                      child: Text('Click Me'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.lightBlue,
                        onPrimary: Colors.white,
                        onSurface: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ],

          ),

        ),
      ),
      
      floatingActionButton: IconButton(
        onPressed: (){},
       icon:const Icon(Icons.add),
      color: Colors.red[600],
      ),
    );
  }

}
