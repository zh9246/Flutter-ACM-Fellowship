import 'package:flutter/material.dart';

void main()=> runApp(
   MaterialApp(home:Ascreen())
); 
class Ascreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
      ),
      body:  Center(
        
          child: Container(
            child: Column(
                          children:[
                            
                      const SizedBox( 
                        width: 240,
                        height: 50,
                        
                child: ListTile(
                  leading: Icon(Icons.lock, color: Colors.orange, size: 12,),
                  title: Text('Fogot password?', style: TextStyle(fontSize: 12 ,fontWeight: FontWeight.bold),),
                  trailing: Icon(Icons.close, color: Colors.black, size: 12, ),
                ), 
             
                              ),
                      
                      const  SizedBox( 
                        width: 230,
                        height: 50,
                        
                child: ListTile(
                  title: Text('Enter your email that you used to register, so we can send you a link to reset your password.', style: TextStyle(fontSize: 10 ,fontWeight: FontWeight.bold),),
                ), 
             
                              ),
                      
                     const SizedBox(
                        height: 0,
                        
                        child: Text(' ', style: TextStyle(fontSize: 10 ,fontWeight: FontWeight.bold),
                        ),
                        ),
                      

                     const SizedBox( 
                        width: 240,
                        height: 30,
                      
                      child: Text('Email *', style: TextStyle(fontSize: 10 ,fontWeight: FontWeight.bold),
                      ),
                      ),
                     
                      
                     const SizedBox( 
                        width: 240,
                        height: 30,
                      child: TextField ( 
                        cursorColor: Colors.black,
                        style: TextStyle(color: Colors.black, fontSize: 13),
                        keyboardType: TextInputType.text, 
                      decoration: InputDecoration(  
                      border: OutlineInputBorder(),
                            ),  
                                ),
            ),

                  const SizedBox( 
                        width: 240,
                        height: 20,
                      
                      child: Text('  ', style: TextStyle(fontSize: 10 ,fontWeight: FontWeight.bold),
                      ),
                      ),
                      

                      SizedBox( 
                       height:30, //height of button
                      width:240,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('Send link'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue,
                          onPrimary: Colors.white, 
                        ),
                      ),
                      
                      ),
                     const SizedBox( 
                        width: 230,
                        height: 20,
                      child: Divider(),
                      ),  

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                     Text('Forgot your email? ', style: TextStyle(fontSize: 12 ,fontWeight: FontWeight.bold),),
                    Text(' Try phone number', style: TextStyle(color: Colors.blue,fontSize: 12 ,fontWeight: FontWeight.bold),),
                        ],
                      ),
                      
                      const SizedBox( 
                        width: 240,
                        height: 20,
                      
                      child: Text('  ', style: TextStyle(fontSize: 10 ,fontWeight: FontWeight.bold),
                      ),
                      ),
                      const SizedBox( 
                        width: 240,
                        height: 20,
                      
                      child: Text('  ', style: TextStyle(fontSize: 10 ,fontWeight: FontWeight.bold),
                      ),
                      ),
                      const SizedBox( 
                        width: 240,
                        height: 20,
                      
                      child: Text('  ', style: TextStyle(fontSize: 10 ,fontWeight: FontWeight.bold),
                      ),
                      ),

                      Column(
                        children: [
                          SizedBox( 
                       height:30, //height of button
                      width:120,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('Back to Main'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue,
                          onPrimary: Colors.white, 
                        ),
                      ),
                      
                      ),
                       ],
                          
                        ), 
         ], 
       
      ),
          ),
      ),
    ); 
  }
}