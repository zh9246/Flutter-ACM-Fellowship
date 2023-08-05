import 'package:app/Ascreen.dart';
import 'package:app/Bscreen.dart';
import 'package:app/main.dart';
import 'package:flutter/material.dart';

void main()=> runApp(
   MaterialApp(home:FirstRoute())
); 

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Page'),
      ),
      body: Center(
        
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                child: const Text('Forgot password?'),
                onPressed: () {
                  // Navigate to second route when tapped.
                  Navigator.push(context, 
                  MaterialPageRoute(
                  builder: 
                  (context){
                    return Ascreen();
                  }),);
                },
              ),
               
              
                    const SizedBox( 
                      width: 240,
                      height: 20,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      
                    child: Text('  ', style: TextStyle(fontSize: 10 ,fontWeight: FontWeight.bold),
                    ),
                    ),
                    ),
               ElevatedButton(
                child: const Text('Accounts'),
                onPressed: () {
                  // Navigate to second route when tapped.
                  Navigator.push(context, 
                  MaterialPageRoute(
                  builder: 
                  (context){
                    return Forgot();
                  }),);
                },
              ),
            ],
          ),
        

        
      ),
    );
  }
}

