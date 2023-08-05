import 'package:flutter/material.dart';

void main()=> runApp(
   MaterialApp(home:Forgot())
); 
class Forgot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
      ),
      body:  Container(
        color: Colors.white,
        child: Column(
                      children:[
                  const SizedBox( 
                    width: 250,
                    height: 30,
                    child: Align(
                      alignment: Alignment.centerLeft,
            child: ListTile(
              leading: Icon(Icons.account_box, color: Colors.orange, size: 13,),
              title: Text('Accounts', style: TextStyle(fontSize: 12 ,fontWeight: FontWeight.bold),),
              trailing: Icon(Icons.close, color: Colors.black, size: 12, ),
            ), 
          ),
                          ),

          const  SizedBox( 
                    width: 230,
                    height: 50,
                    child: Align(
                      alignment: Alignment.centerLeft,
            child: ListTile(
              title: Text('Add another account - so you can switch between them easily.', style: TextStyle(fontSize: 11 ,fontWeight: FontWeight.bold),),
            ), 
          ),
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

          Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                 Text('Your existing account                  ', style: TextStyle(fontSize: 11 ,fontWeight: FontWeight.bold),),
                Text(' Manage account', style: TextStyle(color: Colors.orange,fontSize: 11 ,fontWeight: FontWeight.bold),),
                    ],
                  ),

             const SizedBox( 
                    width: 250,
                    height: 50,
                    child: Align(
                      alignment: Alignment.centerLeft,
            child: ListTile(
              leading: Icon(Icons.man_rounded, color: Colors.black, size: 13,),
              title: Text('Panji Pradana', style: TextStyle(fontSize: 12 ,fontWeight: FontWeight.bold),),
              subtitle: Text('Panjiperdana@mail.com', style: TextStyle(fontSize: 12 ,fontWeight: FontWeight.bold),),
              trailing: Icon(Icons.check, color: Colors.black, size: 12, ),
            ), 
          ),
                          ),

           const SizedBox( 
                    width: 250,
                    height: 60,
                    child: Align(
                      alignment: Alignment.centerLeft,
            child: ListTile(
              leading: Icon(Icons.woman_rounded, color: Colors.blue, size: 13,),
              title: Text('Sulistyo Aji', style: TextStyle(fontSize: 12 ,fontWeight: FontWeight.bold),),
              subtitle: Text('SlstAji@mail.com', style: TextStyle(fontSize: 12 ,fontWeight: FontWeight.bold),),
              trailing: Text('5', style: TextStyle(fontSize: 10 ,fontWeight: FontWeight.bold),),
            ), 
          ),
                          ),

          const SizedBox( 
            width: 250,
              height: 60,
            child: Align(
            alignment: Alignment.centerLeft,
            child: ListTile(
              
              leading: Icon(Icons.woman_rounded, color: Colors.blue, size: 13,),
              title: Text('Astaru Lopez', style: TextStyle(fontSize: 12 ,fontWeight: FontWeight.bold),),
              subtitle: Text('AsPez@mail.com', style: TextStyle(fontSize: 12 ,fontWeight: FontWeight.bold),),
              trailing: Text('10', style: TextStyle(fontSize: 10 ,fontWeight: FontWeight.bold),),
            ), 
          ),
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
           
           SizedBox( 
                   height:30, //height of button
                  width:250,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Add another +'),
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 30, 138, 226),
                      onPrimary: Colors.white, 
                    ),
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
    ); 
  }
}